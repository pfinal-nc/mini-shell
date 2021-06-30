PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin
PATH=$PATH:$HOME/bin

fn () {
  local foo
  foo=1
  echo "fn: foo = $foo"
}

fn
echo "global: foo = $foo"