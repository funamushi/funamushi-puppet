### vagrantでの動作確認

```bash
$ vagrant up # db、app の2つのVMがいます
```

#### dbロールの軌道

```bash
$ vagrant ssh db
$ cd /vagrant
$ sudo puppet apply --modulepath=modules:roles ./manifests/db.pp --debug
```

### デプロイ

```bash
$ bundle install --path vendor/bundle
$ bundle exec cap puppet:apply:app
```
