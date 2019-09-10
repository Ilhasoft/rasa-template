LOG_FILE = out.log

train:
	python -m rasa_nlu.train -c nlu_config.yml --data nlu.md -o models --fixed_model_name nlu --project current --verbose

evaluate:
	python -m rasa_nlu.evaluate --data nlu_test.md --model models/current/nlu/

clean:
	rm -rf models confmat.png hist.png errors.json
