eol-crontab-recipes Cookbook
======================
This cookbook defines various cron tasks needed for the EOL application

Usage
-----

Just include a recipe from `eol-crontab-recipes` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[eol-crontab-recipes::create_ggi_files]"
  ]
}
```

