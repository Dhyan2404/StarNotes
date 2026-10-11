package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.helpers.Facade;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ConstraintReference implements Reference {

    /* renamed from: C */
    public float f3099C;

    /* renamed from: D */
    public float f3100D;

    /* renamed from: F */
    public Dimension f3102F;

    /* renamed from: G */
    public Dimension f3103G;

    /* renamed from: H */
    public Object f3104H;

    /* renamed from: I */
    public ConstraintWidget f3105I;

    /* renamed from: J */
    public HashMap<String, Integer> f3106J;

    /* renamed from: K */
    public HashMap<String, Float> f3107K;

    /* renamed from: a */
    public Object f3108a;

    /* renamed from: b */
    public final State f3109b;

    /* renamed from: c */
    public String f3110c = null;

    /* renamed from: d */
    public Facade f3111d = null;

    /* renamed from: e */
    public int f3112e = 0;

    /* renamed from: f */
    public int f3113f = 0;

    /* renamed from: g */
    public float f3114g = -1.0f;

    /* renamed from: h */
    public float f3115h = -1.0f;

    /* renamed from: i */
    public float f3116i = 0.5f;

    /* renamed from: j */
    public float f3117j = 0.5f;
    protected int mMarginLeft = 0;
    protected int mMarginRight = 0;
    protected int mMarginStart = 0;
    protected int mMarginEnd = 0;
    protected int mMarginTop = 0;
    protected int mMarginBottom = 0;
    protected int mMarginLeftGone = 0;
    protected int mMarginRightGone = 0;
    protected int mMarginStartGone = 0;
    protected int mMarginEndGone = 0;
    protected int mMarginTopGone = 0;
    protected int mMarginBottomGone = 0;

    /* renamed from: k */
    public int f3118k = 0;

    /* renamed from: l */
    public int f3119l = 0;

    /* renamed from: m */
    public float f3120m = Float.NaN;

    /* renamed from: n */
    public float f3121n = Float.NaN;

    /* renamed from: o */
    public float f3122o = Float.NaN;

    /* renamed from: p */
    public float f3123p = Float.NaN;

    /* renamed from: q */
    public float f3124q = Float.NaN;

    /* renamed from: r */
    public float f3125r = Float.NaN;

    /* renamed from: s */
    public float f3126s = Float.NaN;

    /* renamed from: t */
    public float f3127t = Float.NaN;

    /* renamed from: u */
    public float f3128u = Float.NaN;

    /* renamed from: v */
    public float f3129v = Float.NaN;

    /* renamed from: w */
    public float f3130w = Float.NaN;

    /* renamed from: x */
    public int f3131x = 0;
    protected Object mLeftToLeft = null;
    protected Object mLeftToRight = null;
    protected Object mRightToLeft = null;
    protected Object mRightToRight = null;
    protected Object mStartToStart = null;
    protected Object mStartToEnd = null;
    protected Object mEndToStart = null;
    protected Object mEndToEnd = null;
    protected Object mTopToTop = null;
    protected Object mTopToBottom = null;
    protected Object mBottomToTop = null;
    protected Object mBottomToBottom = null;

    /* renamed from: y */
    public Object f3132y = null;

    /* renamed from: z */
    public Object f3133z = null;

    /* renamed from: A */
    public Object f3097A = null;

    /* renamed from: B */
    public Object f3098B = null;

    /* renamed from: E */
    public State.Constraint f3101E = null;

    /* loaded from: classes3.dex */
    public interface ConstraintReferenceFactory {
        ConstraintReference create(State state);
    }

    /* loaded from: classes3.dex */
    public static class IncorrectConstraintException extends Exception {
        private final ArrayList<String> mErrors;

        public IncorrectConstraintException(ArrayList<String> arrayList) {
            this.mErrors = arrayList;
        }

        public ArrayList<String> getErrors() {
            return this.mErrors;
        }

        @Override // java.lang.Throwable
        public String toString() {
            return "IncorrectConstraintException: " + this.mErrors.toString();
        }
    }

    /* renamed from: androidx.constraintlayout.core.state.ConstraintReference$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0409a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3134a;

        static {
            int[] iArr = new int[State.Constraint.values().length];
            f3134a = iArr;
            try {
                iArr[State.Constraint.LEFT_TO_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3134a[State.Constraint.LEFT_TO_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3134a[State.Constraint.RIGHT_TO_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3134a[State.Constraint.RIGHT_TO_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3134a[State.Constraint.START_TO_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3134a[State.Constraint.START_TO_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3134a[State.Constraint.END_TO_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3134a[State.Constraint.END_TO_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3134a[State.Constraint.TOP_TO_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3134a[State.Constraint.TOP_TO_BOTTOM.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3134a[State.Constraint.BOTTOM_TO_TOP.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3134a[State.Constraint.BOTTOM_TO_BOTTOM.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f3134a[State.Constraint.BASELINE_TO_BOTTOM.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f3134a[State.Constraint.BASELINE_TO_TOP.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f3134a[State.Constraint.BASELINE_TO_BASELINE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f3134a[State.Constraint.CIRCULAR_CONSTRAINT.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f3134a[State.Constraint.CENTER_HORIZONTALLY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f3134a[State.Constraint.CENTER_VERTICALLY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public ConstraintReference(State state) {
        Object obj = Dimension.WRAP_DIMENSION;
        this.f3102F = Dimension.Fixed(obj);
        this.f3103G = Dimension.Fixed(obj);
        this.f3106J = new HashMap<>();
        this.f3107K = new HashMap<>();
        this.f3109b = state;
    }

    /* renamed from: a */
    public final void m1533a(ConstraintWidget constraintWidget, Object obj, State.Constraint constraint) {
        ConstraintWidget m1536d = m1536d(obj);
        if (m1536d == null) {
            return;
        }
        int[] iArr = C0409a.f3134a;
        int i = iArr[constraint.ordinal()];
        switch (iArr[constraint.ordinal()]) {
            case 1:
                ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                constraintWidget.getAnchor(type).connect(m1536d.getAnchor(type), this.mMarginLeft, this.mMarginLeftGone, false);
                return;
            case 2:
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).connect(m1536d.getAnchor(ConstraintAnchor.Type.RIGHT), this.mMarginLeft, this.mMarginLeftGone, false);
                return;
            case 3:
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(m1536d.getAnchor(ConstraintAnchor.Type.LEFT), this.mMarginRight, this.mMarginRightGone, false);
                return;
            case 4:
                ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.getAnchor(type2).connect(m1536d.getAnchor(type2), this.mMarginRight, this.mMarginRightGone, false);
                return;
            case 5:
                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.LEFT;
                constraintWidget.getAnchor(type3).connect(m1536d.getAnchor(type3), this.mMarginStart, this.mMarginStartGone, false);
                return;
            case 6:
                constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT).connect(m1536d.getAnchor(ConstraintAnchor.Type.RIGHT), this.mMarginStart, this.mMarginStartGone, false);
                return;
            case 7:
                constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).connect(m1536d.getAnchor(ConstraintAnchor.Type.LEFT), this.mMarginEnd, this.mMarginEndGone, false);
                return;
            case 8:
                ConstraintAnchor.Type type4 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.getAnchor(type4).connect(m1536d.getAnchor(type4), this.mMarginEnd, this.mMarginEndGone, false);
                return;
            case 9:
                ConstraintAnchor.Type type5 = ConstraintAnchor.Type.TOP;
                constraintWidget.getAnchor(type5).connect(m1536d.getAnchor(type5), this.mMarginTop, this.mMarginTopGone, false);
                return;
            case 10:
                constraintWidget.getAnchor(ConstraintAnchor.Type.TOP).connect(m1536d.getAnchor(ConstraintAnchor.Type.BOTTOM), this.mMarginTop, this.mMarginTopGone, false);
                return;
            case 11:
                constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).connect(m1536d.getAnchor(ConstraintAnchor.Type.TOP), this.mMarginBottom, this.mMarginBottomGone, false);
                return;
            case 12:
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.BOTTOM;
                constraintWidget.getAnchor(type6).connect(m1536d.getAnchor(type6), this.mMarginBottom, this.mMarginBottomGone, false);
                return;
            case 13:
                constraintWidget.immediateConnect(ConstraintAnchor.Type.BASELINE, m1536d, ConstraintAnchor.Type.BOTTOM, this.f3118k, this.f3119l);
                return;
            case 14:
                constraintWidget.immediateConnect(ConstraintAnchor.Type.BASELINE, m1536d, ConstraintAnchor.Type.TOP, this.f3118k, this.f3119l);
                return;
            case 15:
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.BASELINE;
                constraintWidget.immediateConnect(type7, m1536d, type7, this.f3118k, this.f3119l);
                return;
            case 16:
                constraintWidget.connectCircularConstraint(m1536d, this.f3099C, (int) this.f3100D);
                return;
            default:
                return;
        }
    }

    public void addCustomColor(String str, int i) {
        this.f3106J.put(str, Integer.valueOf(i));
    }

    public void addCustomFloat(String str, float f) {
        if (this.f3107K == null) {
            this.f3107K = new HashMap<>();
        }
        this.f3107K.put(str, Float.valueOf(f));
    }

    public ConstraintReference alpha(float f) {
        this.f3128u = f;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void apply() {
        if (this.f3105I == null) {
            return;
        }
        Facade facade = this.f3111d;
        if (facade != null) {
            facade.apply();
        }
        this.f3102F.apply(this.f3109b, this.f3105I, 0);
        this.f3103G.apply(this.f3109b, this.f3105I, 1);
        m1534b();
        m1533a(this.f3105I, this.mLeftToLeft, State.Constraint.LEFT_TO_LEFT);
        m1533a(this.f3105I, this.mLeftToRight, State.Constraint.LEFT_TO_RIGHT);
        m1533a(this.f3105I, this.mRightToLeft, State.Constraint.RIGHT_TO_LEFT);
        m1533a(this.f3105I, this.mRightToRight, State.Constraint.RIGHT_TO_RIGHT);
        m1533a(this.f3105I, this.mStartToStart, State.Constraint.START_TO_START);
        m1533a(this.f3105I, this.mStartToEnd, State.Constraint.START_TO_END);
        m1533a(this.f3105I, this.mEndToStart, State.Constraint.END_TO_START);
        m1533a(this.f3105I, this.mEndToEnd, State.Constraint.END_TO_END);
        m1533a(this.f3105I, this.mTopToTop, State.Constraint.TOP_TO_TOP);
        m1533a(this.f3105I, this.mTopToBottom, State.Constraint.TOP_TO_BOTTOM);
        m1533a(this.f3105I, this.mBottomToTop, State.Constraint.BOTTOM_TO_TOP);
        m1533a(this.f3105I, this.mBottomToBottom, State.Constraint.BOTTOM_TO_BOTTOM);
        m1533a(this.f3105I, this.f3132y, State.Constraint.BASELINE_TO_BASELINE);
        m1533a(this.f3105I, this.f3133z, State.Constraint.BASELINE_TO_TOP);
        m1533a(this.f3105I, this.f3097A, State.Constraint.BASELINE_TO_BOTTOM);
        m1533a(this.f3105I, this.f3098B, State.Constraint.CIRCULAR_CONSTRAINT);
        int i = this.f3112e;
        if (i != 0) {
            this.f3105I.setHorizontalChainStyle(i);
        }
        int i2 = this.f3113f;
        if (i2 != 0) {
            this.f3105I.setVerticalChainStyle(i2);
        }
        float f = this.f3114g;
        if (f != -1.0f) {
            this.f3105I.setHorizontalWeight(f);
        }
        float f2 = this.f3115h;
        if (f2 != -1.0f) {
            this.f3105I.setVerticalWeight(f2);
        }
        this.f3105I.setHorizontalBiasPercent(this.f3116i);
        this.f3105I.setVerticalBiasPercent(this.f3117j);
        ConstraintWidget constraintWidget = this.f3105I;
        WidgetFrame widgetFrame = constraintWidget.frame;
        widgetFrame.pivotX = this.f3120m;
        widgetFrame.pivotY = this.f3121n;
        widgetFrame.rotationX = this.f3122o;
        widgetFrame.rotationY = this.f3123p;
        widgetFrame.rotationZ = this.f3124q;
        widgetFrame.translationX = this.f3125r;
        widgetFrame.translationY = this.f3126s;
        widgetFrame.translationZ = this.f3127t;
        widgetFrame.scaleX = this.f3129v;
        widgetFrame.scaleY = this.f3130w;
        widgetFrame.alpha = this.f3128u;
        int i3 = this.f3131x;
        widgetFrame.visibility = i3;
        constraintWidget.setVisibility(i3);
        HashMap<String, Integer> hashMap = this.f3106J;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                this.f3105I.frame.setCustomAttribute(str, 902, this.f3106J.get(str).intValue());
            }
        }
        HashMap<String, Float> hashMap2 = this.f3107K;
        if (hashMap2 != null) {
            for (String str2 : hashMap2.keySet()) {
                this.f3105I.frame.setCustomAttribute(str2, 901, this.f3107K.get(str2).floatValue());
            }
        }
    }

    /* renamed from: b */
    public final void m1534b() {
        this.mLeftToLeft = m1535c(this.mLeftToLeft);
        this.mLeftToRight = m1535c(this.mLeftToRight);
        this.mRightToLeft = m1535c(this.mRightToLeft);
        this.mRightToRight = m1535c(this.mRightToRight);
        this.mStartToStart = m1535c(this.mStartToStart);
        this.mStartToEnd = m1535c(this.mStartToEnd);
        this.mEndToStart = m1535c(this.mEndToStart);
        this.mEndToEnd = m1535c(this.mEndToEnd);
        this.mTopToTop = m1535c(this.mTopToTop);
        this.mTopToBottom = m1535c(this.mTopToBottom);
        this.mBottomToTop = m1535c(this.mBottomToTop);
        this.mBottomToBottom = m1535c(this.mBottomToBottom);
        this.f3132y = m1535c(this.f3132y);
        this.f3133z = m1535c(this.f3133z);
        this.f3097A = m1535c(this.f3097A);
    }

    public ConstraintReference baseline() {
        this.f3101E = State.Constraint.BASELINE_TO_BASELINE;
        return this;
    }

    public ConstraintReference baselineToBaseline(Object obj) {
        this.f3101E = State.Constraint.BASELINE_TO_BASELINE;
        this.f3132y = obj;
        return this;
    }

    public ConstraintReference baselineToBottom(Object obj) {
        this.f3101E = State.Constraint.BASELINE_TO_BOTTOM;
        this.f3097A = obj;
        return this;
    }

    public ConstraintReference baselineToTop(Object obj) {
        this.f3101E = State.Constraint.BASELINE_TO_TOP;
        this.f3133z = obj;
        return this;
    }

    public ConstraintReference bias(float f) {
        State.Constraint constraint = this.f3101E;
        if (constraint == null) {
            return this;
        }
        int i = C0409a.f3134a[constraint.ordinal()];
        if (i != 17) {
            if (i != 18) {
                switch (i) {
                }
                return this;
            }
            this.f3117j = f;
            return this;
        }
        this.f3116i = f;
        return this;
    }

    public ConstraintReference bottom() {
        if (this.mBottomToTop != null) {
            this.f3101E = State.Constraint.BOTTOM_TO_TOP;
        } else {
            this.f3101E = State.Constraint.BOTTOM_TO_BOTTOM;
        }
        return this;
    }

    public ConstraintReference bottomToBottom(Object obj) {
        this.f3101E = State.Constraint.BOTTOM_TO_BOTTOM;
        this.mBottomToBottom = obj;
        return this;
    }

    public ConstraintReference bottomToTop(Object obj) {
        this.f3101E = State.Constraint.BOTTOM_TO_TOP;
        this.mBottomToTop = obj;
        return this;
    }

    /* renamed from: c */
    public final Object m1535c(Object obj) {
        if (obj == null) {
            return null;
        }
        return !(obj instanceof ConstraintReference) ? this.f3109b.m1540b(obj) : obj;
    }

    public ConstraintReference centerHorizontally(Object obj) {
        Object m1535c = m1535c(obj);
        this.mStartToStart = m1535c;
        this.mEndToEnd = m1535c;
        this.f3101E = State.Constraint.CENTER_HORIZONTALLY;
        this.f3116i = 0.5f;
        return this;
    }

    public ConstraintReference centerVertically(Object obj) {
        Object m1535c = m1535c(obj);
        this.mTopToTop = m1535c;
        this.mBottomToBottom = m1535c;
        this.f3101E = State.Constraint.CENTER_VERTICALLY;
        this.f3117j = 0.5f;
        return this;
    }

    public ConstraintReference circularConstraint(Object obj, float f, float f2) {
        this.f3098B = m1535c(obj);
        this.f3099C = f;
        this.f3100D = f2;
        this.f3101E = State.Constraint.CIRCULAR_CONSTRAINT;
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public ConstraintReference clear() {
        State.Constraint constraint = this.f3101E;
        if (constraint != null) {
            switch (C0409a.f3134a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.mLeftToLeft = null;
                    this.mLeftToRight = null;
                    this.mMarginLeft = 0;
                    this.mMarginLeftGone = 0;
                    break;
                case 3:
                case 4:
                    this.mRightToLeft = null;
                    this.mRightToRight = null;
                    this.mMarginRight = 0;
                    this.mMarginRightGone = 0;
                    break;
                case 5:
                case 6:
                    this.mStartToStart = null;
                    this.mStartToEnd = null;
                    this.mMarginStart = 0;
                    this.mMarginStartGone = 0;
                    break;
                case 7:
                case 8:
                    this.mEndToStart = null;
                    this.mEndToEnd = null;
                    this.mMarginEnd = 0;
                    this.mMarginEndGone = 0;
                    break;
                case 9:
                case 10:
                    this.mTopToTop = null;
                    this.mTopToBottom = null;
                    this.mMarginTop = 0;
                    this.mMarginTopGone = 0;
                    break;
                case 11:
                case 12:
                    this.mBottomToTop = null;
                    this.mBottomToBottom = null;
                    this.mMarginBottom = 0;
                    this.mMarginBottomGone = 0;
                    break;
                case 15:
                    this.f3132y = null;
                    break;
                case 16:
                    this.f3098B = null;
                    break;
            }
        } else {
            this.mLeftToLeft = null;
            this.mLeftToRight = null;
            this.mMarginLeft = 0;
            this.mRightToLeft = null;
            this.mRightToRight = null;
            this.mMarginRight = 0;
            this.mStartToStart = null;
            this.mStartToEnd = null;
            this.mMarginStart = 0;
            this.mEndToStart = null;
            this.mEndToEnd = null;
            this.mMarginEnd = 0;
            this.mTopToTop = null;
            this.mTopToBottom = null;
            this.mMarginTop = 0;
            this.mBottomToTop = null;
            this.mBottomToBottom = null;
            this.mMarginBottom = 0;
            this.f3132y = null;
            this.f3098B = null;
            this.f3116i = 0.5f;
            this.f3117j = 0.5f;
            this.mMarginLeftGone = 0;
            this.mMarginRightGone = 0;
            this.mMarginStartGone = 0;
            this.mMarginEndGone = 0;
            this.mMarginTopGone = 0;
            this.mMarginBottomGone = 0;
        }
        return this;
    }

    public ConstraintReference clearHorizontal() {
        start().clear();
        end().clear();
        left().clear();
        right().clear();
        return this;
    }

    public ConstraintReference clearVertical() {
        top().clear();
        baseline().clear();
        bottom().clear();
        return this;
    }

    public ConstraintWidget createConstraintWidget() {
        return new ConstraintWidget(getWidth().m1537a(), getHeight().m1537a());
    }

    /* renamed from: d */
    public final ConstraintWidget m1536d(Object obj) {
        if (obj instanceof Reference) {
            return ((Reference) obj).getConstraintWidget();
        }
        return null;
    }

    public ConstraintReference end() {
        if (this.mEndToStart != null) {
            this.f3101E = State.Constraint.END_TO_START;
        } else {
            this.f3101E = State.Constraint.END_TO_END;
        }
        return this;
    }

    public ConstraintReference endToEnd(Object obj) {
        this.f3101E = State.Constraint.END_TO_END;
        this.mEndToEnd = obj;
        return this;
    }

    public ConstraintReference endToStart(Object obj) {
        this.f3101E = State.Constraint.END_TO_START;
        this.mEndToStart = obj;
        return this;
    }

    public float getAlpha() {
        return this.f3128u;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public ConstraintWidget getConstraintWidget() {
        if (this.f3105I == null) {
            ConstraintWidget createConstraintWidget = createConstraintWidget();
            this.f3105I = createConstraintWidget;
            createConstraintWidget.setCompanionWidget(this.f3104H);
        }
        return this.f3105I;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Facade getFacade() {
        return this.f3111d;
    }

    public Dimension getHeight() {
        return this.f3103G;
    }

    public int getHorizontalChainStyle() {
        return this.f3112e;
    }

    public float getHorizontalChainWeight() {
        return this.f3114g;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public Object getKey() {
        return this.f3108a;
    }

    public float getPivotX() {
        return this.f3120m;
    }

    public float getPivotY() {
        return this.f3121n;
    }

    public float getRotationX() {
        return this.f3122o;
    }

    public float getRotationY() {
        return this.f3123p;
    }

    public float getRotationZ() {
        return this.f3124q;
    }

    public float getScaleX() {
        return this.f3129v;
    }

    public float getScaleY() {
        return this.f3130w;
    }

    public String getTag() {
        return this.f3110c;
    }

    public float getTranslationX() {
        return this.f3125r;
    }

    public float getTranslationY() {
        return this.f3126s;
    }

    public float getTranslationZ() {
        return this.f3127t;
    }

    public int getVerticalChainStyle(int i) {
        return this.f3113f;
    }

    public float getVerticalChainWeight() {
        return this.f3115h;
    }

    public Object getView() {
        return this.f3104H;
    }

    public Dimension getWidth() {
        return this.f3102F;
    }

    public ConstraintReference height(Dimension dimension) {
        return setHeight(dimension);
    }

    public ConstraintReference horizontalBias(float f) {
        this.f3116i = f;
        return this;
    }

    public ConstraintReference left() {
        if (this.mLeftToLeft != null) {
            this.f3101E = State.Constraint.LEFT_TO_LEFT;
        } else {
            this.f3101E = State.Constraint.LEFT_TO_RIGHT;
        }
        return this;
    }

    public ConstraintReference leftToLeft(Object obj) {
        this.f3101E = State.Constraint.LEFT_TO_LEFT;
        this.mLeftToLeft = obj;
        return this;
    }

    public ConstraintReference leftToRight(Object obj) {
        this.f3101E = State.Constraint.LEFT_TO_RIGHT;
        this.mLeftToRight = obj;
        return this;
    }

    public ConstraintReference margin(Object obj) {
        return margin(this.f3109b.convertDimension(obj));
    }

    public ConstraintReference marginGone(Object obj) {
        return marginGone(this.f3109b.convertDimension(obj));
    }

    public ConstraintReference pivotX(float f) {
        this.f3120m = f;
        return this;
    }

    public ConstraintReference pivotY(float f) {
        this.f3121n = f;
        return this;
    }

    public ConstraintReference right() {
        if (this.mRightToLeft != null) {
            this.f3101E = State.Constraint.RIGHT_TO_LEFT;
        } else {
            this.f3101E = State.Constraint.RIGHT_TO_RIGHT;
        }
        return this;
    }

    public ConstraintReference rightToLeft(Object obj) {
        this.f3101E = State.Constraint.RIGHT_TO_LEFT;
        this.mRightToLeft = obj;
        return this;
    }

    public ConstraintReference rightToRight(Object obj) {
        this.f3101E = State.Constraint.RIGHT_TO_RIGHT;
        this.mRightToRight = obj;
        return this;
    }

    public ConstraintReference rotationX(float f) {
        this.f3122o = f;
        return this;
    }

    public ConstraintReference rotationY(float f) {
        this.f3123p = f;
        return this;
    }

    public ConstraintReference rotationZ(float f) {
        this.f3124q = f;
        return this;
    }

    public ConstraintReference scaleX(float f) {
        this.f3129v = f;
        return this;
    }

    public ConstraintReference scaleY(float f) {
        this.f3130w = f;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setConstraintWidget(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return;
        }
        this.f3105I = constraintWidget;
        constraintWidget.setCompanionWidget(this.f3104H);
    }

    public void setFacade(Facade facade) {
        this.f3111d = facade;
        if (facade != null) {
            setConstraintWidget(facade.getConstraintWidget());
        }
    }

    public ConstraintReference setHeight(Dimension dimension) {
        this.f3103G = dimension;
        return this;
    }

    public void setHorizontalChainStyle(int i) {
        this.f3112e = i;
    }

    public void setHorizontalChainWeight(float f) {
        this.f3114g = f;
    }

    @Override // androidx.constraintlayout.core.state.Reference
    public void setKey(Object obj) {
        this.f3108a = obj;
    }

    public void setTag(String str) {
        this.f3110c = str;
    }

    public void setVerticalChainStyle(int i) {
        this.f3113f = i;
    }

    public void setVerticalChainWeight(float f) {
        this.f3115h = f;
    }

    public void setView(Object obj) {
        this.f3104H = obj;
        ConstraintWidget constraintWidget = this.f3105I;
        if (constraintWidget != null) {
            constraintWidget.setCompanionWidget(obj);
        }
    }

    public ConstraintReference setWidth(Dimension dimension) {
        this.f3102F = dimension;
        return this;
    }

    public ConstraintReference start() {
        if (this.mStartToStart != null) {
            this.f3101E = State.Constraint.START_TO_START;
        } else {
            this.f3101E = State.Constraint.START_TO_END;
        }
        return this;
    }

    public ConstraintReference startToEnd(Object obj) {
        this.f3101E = State.Constraint.START_TO_END;
        this.mStartToEnd = obj;
        return this;
    }

    public ConstraintReference startToStart(Object obj) {
        this.f3101E = State.Constraint.START_TO_START;
        this.mStartToStart = obj;
        return this;
    }

    public ConstraintReference top() {
        if (this.mTopToTop != null) {
            this.f3101E = State.Constraint.TOP_TO_TOP;
        } else {
            this.f3101E = State.Constraint.TOP_TO_BOTTOM;
        }
        return this;
    }

    public ConstraintReference topToBottom(Object obj) {
        this.f3101E = State.Constraint.TOP_TO_BOTTOM;
        this.mTopToBottom = obj;
        return this;
    }

    public ConstraintReference topToTop(Object obj) {
        this.f3101E = State.Constraint.TOP_TO_TOP;
        this.mTopToTop = obj;
        return this;
    }

    public ConstraintReference translationX(float f) {
        this.f3125r = f;
        return this;
    }

    public ConstraintReference translationY(float f) {
        this.f3126s = f;
        return this;
    }

    public ConstraintReference translationZ(float f) {
        this.f3127t = f;
        return this;
    }

    public void validate() throws IncorrectConstraintException {
        ArrayList arrayList = new ArrayList();
        if (this.mLeftToLeft != null && this.mLeftToRight != null) {
            arrayList.add("LeftToLeft and LeftToRight both defined");
        }
        if (this.mRightToLeft != null && this.mRightToRight != null) {
            arrayList.add("RightToLeft and RightToRight both defined");
        }
        if (this.mStartToStart != null && this.mStartToEnd != null) {
            arrayList.add("StartToStart and StartToEnd both defined");
        }
        if (this.mEndToStart != null && this.mEndToEnd != null) {
            arrayList.add("EndToStart and EndToEnd both defined");
        }
        if ((this.mLeftToLeft != null || this.mLeftToRight != null || this.mRightToLeft != null || this.mRightToRight != null) && (this.mStartToStart != null || this.mStartToEnd != null || this.mEndToStart != null || this.mEndToEnd != null)) {
            arrayList.add("Both left/right and start/end constraints defined");
        }
        if (arrayList.size() > 0) {
            throw new IncorrectConstraintException(arrayList);
        }
    }

    public ConstraintReference verticalBias(float f) {
        this.f3117j = f;
        return this;
    }

    public ConstraintReference visibility(int i) {
        this.f3131x = i;
        return this;
    }

    public ConstraintReference width(Dimension dimension) {
        return setWidth(dimension);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public ConstraintReference margin(int i) {
        State.Constraint constraint = this.f3101E;
        if (constraint != null) {
            switch (C0409a.f3134a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.mMarginLeft = i;
                    break;
                case 3:
                case 4:
                    this.mMarginRight = i;
                    break;
                case 5:
                case 6:
                    this.mMarginStart = i;
                    break;
                case 7:
                case 8:
                    this.mMarginEnd = i;
                    break;
                case 9:
                case 10:
                    this.mMarginTop = i;
                    break;
                case 11:
                case 12:
                    this.mMarginBottom = i;
                    break;
                case 13:
                case 14:
                case 15:
                    this.f3118k = i;
                    break;
                case 16:
                    this.f3100D = i;
                    break;
            }
        } else {
            this.mMarginLeft = i;
            this.mMarginRight = i;
            this.mMarginStart = i;
            this.mMarginEnd = i;
            this.mMarginTop = i;
            this.mMarginBottom = i;
        }
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public ConstraintReference marginGone(int i) {
        State.Constraint constraint = this.f3101E;
        if (constraint != null) {
            switch (C0409a.f3134a[constraint.ordinal()]) {
                case 1:
                case 2:
                    this.mMarginLeftGone = i;
                    break;
                case 3:
                case 4:
                    this.mMarginRightGone = i;
                    break;
                case 5:
                case 6:
                    this.mMarginStartGone = i;
                    break;
                case 7:
                case 8:
                    this.mMarginEndGone = i;
                    break;
                case 9:
                case 10:
                    this.mMarginTopGone = i;
                    break;
                case 11:
                case 12:
                    this.mMarginBottomGone = i;
                    break;
                case 13:
                case 14:
                case 15:
                    this.f3119l = i;
                    break;
            }
        } else {
            this.mMarginLeftGone = i;
            this.mMarginRightGone = i;
            this.mMarginStartGone = i;
            this.mMarginEndGone = i;
            this.mMarginTopGone = i;
            this.mMarginBottomGone = i;
        }
        return this;
    }
}
