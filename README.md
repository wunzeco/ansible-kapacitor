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
    kapacitor_version: 0.13.0-1
    
  roles:
    - wunzeco.kapacitor
```


## Testing

To run this role's integration tests

```
kitchen test
```


## Dependencies

none

*Note:*
An issue encountered while testing alert notification via email has been raised.
(https://github.com/influxdata/kapacitor/issues/602)


[wunzeco.telegraf]: https://github.com/wunzeco/ansible-telegraf
[wunzeco.influxdb]: https://github.com/wunzeco/ansible-influxdb
[wunzeco.chronograf]: https://github.com/wunzeco/ansible-chronograf
