LOG_FILE = out.log

train:
	rasa train nlu;

evaluate:
	rasa test nlu --model models --cross-validation -f 5

clean:
	rm -rf models confmat.png hist.png errors.json rasa_dataset_training.json rasa_dataset_testing.json;
