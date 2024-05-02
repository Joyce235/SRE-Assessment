import React, { useState } from "react";

function Configurator() {
  const [baseImage, setBaseImage] = useState("");

  const handleSubmit = async () => {
    const response = await fetch("/api/configurations", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ baseImage: baseImage }),
    });
    const data = await response.json();
    console.log(data);
  };

  return (
    <div>
      <input
        value={baseImage}
        onChange={(e) => setBaseImage(e.target.value)}
        placeholder="Enter Base Image"
      />
      <button onClick={handleSubmit}>Submit</button>
    </div>
  );
}

export default Configurator;
