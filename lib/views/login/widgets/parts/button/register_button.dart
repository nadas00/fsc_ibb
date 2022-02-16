part of '../../../login_view.dart';

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => locator<NavigationService>().clearStackAndShow(homeViewRoute),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width * .8,
        child: Text(
          context.translation.register,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), gradient: commonGradient),
      ),
    );
  }
}
