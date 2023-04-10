import Roact from '@rbxts/roact';
import RoundedFrame from '../RoundedFrame';
import DefaultTheme from './DefaultTheme';

export = function (frame: GuiObject) {
	const component = (
		<RoundedFrame
			AnchorPoint={new Vector2(0.5, 0.5)}
			Position={UDim2.fromScale(0.5, 0.5)}
			Size={UDim2.fromScale(0.5, 0.6)}
			CornerRadius={16}
			Color={DefaultTheme.Scheme.surfaceVariant}
		/>
	);

	const tree = Roact.mount(component, frame);

	return () => {
		Roact.unmount(tree);
	};
};
