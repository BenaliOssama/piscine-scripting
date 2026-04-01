piscine-scripting
This repo holds everything written during the Cloud DevOps Piscine — a 2-week intensive bootcamp that serves as the entry exam for the Cloud DevOps branch.
The goal is simple: prove you can write scripts, navigate a terminal, and think like someone who automates things for a living.

What's a Piscine?
A piscine (French for pool) is a sink-or-swim selection period. You get thrown into real exercises, with real constraints, and you figure it out. No hand-holding. The scripts here are the output of that process.

What's in here?
A collection of Python and Bash scripts covering the foundations you'll need for everything that comes after:

Shell scripting — navigating the filesystem, piping commands, automating repetitive tasks
Python scripting — writing clean, readable automation scripts
System basics — understanding how a Unix system works from the ground up

Think of each script as an answer to a concrete problem: "do this thing, without clicking anything."

Why does this matter?
The full Cloud DevOps curriculum — networking, containers, Kubernetes, cloud infrastructure, CI/CD pipelines — all of it sits on top of one skill: being comfortable in a terminal, writing code that runs on a machine you'll never touch directly.
This piscine is where that comfort gets built.

The bigger picture
After the piscine, the branch covers:
StageWhat you're doingNetworking & LinuxUnderstanding what's under the hoodMicroservices + VMsBuilding and deploying real appsDockerPackaging apps into containersKubernetesOrchestrating those containers at scaleCloud + IaCDeploying everything to the cloud, reproduciblyGitLab + TerraformAutomating the whole delivery pipeline


## note

### configure to push to multiple remotes at the same time. git doesn't support pulling
git remote set-url --add --push origin https://learn.zone01oujda.ma/git/...
git remote set-url --add --push origin https://github.com/BenaliOssama/...

### configure the default remote
git push origin main
