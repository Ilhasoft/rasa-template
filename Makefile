LOG_FILE = out.log

train:
	npx chatito nlu.chatito --format=rasa;
	python -m rasa_nlu.train -c nlu_config.yml --data rasa_dataset_training.json -o models --fixed_model_name nlu --project current --verbose;

evaluate:
	python -m rasa_nlu.evaluate --data nlu_test.md --model models/current/nlu/;

clean:
	rm -rf models confmat.png hist.png errors.json rasa_dataset_training.json rasa_dataset_testing.json;
