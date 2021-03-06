import React from "react";
import { Input, Button } from 'antd';


const InputGroup = Input.Group;

const buttonStyle = {
    backgroundColor: '#bae637',
    borderColor: '#bae637'
  };

export default class ChatClient extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            message: '',
            messagesArray: this.props.messagesArray,
        }
    }

    componentDidUpdate() {
        // if (this.messagesEnd) {
        //   this.messagesEnd.scrollIntoView({ behavior: 'smooth' });
        // }
    }
    onMessageInput = (e) => {
        this.setState({
          message: e.target.value
        });
      }

    handleMessageSend = () => {
        this.setState({ message: '' });
        this.props.sendMessage(this.state.message);
    }

    render(){
        return (
            <div>
                <div className="chatclient-textarea">
                    {
                        this.state.messagesArray.map( (messageObj, i) => {
                            let content;
                            const chatWrapperClass = ['chatclient-wrapper'];
                            let from = '';
                            if (messageObj.from === 'chatbot') {
                                from = 'chatbot';
                            } else if (messageObj.from === 'self') {
                                from = 'self';
                            }
                            chatWrapperClass.push(from);
                            if (messageObj.from === 'chatbot') {
                                content = (
                                    <div className='chatclient-wrapper'>
                                      {
                                        messageObj.message === '' ?
                                          (
                                            <div className='chatclient-wrapper-chatbot'>
                                                <img src="../../../favicon.ico"  className='img-fix' alt = 'chat icon'/>
                                                <p>
                                                    Welcome to room!
                                                </p>
                                                <ul>
                                                    <li>Invite your friend(s) to join on this room ID</li>
                                                    <li>Join a different room via the left side menu</li>
                                                    <li>Switch to play vs the AI (me of course)</li>
                                                </ul>
                                            </div>
                                          ) : ''
                                      }
                                    </div>
                                  );
                            }else {
                                content = (
                                    <div className={chatWrapperClass.join(' ')}>
                                      <div className={messageObj.from === 'self' ? 'chatclient--user self' : 'chatclient--user'}>
                                        <span className="chatclient--username">{messageObj.userName}</span>
                                        <span className="chatclient--timestamp">{messageObj.timestamp}</span>
                                      </div>
                                      <div className={messageObj.from === 'self' ? 'chatclient--message self' : 'chatclient--message'}>
                                        {messageObj.message}
                                      </div>
                                    </div>
                                );
                            }
                            return (
                                <div key={i}>
                                  {content}
                                  <div
                                    style={{ float: 'left', clear: 'both' }}
                                    ref={(node) => { this.messagesEnd = node; }}
                                  />
                                </div>
                              );
                        })
                    }
                </div>
                <InputGroup compact={true}>
                    <Input
                        onChange={this.onMessageInput}
                        value={this.state.message}
                        style={{ width: '313px' }}
                        onPressEnter={this.handleMessageSend}
                    />
                    <Button type="primary" onClick={this.handleMessageSend} style={buttonStyle}>Send</Button>
                </InputGroup>
            </div>
        );
    }
}