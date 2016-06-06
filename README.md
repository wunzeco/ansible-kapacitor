kapacitor
==============

Ansible role to install and configure Kapacitor. You may also be interested in
- [wunzeco.telegraf]
- [wunzeco.influxdb]
- [wunzeco.chronograf]


## Example

```
- hosts: myhost

  vars:
    
  roles:
    - wunzeco.kapacitor
```


## Dependencies

none

## Outstanding
- verify alert notification via email 
  * initial test effort was unsuccessful. 
    * Issue raised - (https://github.com/influxdata/kapacitor/issues/602)
    * Help requested - (Help requested

[wunzeco.telegraf]: https://github.com/wunzeco/ansible-telegraf
[wunzeco.influxdb]: https://github.com/wunzeco/ansible-influxdb
[wunzeco.chronograf]: https://github.com/wunzeco/ansible-chronograf
