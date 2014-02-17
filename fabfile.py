from fabric.api import local, task

@task
def init_submodules_from_list(url_list):
    with open(url_list, 'r') as f:
        for l in f.readlines():
            l = l.rstrip()
            (_, tail) = l.rsplit('/', 1)
            (human, _) = tail.rsplit('.', 1)
            local('git submodule add {0} vim/bundle/{1}'.format(l, human))
