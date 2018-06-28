contract Sender {
  function send(address _receiver) payable {
    _receiver.send(msg.value);
  }
}
contract Receiver {
  uint public balance = 0;
  event Receive(uint value);
  
  function () payable {
    Receive(msg.value);
  }
}