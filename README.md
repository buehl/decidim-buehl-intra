# decidim-buehl-intra

Free Open-Source participation platform based on [Decidim](https://github.com/decidim/decidim).

## Installation

Most of the necessary steps can be adapted from [decidim-install](https://github.com/buehl/decidim-install).
Contrary to this setup, we decided to use `puma` instead of `passenger` as the application server of our choice.

In order to manage this application via `systemd`, the corresponding service unit files 
[`puma.service`](config/systemd/puma.service) and [`sidekiq.service`](config/systemd/sidekiq.service) need to be
symlinked to `/lib/systemd/system/`.

Finally, the nginx configuration file [`decidim-buehl-intra.conf`](config/nginx/decidim-buehl-intra.conf) needs 
to be symlinked to `/etc/nginx/sites-enabled/`.
