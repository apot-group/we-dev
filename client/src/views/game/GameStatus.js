import * as React from 'react';
import { Alert } from 'antd';


const GameStatus = (props) => {
  return (
    <Alert
      className="gamestatus"
      message={props.message}
      type={props.type}
      showIcon={props.showIcon}
    />
  );
};

export default GameStatus;