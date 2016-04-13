#Recovery

- suppose primary is down, and it comes back..
  - and if master and slave were replicating asynchronousing.
  - and master is down, then secondary is primary.
  - but as write were coming on master,so..there were some writes commited on old_master,which are not on master(new)..
  - so..how to get that commited writes on new master..
  - 
