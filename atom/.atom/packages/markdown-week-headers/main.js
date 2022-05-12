'use babel';
import moment from 'moment';

const format = prefix => {
	if (/^week$/.test(prefix)) {
        return getOutput(1, 1); 
	}
	if (/^week2$/.test(prefix)) {
        return getOutput(2, 1); 
	}
	if (/^week3$/.test(prefix)) {
        return getOutput(3, 1); 
	}
	if (/^past$/.test(prefix)) {
        return getOutput(1, -1); 
	}
	if (/^past2$/.test(prefix)) {
        return getOutput(2, -1); 
	}
	if (/^past3$/.test(prefix)) {
        return getOutput(3, -1); 
	}
	return null;
};

const provider = {
	selector: '*',
	inclusionPriority: 1,
	getSuggestions: ({prefix}) => {
		return new Promise(resolve => {
			const text = format(prefix);

			if (!text) {
				return resolve(null);
			}

			const suggestion = {
				text,
				displayText: text,
				replacementPrefix: prefix
			};
			resolve([suggestion]);
		});
	}
};

export default {
	provide: () => provider,
	activate: () => null
};

function getOutput(weeks, inc) {
  moment.locale("en");
  var output = "";
  if (inc > 0) {
    for (let i = 0; i < (7 * weeks); i++) {
        output += "## " + moment().add(i, 'days').format("ddd MMM D") + "\n\n";
    }
  } else {
    for (let i = 0; i < (7 * weeks); i++) {
        output += "## " + moment().subtract(i, 'days').format("ddd MMM D") + "\n\n";
    }
  }
  return output;
}
