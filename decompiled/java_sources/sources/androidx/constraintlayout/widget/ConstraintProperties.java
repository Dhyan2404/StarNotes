package androidx.constraintlayout.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sunia.HTREnginev2.gon;

/* loaded from: classes3.dex */
public class ConstraintProperties {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int END = 7;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: a */
    public ConstraintLayout.LayoutParams f4398a;

    /* renamed from: b */
    public View f4399b;

    public ConstraintProperties(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            throw new RuntimeException("Only children of ConstraintLayout.LayoutParams supported");
        }
        this.f4398a = (ConstraintLayout.LayoutParams) layoutParams;
        this.f4399b = view;
    }

    /* renamed from: a */
    public final String m2147a(int side) {
        switch (side) {
            case 1:
                return "left";
            case 2:
                return gon.f71288n0;
            case 3:
                return OneDriverConstants.TOP;
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return gon.f71290o0;
            case 7:
                return "end";
            default:
                return OcrValues.ENGINE_UNDEFINED;
        }
    }

    public ConstraintProperties addToHorizontalChain(int leftId, int rightId) {
        connect(1, leftId, leftId == 0 ? 1 : 2, 0);
        connect(2, rightId, rightId == 0 ? 2 : 1, 0);
        if (leftId != 0) {
            new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(leftId)).connect(2, this.f4399b.getId(), 1, 0);
        }
        if (rightId != 0) {
            new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(rightId)).connect(1, this.f4399b.getId(), 2, 0);
        }
        return this;
    }

    public ConstraintProperties addToHorizontalChainRTL(int leftId, int rightId) {
        connect(6, leftId, leftId == 0 ? 6 : 7, 0);
        connect(7, rightId, rightId == 0 ? 7 : 6, 0);
        if (leftId != 0) {
            new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(leftId)).connect(7, this.f4399b.getId(), 6, 0);
        }
        if (rightId != 0) {
            new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(rightId)).connect(6, this.f4399b.getId(), 7, 0);
        }
        return this;
    }

    public ConstraintProperties addToVerticalChain(int topId, int bottomId) {
        connect(3, topId, topId == 0 ? 3 : 4, 0);
        connect(4, bottomId, bottomId == 0 ? 4 : 3, 0);
        if (topId != 0) {
            new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(topId)).connect(4, this.f4399b.getId(), 3, 0);
        }
        if (bottomId != 0) {
            new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(bottomId)).connect(3, this.f4399b.getId(), 4, 0);
        }
        return this;
    }

    public ConstraintProperties alpha(float alpha) {
        this.f4399b.setAlpha(alpha);
        return this;
    }

    public void apply() {
    }

    public ConstraintProperties center(int firstID, int firstSide, int firstMargin, int secondId, int secondSide, int secondMargin, float bias) {
        if (firstMargin < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (secondMargin < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (bias <= 0.0f || bias > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        if (firstSide == 1 || firstSide == 2) {
            connect(1, firstID, firstSide, firstMargin);
            connect(2, secondId, secondSide, secondMargin);
            this.f4398a.horizontalBias = bias;
        } else if (firstSide == 6 || firstSide == 7) {
            connect(6, firstID, firstSide, firstMargin);
            connect(7, secondId, secondSide, secondMargin);
            this.f4398a.horizontalBias = bias;
        } else {
            connect(3, firstID, firstSide, firstMargin);
            connect(4, secondId, secondSide, secondMargin);
            this.f4398a.verticalBias = bias;
        }
        return this;
    }

    public ConstraintProperties centerHorizontally(int leftId, int leftSide, int leftMargin, int rightId, int rightSide, int rightMargin, float bias) {
        connect(1, leftId, leftSide, leftMargin);
        connect(2, rightId, rightSide, rightMargin);
        this.f4398a.horizontalBias = bias;
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int startId, int startSide, int startMargin, int endId, int endSide, int endMargin, float bias) {
        connect(6, startId, startSide, startMargin);
        connect(7, endId, endSide, endMargin);
        this.f4398a.horizontalBias = bias;
        return this;
    }

    public ConstraintProperties centerVertically(int topId, int topSide, int topMargin, int bottomId, int bottomSide, int bottomMargin, float bias) {
        connect(3, topId, topSide, topMargin);
        connect(4, bottomId, bottomSide, bottomMargin);
        this.f4398a.verticalBias = bias;
        return this;
    }

    public ConstraintProperties connect(int startSide, int endID, int endSide, int margin) {
        switch (startSide) {
            case 1:
                if (endSide == 1) {
                    ConstraintLayout.LayoutParams layoutParams = this.f4398a;
                    layoutParams.leftToLeft = endID;
                    layoutParams.leftToRight = -1;
                } else {
                    if (endSide != 2) {
                        throw new IllegalArgumentException("Left to " + m2147a(endSide) + " undefined");
                    }
                    ConstraintLayout.LayoutParams layoutParams2 = this.f4398a;
                    layoutParams2.leftToRight = endID;
                    layoutParams2.leftToLeft = -1;
                }
                ((ViewGroup.MarginLayoutParams) this.f4398a).leftMargin = margin;
                return this;
            case 2:
                if (endSide == 1) {
                    ConstraintLayout.LayoutParams layoutParams3 = this.f4398a;
                    layoutParams3.rightToLeft = endID;
                    layoutParams3.rightToRight = -1;
                } else {
                    if (endSide != 2) {
                        throw new IllegalArgumentException("right to " + m2147a(endSide) + " undefined");
                    }
                    ConstraintLayout.LayoutParams layoutParams4 = this.f4398a;
                    layoutParams4.rightToRight = endID;
                    layoutParams4.rightToLeft = -1;
                }
                ((ViewGroup.MarginLayoutParams) this.f4398a).rightMargin = margin;
                return this;
            case 3:
                if (endSide == 3) {
                    ConstraintLayout.LayoutParams layoutParams5 = this.f4398a;
                    layoutParams5.topToTop = endID;
                    layoutParams5.topToBottom = -1;
                    layoutParams5.baselineToBaseline = -1;
                    layoutParams5.baselineToTop = -1;
                    layoutParams5.baselineToBottom = -1;
                } else {
                    if (endSide != 4) {
                        throw new IllegalArgumentException("right to " + m2147a(endSide) + " undefined");
                    }
                    ConstraintLayout.LayoutParams layoutParams6 = this.f4398a;
                    layoutParams6.topToBottom = endID;
                    layoutParams6.topToTop = -1;
                    layoutParams6.baselineToBaseline = -1;
                    layoutParams6.baselineToTop = -1;
                    layoutParams6.baselineToBottom = -1;
                }
                ((ViewGroup.MarginLayoutParams) this.f4398a).topMargin = margin;
                return this;
            case 4:
                if (endSide == 4) {
                    ConstraintLayout.LayoutParams layoutParams7 = this.f4398a;
                    layoutParams7.bottomToBottom = endID;
                    layoutParams7.bottomToTop = -1;
                    layoutParams7.baselineToBaseline = -1;
                    layoutParams7.baselineToTop = -1;
                    layoutParams7.baselineToBottom = -1;
                } else {
                    if (endSide != 3) {
                        throw new IllegalArgumentException("right to " + m2147a(endSide) + " undefined");
                    }
                    ConstraintLayout.LayoutParams layoutParams8 = this.f4398a;
                    layoutParams8.bottomToTop = endID;
                    layoutParams8.bottomToBottom = -1;
                    layoutParams8.baselineToBaseline = -1;
                    layoutParams8.baselineToTop = -1;
                    layoutParams8.baselineToBottom = -1;
                }
                ((ViewGroup.MarginLayoutParams) this.f4398a).bottomMargin = margin;
                return this;
            case 5:
                if (endSide == 5) {
                    ConstraintLayout.LayoutParams layoutParams9 = this.f4398a;
                    layoutParams9.baselineToBaseline = endID;
                    layoutParams9.bottomToBottom = -1;
                    layoutParams9.bottomToTop = -1;
                    layoutParams9.topToTop = -1;
                    layoutParams9.topToBottom = -1;
                }
                if (endSide == 3) {
                    ConstraintLayout.LayoutParams layoutParams10 = this.f4398a;
                    layoutParams10.baselineToTop = endID;
                    layoutParams10.bottomToBottom = -1;
                    layoutParams10.bottomToTop = -1;
                    layoutParams10.topToTop = -1;
                    layoutParams10.topToBottom = -1;
                } else {
                    if (endSide != 4) {
                        throw new IllegalArgumentException("right to " + m2147a(endSide) + " undefined");
                    }
                    ConstraintLayout.LayoutParams layoutParams11 = this.f4398a;
                    layoutParams11.baselineToBottom = endID;
                    layoutParams11.bottomToBottom = -1;
                    layoutParams11.bottomToTop = -1;
                    layoutParams11.topToTop = -1;
                    layoutParams11.topToBottom = -1;
                }
                this.f4398a.baselineMargin = margin;
                return this;
            case 6:
                if (endSide == 6) {
                    ConstraintLayout.LayoutParams layoutParams12 = this.f4398a;
                    layoutParams12.startToStart = endID;
                    layoutParams12.startToEnd = -1;
                } else {
                    if (endSide != 7) {
                        throw new IllegalArgumentException("right to " + m2147a(endSide) + " undefined");
                    }
                    ConstraintLayout.LayoutParams layoutParams13 = this.f4398a;
                    layoutParams13.startToEnd = endID;
                    layoutParams13.startToStart = -1;
                }
                this.f4398a.setMarginStart(margin);
                return this;
            case 7:
                if (endSide == 7) {
                    ConstraintLayout.LayoutParams layoutParams14 = this.f4398a;
                    layoutParams14.endToEnd = endID;
                    layoutParams14.endToStart = -1;
                } else {
                    if (endSide != 6) {
                        throw new IllegalArgumentException("right to " + m2147a(endSide) + " undefined");
                    }
                    ConstraintLayout.LayoutParams layoutParams15 = this.f4398a;
                    layoutParams15.endToStart = endID;
                    layoutParams15.endToEnd = -1;
                }
                this.f4398a.setMarginEnd(margin);
                return this;
            default:
                throw new IllegalArgumentException(m2147a(startSide) + " to " + m2147a(endSide) + " unknown");
        }
    }

    public ConstraintProperties constrainDefaultHeight(int height) {
        this.f4398a.matchConstraintDefaultHeight = height;
        return this;
    }

    public ConstraintProperties constrainDefaultWidth(int width) {
        this.f4398a.matchConstraintDefaultWidth = width;
        return this;
    }

    public ConstraintProperties constrainHeight(int height) {
        ((ViewGroup.MarginLayoutParams) this.f4398a).height = height;
        return this;
    }

    public ConstraintProperties constrainMaxHeight(int height) {
        this.f4398a.matchConstraintMaxHeight = height;
        return this;
    }

    public ConstraintProperties constrainMaxWidth(int width) {
        this.f4398a.matchConstraintMaxWidth = width;
        return this;
    }

    public ConstraintProperties constrainMinHeight(int height) {
        this.f4398a.matchConstraintMinHeight = height;
        return this;
    }

    public ConstraintProperties constrainMinWidth(int width) {
        this.f4398a.matchConstraintMinWidth = width;
        return this;
    }

    public ConstraintProperties constrainWidth(int width) {
        ((ViewGroup.MarginLayoutParams) this.f4398a).width = width;
        return this;
    }

    public ConstraintProperties dimensionRatio(String ratio) {
        this.f4398a.dimensionRatio = ratio;
        return this;
    }

    public ConstraintProperties elevation(float elevation) {
        this.f4399b.setElevation(elevation);
        return this;
    }

    public ConstraintProperties goneMargin(int anchor, int value) {
        switch (anchor) {
            case 1:
                this.f4398a.goneLeftMargin = value;
                return this;
            case 2:
                this.f4398a.goneRightMargin = value;
                return this;
            case 3:
                this.f4398a.goneTopMargin = value;
                return this;
            case 4:
                this.f4398a.goneBottomMargin = value;
                return this;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.f4398a.goneStartMargin = value;
                return this;
            case 7:
                this.f4398a.goneEndMargin = value;
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public ConstraintProperties horizontalBias(float bias) {
        this.f4398a.horizontalBias = bias;
        return this;
    }

    public ConstraintProperties horizontalChainStyle(int chainStyle) {
        this.f4398a.horizontalChainStyle = chainStyle;
        return this;
    }

    public ConstraintProperties horizontalWeight(float weight) {
        this.f4398a.horizontalWeight = weight;
        return this;
    }

    public ConstraintProperties margin(int anchor, int value) {
        switch (anchor) {
            case 1:
                ((ViewGroup.MarginLayoutParams) this.f4398a).leftMargin = value;
                return this;
            case 2:
                ((ViewGroup.MarginLayoutParams) this.f4398a).rightMargin = value;
                return this;
            case 3:
                ((ViewGroup.MarginLayoutParams) this.f4398a).topMargin = value;
                return this;
            case 4:
                ((ViewGroup.MarginLayoutParams) this.f4398a).bottomMargin = value;
                return this;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.f4398a.setMarginStart(value);
                return this;
            case 7:
                this.f4398a.setMarginEnd(value);
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public ConstraintProperties removeConstraints(int anchor) {
        switch (anchor) {
            case 1:
                ConstraintLayout.LayoutParams layoutParams = this.f4398a;
                layoutParams.leftToRight = -1;
                layoutParams.leftToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = -1;
                layoutParams.goneLeftMargin = Integer.MIN_VALUE;
                return this;
            case 2:
                ConstraintLayout.LayoutParams layoutParams2 = this.f4398a;
                layoutParams2.rightToRight = -1;
                layoutParams2.rightToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = -1;
                layoutParams2.goneRightMargin = Integer.MIN_VALUE;
                return this;
            case 3:
                ConstraintLayout.LayoutParams layoutParams3 = this.f4398a;
                layoutParams3.topToBottom = -1;
                layoutParams3.topToTop = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = -1;
                layoutParams3.goneTopMargin = Integer.MIN_VALUE;
                return this;
            case 4:
                ConstraintLayout.LayoutParams layoutParams4 = this.f4398a;
                layoutParams4.bottomToTop = -1;
                layoutParams4.bottomToBottom = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = -1;
                layoutParams4.goneBottomMargin = Integer.MIN_VALUE;
                return this;
            case 5:
                this.f4398a.baselineToBaseline = -1;
                return this;
            case 6:
                ConstraintLayout.LayoutParams layoutParams5 = this.f4398a;
                layoutParams5.startToEnd = -1;
                layoutParams5.startToStart = -1;
                layoutParams5.setMarginStart(-1);
                this.f4398a.goneStartMargin = Integer.MIN_VALUE;
                return this;
            case 7:
                ConstraintLayout.LayoutParams layoutParams6 = this.f4398a;
                layoutParams6.endToStart = -1;
                layoutParams6.endToEnd = -1;
                layoutParams6.setMarginEnd(-1);
                this.f4398a.goneEndMargin = Integer.MIN_VALUE;
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public ConstraintProperties removeFromHorizontalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.f4398a;
        int i = layoutParams.leftToRight;
        int i2 = layoutParams.rightToLeft;
        if (i == -1 && i2 == -1) {
            int i3 = layoutParams.startToEnd;
            int i4 = layoutParams.endToStart;
            if (i3 != -1 || i4 != -1) {
                ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(i3));
                ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(i4));
                ConstraintLayout.LayoutParams layoutParams2 = this.f4398a;
                if (i3 != -1 && i4 != -1) {
                    constraintProperties.connect(7, i4, 6, 0);
                    constraintProperties2.connect(6, i, 7, 0);
                } else if (i != -1 || i4 != -1) {
                    int i5 = layoutParams2.rightToRight;
                    if (i5 != -1) {
                        constraintProperties.connect(7, i5, 7, 0);
                    } else {
                        int i6 = layoutParams2.leftToLeft;
                        if (i6 != -1) {
                            constraintProperties2.connect(6, i6, 6, 0);
                        }
                    }
                }
            }
            removeConstraints(6);
            removeConstraints(7);
        } else {
            ConstraintProperties constraintProperties3 = new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(i));
            ConstraintProperties constraintProperties4 = new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(i2));
            ConstraintLayout.LayoutParams layoutParams3 = this.f4398a;
            if (i != -1 && i2 != -1) {
                constraintProperties3.connect(2, i2, 1, 0);
                constraintProperties4.connect(1, i, 2, 0);
            } else if (i != -1 || i2 != -1) {
                int i7 = layoutParams3.rightToRight;
                if (i7 != -1) {
                    constraintProperties3.connect(2, i7, 2, 0);
                } else {
                    int i8 = layoutParams3.leftToLeft;
                    if (i8 != -1) {
                        constraintProperties4.connect(1, i8, 1, 0);
                    }
                }
            }
            removeConstraints(1);
            removeConstraints(2);
        }
        return this;
    }

    public ConstraintProperties removeFromVerticalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.f4398a;
        int i = layoutParams.topToBottom;
        int i2 = layoutParams.bottomToTop;
        if (i != -1 || i2 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(i));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.f4399b.getParent()).findViewById(i2));
            ConstraintLayout.LayoutParams layoutParams2 = this.f4398a;
            if (i != -1 && i2 != -1) {
                constraintProperties.connect(4, i2, 3, 0);
                constraintProperties2.connect(3, i, 4, 0);
            } else if (i != -1 || i2 != -1) {
                int i3 = layoutParams2.bottomToBottom;
                if (i3 != -1) {
                    constraintProperties.connect(4, i3, 4, 0);
                } else {
                    int i4 = layoutParams2.topToTop;
                    if (i4 != -1) {
                        constraintProperties2.connect(3, i4, 3, 0);
                    }
                }
            }
        }
        removeConstraints(3);
        removeConstraints(4);
        return this;
    }

    public ConstraintProperties rotation(float rotation) {
        this.f4399b.setRotation(rotation);
        return this;
    }

    public ConstraintProperties rotationX(float rotationX) {
        this.f4399b.setRotationX(rotationX);
        return this;
    }

    public ConstraintProperties rotationY(float rotationY) {
        this.f4399b.setRotationY(rotationY);
        return this;
    }

    public ConstraintProperties scaleX(float scaleX) {
        this.f4399b.setScaleY(scaleX);
        return this;
    }

    public ConstraintProperties scaleY(float scaleY) {
        return this;
    }

    public ConstraintProperties transformPivot(float transformPivotX, float transformPivotY) {
        this.f4399b.setPivotX(transformPivotX);
        this.f4399b.setPivotY(transformPivotY);
        return this;
    }

    public ConstraintProperties transformPivotX(float transformPivotX) {
        this.f4399b.setPivotX(transformPivotX);
        return this;
    }

    public ConstraintProperties transformPivotY(float transformPivotY) {
        this.f4399b.setPivotY(transformPivotY);
        return this;
    }

    public ConstraintProperties translation(float translationX, float translationY) {
        this.f4399b.setTranslationX(translationX);
        this.f4399b.setTranslationY(translationY);
        return this;
    }

    public ConstraintProperties translationX(float translationX) {
        this.f4399b.setTranslationX(translationX);
        return this;
    }

    public ConstraintProperties translationY(float translationY) {
        this.f4399b.setTranslationY(translationY);
        return this;
    }

    public ConstraintProperties translationZ(float translationZ) {
        this.f4399b.setTranslationZ(translationZ);
        return this;
    }

    public ConstraintProperties verticalBias(float bias) {
        this.f4398a.verticalBias = bias;
        return this;
    }

    public ConstraintProperties verticalChainStyle(int chainStyle) {
        this.f4398a.verticalChainStyle = chainStyle;
        return this;
    }

    public ConstraintProperties verticalWeight(float weight) {
        this.f4398a.verticalWeight = weight;
        return this;
    }

    public ConstraintProperties visibility(int visibility) {
        this.f4399b.setVisibility(visibility);
        return this;
    }

    public ConstraintProperties centerHorizontally(int toView) {
        if (toView == 0) {
            center(0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(toView, 2, 0, toView, 1, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int toView) {
        if (toView == 0) {
            center(0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(toView, 7, 0, toView, 6, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerVertically(int toView) {
        if (toView == 0) {
            center(0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(toView, 4, 0, toView, 3, 0, 0.5f);
        }
        return this;
    }
}
