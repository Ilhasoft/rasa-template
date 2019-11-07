LOG_FILE = out.log

train:
	rasa train nlu;

evaluate:
	rasa test nlu -u test_data.json --model models;

clean:
	rm -rf models confmat.png hist.png errors.json rasa_dataset_training.json rasa_dataset_testing.json;
