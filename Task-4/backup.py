import boto3

def backup_s3_bucket(source_bucket, destination_bucket, profile):
    session = boto3.Session(profile_name=profile)
    s3_client = session.client('s3')

    response = s3_client.list_objects_v2(Bucket=source_bucket)
    objects = response.get('Contents', [])


    for obj in objects:
        copy_source = {'Bucket': source_bucket, 'Key': obj['Key']}
        destination_key = obj['Key']

        s3_client.copy_object(
            CopySource=copy_source,
            Bucket=destination_bucket,
            Key=destination_key
        )

        print(f"Object {obj['Key']} copied to {destination_bucket}")

if __name__ == "__main__":
    source_bucket_name = "source-test-1928"
    destination_bucket_name = "destination-test-1928"
    profile = "xyz"

    backup_s3_bucket(source_bucket_name, destination_bucket_name, profile)
