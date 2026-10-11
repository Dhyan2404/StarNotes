package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Set;

/* loaded from: classes3.dex */
public class MotionWidget implements TypedValues {
    public static final int FILL_PARENT = -1;
    public static final int GONE_UNSET = Integer.MIN_VALUE;
    public static final int INVISIBLE = 0;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int MATCH_PARENT = -1;
    public static final int PARENT_ID = 0;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    public static final int UNSET = -1;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 4;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: f */
    public static final int f2766f = -1;

    /* renamed from: g */
    public static final int f2767g = -2;

    /* renamed from: h */
    public static final int f2768h = -3;

    /* renamed from: i */
    public static final int f2769i = -4;

    /* renamed from: a */
    public WidgetFrame f2770a;

    /* renamed from: b */
    public Motion f2771b;

    /* renamed from: c */
    public PropertySet f2772c;

    /* renamed from: d */
    public float f2773d;

    /* renamed from: e */
    public float f2774e;

    /* loaded from: classes3.dex */
    public static class Motion {

        /* renamed from: a */
        public static final int f2775a = -2;

        /* renamed from: b */
        public static final int f2776b = -1;

        /* renamed from: c */
        public static final int f2777c = -3;
        public int mAnimateRelativeTo = -1;
        public int mAnimateCircleAngleTo = 0;
        public String mTransitionEasing = null;
        public int mPathMotionArc = -1;
        public int mDrawPath = 0;
        public float mMotionStagger = Float.NaN;
        public int mPolarRelativeTo = -1;
        public float mPathRotate = Float.NaN;
        public float mQuantizeMotionPhase = Float.NaN;
        public int mQuantizeMotionSteps = -1;
        public String mQuantizeInterpolatorString = null;
        public int mQuantizeInterpolatorType = -3;
        public int mQuantizeInterpolatorID = -1;
    }

    /* loaded from: classes3.dex */
    public static class PropertySet {
        public int visibility = 4;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;
    }

    public MotionWidget() {
        this.f2770a = new WidgetFrame();
        this.f2771b = new Motion();
        this.f2772c = new PropertySet();
    }

    public MotionWidget findViewById(int i) {
        return null;
    }

    public float getAlpha() {
        return this.f2772c.alpha;
    }

    public int getBottom() {
        return this.f2770a.bottom;
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.f2770a.getCustomAttribute(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.f2770a.getCustomAttributeNames();
    }

    public int getHeight() {
        WidgetFrame widgetFrame = this.f2770a;
        return widgetFrame.bottom - widgetFrame.top;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        int id = TypedValues.AttributesType.getId(str);
        return id != -1 ? id : TypedValues.MotionType.getId(str);
    }

    public int getLeft() {
        return this.f2770a.left;
    }

    public String getName() {
        return this.f2770a.getId();
    }

    public MotionWidget getParent() {
        return null;
    }

    public float getPivotX() {
        return this.f2770a.pivotX;
    }

    public float getPivotY() {
        return this.f2770a.pivotY;
    }

    public int getRight() {
        return this.f2770a.right;
    }

    public float getRotationX() {
        return this.f2770a.rotationX;
    }

    public float getRotationY() {
        return this.f2770a.rotationY;
    }

    public float getRotationZ() {
        return this.f2770a.rotationZ;
    }

    public float getScaleX() {
        return this.f2770a.scaleX;
    }

    public float getScaleY() {
        return this.f2770a.scaleY;
    }

    public int getTop() {
        return this.f2770a.top;
    }

    public float getTranslationX() {
        return this.f2770a.translationX;
    }

    public float getTranslationY() {
        return this.f2770a.translationY;
    }

    public float getTranslationZ() {
        return this.f2770a.translationZ;
    }

    public float getValueAttributes(int i) {
        switch (i) {
            case 303:
                return this.f2770a.alpha;
            case 304:
                return this.f2770a.translationX;
            case 305:
                return this.f2770a.translationY;
            case 306:
                return this.f2770a.translationZ;
            case 307:
            default:
                return Float.NaN;
            case 308:
                return this.f2770a.rotationX;
            case 309:
                return this.f2770a.rotationY;
            case 310:
                return this.f2770a.rotationZ;
            case 311:
                return this.f2770a.scaleX;
            case 312:
                return this.f2770a.scaleY;
            case 313:
                return this.f2770a.pivotX;
            case 314:
                return this.f2770a.pivotY;
            case 315:
                return this.f2773d;
            case 316:
                return this.f2774e;
        }
    }

    public int getVisibility() {
        return this.f2772c.visibility;
    }

    public WidgetFrame getWidgetFrame() {
        return this.f2770a;
    }

    public int getWidth() {
        WidgetFrame widgetFrame = this.f2770a;
        return widgetFrame.right - widgetFrame.left;
    }

    public int getX() {
        return this.f2770a.left;
    }

    public int getY() {
        return this.f2770a.top;
    }

    public void layout(int i, int i2, int i3, int i4) {
        setBounds(i, i2, i3, i4);
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        if (this.f2770a == null) {
            this.f2770a = new WidgetFrame((ConstraintWidget) null);
        }
        WidgetFrame widgetFrame = this.f2770a;
        widgetFrame.top = i2;
        widgetFrame.left = i;
        widgetFrame.right = i3;
        widgetFrame.bottom = i4;
    }

    public void setCustomAttribute(String str, int i, float f) {
        this.f2770a.setCustomAttribute(str, i, f);
    }

    public void setInterpolatedValue(CustomAttribute customAttribute, float[] fArr) {
        this.f2770a.setCustomAttribute(customAttribute.f2673b, 901, fArr[0]);
    }

    public void setPivotX(float f) {
        this.f2770a.pivotX = f;
    }

    public void setPivotY(float f) {
        this.f2770a.pivotY = f;
    }

    public void setRotationX(float f) {
        this.f2770a.rotationX = f;
    }

    public void setRotationY(float f) {
        this.f2770a.rotationY = f;
    }

    public void setRotationZ(float f) {
        this.f2770a.rotationZ = f;
    }

    public void setScaleX(float f) {
        this.f2770a.scaleX = f;
    }

    public void setScaleY(float f) {
        this.f2770a.scaleY = f;
    }

    public void setTranslationX(float f) {
        this.f2770a.translationX = f;
    }

    public void setTranslationY(float f) {
        this.f2770a.translationY = f;
    }

    public void setTranslationZ(float f) {
        this.f2770a.translationZ = f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        return false;
    }

    public boolean setValueAttributes(int i, float f) {
        switch (i) {
            case 303:
                this.f2770a.alpha = f;
                return true;
            case 304:
                this.f2770a.translationX = f;
                return true;
            case 305:
                this.f2770a.translationY = f;
                return true;
            case 306:
                this.f2770a.translationZ = f;
                return true;
            case 307:
            default:
                return false;
            case 308:
                this.f2770a.rotationX = f;
                return true;
            case 309:
                this.f2770a.rotationY = f;
                return true;
            case 310:
                this.f2770a.rotationZ = f;
                return true;
            case 311:
                this.f2770a.scaleX = f;
                return true;
            case 312:
                this.f2770a.scaleY = f;
                return true;
            case 313:
                this.f2770a.pivotX = f;
                return true;
            case 314:
                this.f2770a.pivotY = f;
                return true;
            case 315:
                this.f2773d = f;
                return true;
            case 316:
                this.f2774e = f;
                return true;
        }
    }

    public boolean setValueMotion(int i, int i2) {
        switch (i) {
            case 605:
                this.f2771b.mAnimateRelativeTo = i2;
                return true;
            case 606:
                this.f2771b.mAnimateCircleAngleTo = i2;
                return true;
            case 607:
                this.f2771b.mPathMotionArc = i2;
                return true;
            case 608:
                this.f2771b.mDrawPath = i2;
                return true;
            case 609:
                this.f2771b.mPolarRelativeTo = i2;
                return true;
            case 610:
                this.f2771b.mQuantizeMotionSteps = i2;
                return true;
            case 611:
                this.f2771b.mQuantizeInterpolatorType = i2;
                return true;
            case 612:
                this.f2771b.mQuantizeInterpolatorID = i2;
                return true;
            default:
                return false;
        }
    }

    public void setVisibility(int i) {
        this.f2772c.visibility = i;
    }

    public String toString() {
        return this.f2770a.left + ", " + this.f2770a.top + ", " + this.f2770a.right + ", " + this.f2770a.bottom;
    }

    public void setCustomAttribute(String str, int i, int i2) {
        this.f2770a.setCustomAttribute(str, i, i2);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        return setValueAttributes(i, i2);
    }

    public void setCustomAttribute(String str, int i, boolean z) {
        this.f2770a.setCustomAttribute(str, i, z);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        if (setValueAttributes(i, f)) {
            return true;
        }
        return setValueMotion(i, f);
    }

    public void setCustomAttribute(String str, int i, String str2) {
        this.f2770a.setCustomAttribute(str, i, str2);
    }

    public MotionWidget(WidgetFrame widgetFrame) {
        this.f2770a = new WidgetFrame();
        this.f2771b = new Motion();
        this.f2772c = new PropertySet();
        this.f2770a = widgetFrame;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        return setValueMotion(i, str);
    }

    public boolean setValueMotion(int i, String str) {
        if (i == 603) {
            this.f2771b.mTransitionEasing = str;
            return true;
        }
        if (i != 604) {
            return false;
        }
        this.f2771b.mQuantizeInterpolatorString = str;
        return true;
    }

    public boolean setValueMotion(int i, float f) {
        switch (i) {
            case 600:
                this.f2771b.mMotionStagger = f;
                return true;
            case 601:
                this.f2771b.mPathRotate = f;
                return true;
            case 602:
                this.f2771b.mQuantizeMotionPhase = f;
                return true;
            default:
                return false;
        }
    }
}
