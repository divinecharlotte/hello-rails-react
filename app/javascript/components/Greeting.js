import React, { useEffect } from "react";
import { fetchGreeting } from "./redux/greeting";
import { useSelector, useDispatch } from "react-redux";

export default function Greeting() {
  const greeting = useSelector((state) => state.greeting);
  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(fetchGreeting());
  }, []);
  return (
    <div>
      <h1>{greeting.message}</h1>
    </div>
  );
}