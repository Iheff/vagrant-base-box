# Vagrant dev-box.

## Features:

* YAML Configuration (Easily customise VM without editing VagrantFile.)
* Auto updating hostsfile via vagrant hostmanager (vagrant plugin install vagrant-hostmanager)
* NPM & NodeJS ready to go.

Output your base box by doing:

```bash
	$ vagrant package --output base-box.box
```
Then you can upload it as a base box to Atlas Hashicorp, and consume it for your own projects.