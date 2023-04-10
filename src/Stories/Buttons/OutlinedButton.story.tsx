import Roact from '@rbxts/roact';
import { OutlinedButton } from '../../Buttons';
import { Icons } from '../../Icons';
import UIBase from '../../UIBase';
import DefaultTheme from '../DefaultTheme';

export = function (frame: GuiObject) {
	const component = (
		<UIBase
			Theme={DefaultTheme}
			AnchorPoint={new Vector2(0.5, 0.5)}
			Position={UDim2.fromScale(0.5, 0.5)}
			Size={UDim2.fromScale(0.3, 0.55)}
		>
			<uilistlayout
				SortOrder={Enum.SortOrder.LayoutOrder}
				VerticalAlignment={Enum.VerticalAlignment.Center}
				HorizontalAlignment={Enum.HorizontalAlignment.Center}
				Padding={new UDim(0, 20)}
			/>
			<OutlinedButton
				Theme={DefaultTheme}
				AnchorPoint={new Vector2(0.5, 0.5)}
				Position={UDim2.fromScale(0.5, 0.5)}
				AutomaticSize
				Text='AutomaticSize Button'
				Pressed={() => {
					print('a');
				}}
			/>
			<OutlinedButton
				Theme={DefaultTheme}
				AnchorPoint={new Vector2(0.5, 0.5)}
				Position={UDim2.fromScale(0.5, 0.5)}
				AutomaticSize
				Text='AutomaticSize Button w/ Icon'
				Icon={Icons.DarkTheme}
				Pressed={() => {
					print('a');
				}}
			/>
			<OutlinedButton
				Theme={DefaultTheme}
				AnchorPoint={new Vector2(0.5, 0.5)}
				Position={UDim2.fromScale(0.5, 0.5)}
				Size={new UDim2(0.75, 0, 0, 35)}
				Text='Custom Size Button'
				Pressed={() => {
					print('a');
				}}
			/>
			<OutlinedButton
				Theme={DefaultTheme}
				AnchorPoint={new Vector2(0.5, 0.5)}
				Position={UDim2.fromScale(0.5, 0.5)}
				AutomaticSize
				Text='Disabled Button'
				Disabled
				Pressed={() => {
					print('a');
				}}
			/>
			<OutlinedButton
				Theme={DefaultTheme}
				AnchorPoint={new Vector2(0.5, 0.5)}
				Position={UDim2.fromScale(0.5, 0.5)}
				AutomaticSize
				Text='Disabled Button w/ Icon'
				Disabled
				Icon={Icons.DarkTheme}
				Pressed={() => {
					print('a');
				}}
			/>
		</UIBase>
	);

	const tree = Roact.mount(component, frame);

	return () => {
		Roact.unmount(tree);
	};
};
