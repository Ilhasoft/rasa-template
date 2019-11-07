LOG_FILE = out.log

train:
	rasa train nlu

evaluate:
	python3 -m rasa_nlu.evaluate --data nlu_test.md --model models/current/nlu/;

clean:
	rm -rf models confmat.png hist.png errors.json rasa_dataset_training.json rasa_dataset_testing.json;
