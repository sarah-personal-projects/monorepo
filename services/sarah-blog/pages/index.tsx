import React from "react";
import { sayHello } from "@common/lib";

const MainPage = () => {
	return (
		<div>
			MAIN_PAGE <i>{sayHello()}</i>
		</div>
	);
};

export default MainPage;
