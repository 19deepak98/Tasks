For high availibilty - 
    1. We added hpa so whenever cpu exceeds for than 60 percent it will increase the number of pods.
    2. We added rolling update policy in which 100% surge means it will double the pods of old and new app. Then it will make them down only by 5% at a time. For non-prod we can also use recreate strategy.
    3. We also added prestop lifecycle in which we gave sleep command for 90 seconds so that requests which are already reached can we completed successfully without giving any 500 errors.
    4. Also gave probes so that we can check the healtcheck of the pod. 