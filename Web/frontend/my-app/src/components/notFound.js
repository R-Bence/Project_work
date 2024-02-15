import React from "react";

const NoPage = () => {
  const style = {
    textAlign: "center",
    marginTop: "40vh", // A képernyő magasságának fele
    transform: "translateY(-50%)",
  };

  return (
    <div style={style}>
      <h1>Nincs ilyen oldal: 404</h1>
    </div>
  );
};

export default NoPage;
