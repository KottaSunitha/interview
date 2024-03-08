# Deployment pipeline

This Repo will trigger GitHub Actions whenever a commit is made.

GitHub Actions will create a Docker image in the docker folder of this repo with the date and time along with seconds as tag. 
Image is pushed to a private ECR repo.
A deployment is updated with the latest image.
You can access the environment with the following URL - http://3.144.72.185:8000/


Testing:
To test above, I have made changes to index.html and pushed to repo. The contents of index.html are updated in the above environment.

