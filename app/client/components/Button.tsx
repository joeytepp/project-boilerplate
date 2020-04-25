import * as React from "react";
import "./Button.css";
import classnames from "classnames";

interface Props {
  children: React.ReactNode;
  color?: "red" | "green" | "blue";
  onClick?: React.MouseEventHandler<HTMLButtonElement>;
}

function Button(props: Props) {
  return (
    <button
      onClick={props.onClick}
      className={classnames("Button-btn", {
        "Button-red": props.color === "red",
        "Button-green": props.color === "green",
        "Button-blue": props.color === "blue",
      })}
    >
      {props.children}
    </button>
  );
}

export default Button;
