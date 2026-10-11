package androidx.constraintlayout.motion.widget;

/* loaded from: classes3.dex */
public class OnSwipe {
    public static final int COMPLETE_MODE_CONTINUOUS_VELOCITY = 0;
    public static final int COMPLETE_MODE_SPRING = 1;
    public static final int DRAG_ANTICLOCKWISE = 7;
    public static final int DRAG_CLOCKWISE = 6;
    public static final int DRAG_DOWN = 1;
    public static final int DRAG_END = 5;
    public static final int DRAG_LEFT = 2;
    public static final int DRAG_RIGHT = 3;
    public static final int DRAG_START = 4;
    public static final int DRAG_UP = 0;
    public static final int FLAG_DISABLE_POST_SCROLL = 1;
    public static final int FLAG_DISABLE_SCROLL = 2;
    public static final int ON_UP_AUTOCOMPLETE = 0;
    public static final int ON_UP_AUTOCOMPLETE_TO_END = 2;
    public static final int ON_UP_AUTOCOMPLETE_TO_START = 1;
    public static final int ON_UP_DECELERATE = 4;
    public static final int ON_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int ON_UP_NEVER_TO_END = 7;
    public static final int ON_UP_NEVER_TO_START = 6;
    public static final int ON_UP_STOP = 3;
    public static final int SIDE_BOTTOM = 3;
    public static final int SIDE_END = 6;
    public static final int SIDE_LEFT = 1;
    public static final int SIDE_MIDDLE = 4;
    public static final int SIDE_RIGHT = 2;
    public static final int SIDE_START = 5;
    public static final int SIDE_TOP = 0;
    public static final int SPRING_BOUNDARY_BOUNCEBOTH = 3;
    public static final int SPRING_BOUNDARY_BOUNCEEND = 2;
    public static final int SPRING_BOUNDARY_BOUNCESTART = 1;
    public static final int SPRING_BOUNDARY_OVERSHOOT = 0;

    /* renamed from: a */
    public int f3982a = 0;

    /* renamed from: b */
    public int f3983b = 0;

    /* renamed from: c */
    public int f3984c = -1;

    /* renamed from: d */
    public int f3985d = -1;

    /* renamed from: e */
    public int f3986e = -1;

    /* renamed from: f */
    public int f3987f = 0;

    /* renamed from: g */
    public int f3988g = -1;

    /* renamed from: h */
    public float f3989h = 4.0f;

    /* renamed from: i */
    public float f3990i = 1.2f;

    /* renamed from: j */
    public boolean f3991j = true;

    /* renamed from: k */
    public float f3992k = 1.0f;

    /* renamed from: l */
    public int f3993l = 0;

    /* renamed from: m */
    public float f3994m = 10.0f;

    /* renamed from: n */
    public float f3995n = Float.NaN;

    /* renamed from: o */
    public float f3996o = 1.0f;

    /* renamed from: p */
    public float f3997p = Float.NaN;

    /* renamed from: q */
    public float f3998q = Float.NaN;

    /* renamed from: r */
    public int f3999r = 0;

    /* renamed from: s */
    public int f4000s = 0;

    public int getAutoCompleteMode() {
        return this.f4000s;
    }

    public int getDragDirection() {
        return this.f3982a;
    }

    public float getDragScale() {
        return this.f3992k;
    }

    public float getDragThreshold() {
        return this.f3994m;
    }

    public int getLimitBoundsTo() {
        return this.f3986e;
    }

    public float getMaxAcceleration() {
        return this.f3990i;
    }

    public float getMaxVelocity() {
        return this.f3989h;
    }

    public boolean getMoveWhenScrollAtTop() {
        return this.f3991j;
    }

    public int getNestedScrollFlags() {
        return this.f3993l;
    }

    public int getOnTouchUp() {
        return this.f3987f;
    }

    public int getRotationCenterId() {
        return this.f3988g;
    }

    public int getSpringBoundary() {
        return this.f3999r;
    }

    public float getSpringDamping() {
        return this.f3995n;
    }

    public float getSpringMass() {
        return this.f3996o;
    }

    public float getSpringStiffness() {
        return this.f3997p;
    }

    public float getSpringStopThreshold() {
        return this.f3998q;
    }

    public int getTouchAnchorId() {
        return this.f3984c;
    }

    public int getTouchAnchorSide() {
        return this.f3983b;
    }

    public int getTouchRegionId() {
        return this.f3985d;
    }

    public void setAutoCompleteMode(int autoCompleteMode) {
        this.f4000s = autoCompleteMode;
    }

    public OnSwipe setDragDirection(int dragDirection) {
        this.f3982a = dragDirection;
        return this;
    }

    public OnSwipe setDragScale(int dragScale) {
        this.f3992k = dragScale;
        return this;
    }

    public OnSwipe setDragThreshold(int dragThreshold) {
        this.f3994m = dragThreshold;
        return this;
    }

    public OnSwipe setLimitBoundsTo(int id) {
        this.f3986e = id;
        return this;
    }

    public OnSwipe setMaxAcceleration(int maxAcceleration) {
        this.f3990i = maxAcceleration;
        return this;
    }

    public OnSwipe setMaxVelocity(int maxVelocity) {
        this.f3989h = maxVelocity;
        return this;
    }

    public OnSwipe setMoveWhenScrollAtTop(boolean moveWhenScrollAtTop) {
        this.f3991j = moveWhenScrollAtTop;
        return this;
    }

    public OnSwipe setNestedScrollFlags(int flags) {
        this.f3993l = flags;
        return this;
    }

    public OnSwipe setOnTouchUp(int mode) {
        this.f3987f = mode;
        return this;
    }

    public OnSwipe setRotateCenter(int rotationCenterId) {
        this.f3988g = rotationCenterId;
        return this;
    }

    public OnSwipe setSpringBoundary(int springBoundary) {
        this.f3999r = springBoundary;
        return this;
    }

    public OnSwipe setSpringDamping(float springDamping) {
        this.f3995n = springDamping;
        return this;
    }

    public OnSwipe setSpringMass(float springMass) {
        this.f3996o = springMass;
        return this;
    }

    public OnSwipe setSpringStiffness(float springStiffness) {
        this.f3997p = springStiffness;
        return this;
    }

    public OnSwipe setSpringStopThreshold(float springStopThreshold) {
        this.f3998q = springStopThreshold;
        return this;
    }

    public OnSwipe setTouchAnchorId(int side) {
        this.f3984c = side;
        return this;
    }

    public OnSwipe setTouchAnchorSide(int side) {
        this.f3983b = side;
        return this;
    }

    public OnSwipe setTouchRegionId(int side) {
        this.f3985d = side;
        return this;
    }
}
