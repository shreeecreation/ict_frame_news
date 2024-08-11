import 'package:news/src/core/core.dart';

class ValueListenableBadgeComponent<T> extends StatefulWidget {
  const ValueListenableBadgeComponent({
    super.key,
    required this.length,
    required this.status,
    required this.badgeColor,
    required this.badgeDisabledColor,
    this.borderColor = Colors.transparent,
    required this.onSelected,
  });

  final int length;
  final List<T> status;
  final Color badgeColor;
  final Color badgeDisabledColor;
  final Color borderColor;
  final void Function(List<int>) onSelected;

  @override
  State<ValueListenableBadgeComponent> createState() => _ValueListenableBadgeComponentState();
}

class _ValueListenableBadgeComponentState extends State<ValueListenableBadgeComponent> {
  final ValueNotifier<List<int>> selectedIndices = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<int>>(
      valueListenable: selectedIndices,
      builder: (context, selectedValues, _) {
        return Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: 12.0,
          runSpacing: 18.0,
          children: List.generate(
            widget.length,
            (index) {
              final isSelected = selectedValues.contains(index);
              return GestureDetector(
                onTap: () {
                  if (isSelected) {
                    selectedIndices.value = List.from(selectedIndices.value)..remove(index);
                  } else {
                    selectedIndices.value = List.from(selectedIndices.value)..add(index);
                  }
                  widget.onSelected(selectedIndices.value);
                },
                child: BadgeComponents(
                  color: isSelected ? widget.badgeColor : widget.badgeDisabledColor,
                  textColor: isSelected ? Colors.white : Colors.blueGrey,
                  title: widget.status[index],
                  borderColor: widget.borderColor,
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class BadgeComponents extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String title;
  final Color borderColor;

  const BadgeComponents({
    Key? key,
    required this.color,
    required this.textColor,
    required this.title,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: borderColor),
      ),
      child: Text(
        title,
        style: AppTextStyles.text11PxSemiBold.copyWith(color: textColor),
      ),
    );
  }
}
