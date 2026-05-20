setup:
	chmod +x scripts/*.sh

deploy:
	cd scripts && ./full_deploy.sh

destroy:
	cd scripts && ./cleanup.sh