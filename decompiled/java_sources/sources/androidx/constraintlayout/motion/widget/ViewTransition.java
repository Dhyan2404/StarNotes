package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class ViewTransition {

    /* renamed from: A */
    public static final int f4002A = 1;

    /* renamed from: B */
    public static final int f4003B = 2;

    /* renamed from: C */
    public static final int f4004C = -1;
    public static final String CONSTRAINT_OVERRIDE = "ConstraintOverride";
    public static final String CUSTOM_ATTRIBUTE = "CustomAttribute";
    public static final String CUSTOM_METHOD = "CustomMethod";

    /* renamed from: D */
    public static final int f4005D = -2;

    /* renamed from: E */
    public static final int f4006E = 0;

    /* renamed from: F */
    public static final int f4007F = 1;

    /* renamed from: G */
    public static final int f4008G = 2;

    /* renamed from: H */
    public static final int f4009H = 3;

    /* renamed from: I */
    public static final int f4010I = 4;

    /* renamed from: J */
    public static final int f4011J = 5;

    /* renamed from: K */
    public static final int f4012K = 6;
    public static final String KEY_FRAME_SET_TAG = "KeyFrameSet";
    public static final int ONSTATE_ACTION_DOWN = 1;
    public static final int ONSTATE_ACTION_DOWN_UP = 3;
    public static final int ONSTATE_ACTION_UP = 2;
    public static final int ONSTATE_SHARED_VALUE_SET = 4;
    public static final int ONSTATE_SHARED_VALUE_UNSET = 5;
    public static final String VIEW_TRANSITION_TAG = "ViewTransition";

    /* renamed from: x */
    public static String f4013x = "ViewTransition";

    /* renamed from: y */
    public static final int f4014y = -1;

    /* renamed from: z */
    public static final int f4015z = 0;

    /* renamed from: a */
    public ConstraintSet f4016a;

    /* renamed from: b */
    public int f4017b;

    /* renamed from: f */
    public int f4021f;

    /* renamed from: g */
    public KeyFrames f4022g;

    /* renamed from: h */
    public ConstraintSet.Constraint f4023h;

    /* renamed from: k */
    public int f4026k;

    /* renamed from: l */
    public String f4027l;

    /* renamed from: p */
    public Context f4031p;

    /* renamed from: c */
    public int f4018c = -1;

    /* renamed from: d */
    public boolean f4019d = false;

    /* renamed from: e */
    public int f4020e = 0;

    /* renamed from: i */
    public int f4024i = -1;

    /* renamed from: j */
    public int f4025j = -1;

    /* renamed from: m */
    public int f4028m = 0;

    /* renamed from: n */
    public String f4029n = null;

    /* renamed from: o */
    public int f4030o = -1;

    /* renamed from: q */
    public int f4032q = -1;

    /* renamed from: r */
    public int f4033r = -1;

    /* renamed from: s */
    public int f4034s = -1;

    /* renamed from: t */
    public int f4035t = -1;

    /* renamed from: u */
    public int f4036u = -1;

    /* renamed from: v */
    public int f4037v = -1;

    /* renamed from: w */
    public int f4038w = -1;

    /* renamed from: androidx.constraintlayout.motion.widget.ViewTransition$a */
    /* loaded from: classes3.dex */
    public class InterpolatorC0481a implements Interpolator {

        /* renamed from: a */
        public final /* synthetic */ Easing f4039a;

        public InterpolatorC0481a(final ViewTransition this$0, final Easing val$easing) {
            this.f4039a = val$easing;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float v) {
            return (float) this.f4039a.get(v);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.ViewTransition$b */
    /* loaded from: classes3.dex */
    public static class C0482b {

        /* renamed from: a */
        public final int f4040a;

        /* renamed from: b */
        public final int f4041b;

        /* renamed from: c */
        public long f4042c;

        /* renamed from: d */
        public MotionController f4043d;

        /* renamed from: e */
        public int f4044e;

        /* renamed from: f */
        public int f4045f;

        /* renamed from: h */
        public ViewTransitionController f4047h;

        /* renamed from: i */
        public Interpolator f4048i;

        /* renamed from: k */
        public float f4050k;

        /* renamed from: l */
        public float f4051l;

        /* renamed from: m */
        public long f4052m;

        /* renamed from: o */
        public boolean f4054o;

        /* renamed from: g */
        public KeyCache f4046g = new KeyCache();

        /* renamed from: j */
        public boolean f4049j = false;

        /* renamed from: n */
        public Rect f4053n = new Rect();

        public C0482b(ViewTransitionController controller, MotionController motionController, int duration, int upDuration, int mode, Interpolator interpolator, int setTag, int clearTag) {
            this.f4054o = false;
            this.f4047h = controller;
            this.f4043d = motionController;
            this.f4044e = duration;
            this.f4045f = upDuration;
            long nanoTime = System.nanoTime();
            this.f4042c = nanoTime;
            this.f4052m = nanoTime;
            this.f4047h.m2048b(this);
            this.f4048i = interpolator;
            this.f4040a = setTag;
            this.f4041b = clearTag;
            if (mode == 3) {
                this.f4054o = true;
            }
            this.f4051l = duration == 0 ? Float.MAX_VALUE : 1.0f / duration;
            m2042a();
        }

        /* renamed from: a */
        public void m2042a() {
            if (this.f4049j) {
                m2044c();
            } else {
                m2043b();
            }
        }

        /* renamed from: b */
        public void m2043b() {
            long nanoTime = System.nanoTime();
            long j = nanoTime - this.f4052m;
            this.f4052m = nanoTime;
            float f = this.f4050k + (((float) (j * 1.0E-6d)) * this.f4051l);
            this.f4050k = f;
            if (f >= 1.0f) {
                this.f4050k = 1.0f;
            }
            Interpolator interpolator = this.f4048i;
            float interpolation = interpolator == null ? this.f4050k : interpolator.getInterpolation(this.f4050k);
            MotionController motionController = this.f4043d;
            boolean m1872t = motionController.m1872t(motionController.f3752b, interpolation, nanoTime, this.f4046g);
            if (this.f4050k >= 1.0f) {
                if (this.f4040a != -1) {
                    this.f4043d.getView().setTag(this.f4040a, Long.valueOf(System.nanoTime()));
                }
                if (this.f4041b != -1) {
                    this.f4043d.getView().setTag(this.f4041b, null);
                }
                if (!this.f4054o) {
                    this.f4047h.m2056j(this);
                }
            }
            if (this.f4050k < 1.0f || m1872t) {
                this.f4047h.m2052f();
            }
        }

        /* renamed from: c */
        public void m2044c() {
            long nanoTime = System.nanoTime();
            long j = nanoTime - this.f4052m;
            this.f4052m = nanoTime;
            float f = this.f4050k - (((float) (j * 1.0E-6d)) * this.f4051l);
            this.f4050k = f;
            if (f < 0.0f) {
                this.f4050k = 0.0f;
            }
            Interpolator interpolator = this.f4048i;
            float interpolation = interpolator == null ? this.f4050k : interpolator.getInterpolation(this.f4050k);
            MotionController motionController = this.f4043d;
            boolean m1872t = motionController.m1872t(motionController.f3752b, interpolation, nanoTime, this.f4046g);
            if (this.f4050k <= 0.0f) {
                if (this.f4040a != -1) {
                    this.f4043d.getView().setTag(this.f4040a, Long.valueOf(System.nanoTime()));
                }
                if (this.f4041b != -1) {
                    this.f4043d.getView().setTag(this.f4041b, null);
                }
                this.f4047h.m2056j(this);
            }
            if (this.f4050k > 0.0f || m1872t) {
                this.f4047h.m2052f();
            }
        }

        /* renamed from: d */
        public void m2045d(int action, float x, float y) {
            if (action == 1) {
                if (this.f4049j) {
                    return;
                }
                m2046e(true);
            } else {
                if (action != 2) {
                    return;
                }
                this.f4043d.getView().getHitRect(this.f4053n);
                if (this.f4053n.contains((int) x, (int) y) || this.f4049j) {
                    return;
                }
                m2046e(true);
            }
        }

        /* renamed from: e */
        public void m2046e(boolean dir) {
            int i;
            this.f4049j = dir;
            if (dir && (i = this.f4045f) != -1) {
                this.f4051l = i == 0 ? Float.MAX_VALUE : 1.0f / i;
            }
            this.f4047h.m2052f();
            this.f4052m = System.nanoTime();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x004b. Please report as an issue. */
    public ViewTransition(Context context, XmlPullParser parser) {
        char c;
        this.f4031p = context;
        try {
            int eventType = parser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = parser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (name.equals(CONSTRAINT_OVERRIDE)) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1239391468:
                            if (name.equals("KeyFrameSet")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 61998586:
                            if (name.equals("ViewTransition")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 366511058:
                            if (name.equals("CustomMethod")) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1791837707:
                            if (name.equals("CustomAttribute")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    if (c == 0) {
                        m2037j(context, parser);
                    } else if (c == 1) {
                        this.f4022g = new KeyFrames(context, parser);
                    } else if (c == 2) {
                        this.f4023h = ConstraintSet.buildDelta(context, parser);
                    } else if (c == 3 || c == 4) {
                        ConstraintAttribute.parse(context, parser, this.f4023h.mCustomConstraints);
                    } else {
                        Log.e(f4013x, Debug.getLoc() + " unknown tag " + name);
                        Log.e(f4013x, ".xml:" + parser.getLineNumber());
                    }
                } else if (eventType != 3) {
                    continue;
                } else if ("ViewTransition".equals(parser.getName())) {
                    return;
                }
                eventType = parser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m2029h(View[] viewArr) {
        if (this.f4032q != -1) {
            for (View view : viewArr) {
                view.setTag(this.f4032q, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.f4033r != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.f4033r, null);
            }
        }
    }

    /* renamed from: b */
    public void m2030b(ViewTransitionController controller, MotionLayout motionLayout, View view) {
        MotionController motionController = new MotionController(view);
        motionController.m1877y(view);
        this.f4022g.addAllFrames(motionController);
        motionController.setup(motionLayout.getWidth(), motionLayout.getHeight(), this.f4024i, System.nanoTime());
        new C0482b(controller, motionController, this.f4024i, this.f4025j, this.f4018c, m2034f(motionLayout.getContext()), this.f4032q, this.f4033r);
    }

    /* renamed from: c */
    public void m2031c(ViewTransitionController controller, MotionLayout layout, int fromId, ConstraintSet current, final View... views) {
        if (this.f4019d) {
            return;
        }
        int i = this.f4021f;
        if (i == 2) {
            m2030b(controller, layout, views[0]);
            return;
        }
        if (i == 1) {
            for (int i2 : layout.getConstraintSetIds()) {
                if (i2 != fromId) {
                    ConstraintSet constraintSet = layout.getConstraintSet(i2);
                    for (View view : views) {
                        ConstraintSet.Constraint constraint = constraintSet.getConstraint(view.getId());
                        ConstraintSet.Constraint constraint2 = this.f4023h;
                        if (constraint2 != null) {
                            constraint2.applyDelta(constraint);
                            constraint.mCustomConstraints.putAll(this.f4023h.mCustomConstraints);
                        }
                    }
                }
            }
        }
        ConstraintSet constraintSet2 = new ConstraintSet();
        constraintSet2.clone(current);
        for (View view2 : views) {
            ConstraintSet.Constraint constraint3 = constraintSet2.getConstraint(view2.getId());
            ConstraintSet.Constraint constraint4 = this.f4023h;
            if (constraint4 != null) {
                constraint4.applyDelta(constraint3);
                constraint3.mCustomConstraints.putAll(this.f4023h.mCustomConstraints);
            }
        }
        layout.updateState(fromId, constraintSet2);
        layout.updateState(C0503R.id.view_transition, current);
        layout.setState(C0503R.id.view_transition, -1, -1);
        MotionScene.Transition transition = new MotionScene.Transition(-1, layout.f3853v0, C0503R.id.view_transition, fromId);
        for (View view3 : views) {
            m2041n(transition, view3);
        }
        layout.setTransition(transition);
        layout.transitionToEnd(new Runnable() { // from class: com.sunia.HTREnginev2.r4o
            @Override // java.lang.Runnable
            public final void run() {
                ViewTransition.this.m2029h(views);
            }
        });
    }

    /* renamed from: d */
    public boolean m2032d(View view) {
        int i = this.f4034s;
        boolean z = i == -1 || view.getTag(i) != null;
        int i2 = this.f4035t;
        return z && (i2 == -1 || view.getTag(i2) == null);
    }

    /* renamed from: e */
    public int m2033e() {
        return this.f4017b;
    }

    /* renamed from: f */
    public Interpolator m2034f(Context context) {
        int i = this.f4028m;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(context, this.f4030o);
        }
        if (i == -1) {
            return new InterpolatorC0481a(this, Easing.getInterpolator(this.f4029n));
        }
        if (i == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i == 1) {
            return new AccelerateInterpolator();
        }
        if (i == 2) {
            return new DecelerateInterpolator();
        }
        if (i == 4) {
            return new BounceInterpolator();
        }
        if (i == 5) {
            return new OvershootInterpolator();
        }
        if (i != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    /* renamed from: g */
    public boolean m2035g() {
        return !this.f4019d;
    }

    public int getSharedValue() {
        return this.f4036u;
    }

    public int getSharedValueCurrent() {
        return this.f4038w;
    }

    public int getSharedValueID() {
        return this.f4037v;
    }

    public int getStateTransition() {
        return this.f4018c;
    }

    /* renamed from: i */
    public boolean m2036i(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.f4026k == -1 && this.f4027l == null) || !m2032d(view)) {
            return false;
        }
        if (view.getId() == this.f4026k) {
            return true;
        }
        return this.f4027l != null && (view.getLayoutParams() instanceof ConstraintLayout.LayoutParams) && (str = ((ConstraintLayout.LayoutParams) view.getLayoutParams()).constraintTag) != null && str.matches(this.f4027l);
    }

    /* renamed from: j */
    public final void m2037j(Context context, XmlPullParser parser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.ViewTransition);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0503R.styleable.ViewTransition_android_id) {
                this.f4017b = obtainStyledAttributes.getResourceId(index, this.f4017b);
            } else if (index == C0503R.styleable.ViewTransition_motionTarget) {
                if (MotionLayout.IS_IN_EDIT_MODE) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f4026k);
                    this.f4026k = resourceId;
                    if (resourceId == -1) {
                        this.f4027l = obtainStyledAttributes.getString(index);
                    }
                } else if (obtainStyledAttributes.peekValue(index).type == 3) {
                    this.f4027l = obtainStyledAttributes.getString(index);
                } else {
                    this.f4026k = obtainStyledAttributes.getResourceId(index, this.f4026k);
                }
            } else if (index == C0503R.styleable.ViewTransition_onStateTransition) {
                this.f4018c = obtainStyledAttributes.getInt(index, this.f4018c);
            } else if (index == C0503R.styleable.ViewTransition_transitionDisable) {
                this.f4019d = obtainStyledAttributes.getBoolean(index, this.f4019d);
            } else if (index == C0503R.styleable.ViewTransition_pathMotionArc) {
                this.f4020e = obtainStyledAttributes.getInt(index, this.f4020e);
            } else if (index == C0503R.styleable.ViewTransition_duration) {
                this.f4024i = obtainStyledAttributes.getInt(index, this.f4024i);
            } else if (index == C0503R.styleable.ViewTransition_upDuration) {
                this.f4025j = obtainStyledAttributes.getInt(index, this.f4025j);
            } else if (index == C0503R.styleable.ViewTransition_viewTransitionMode) {
                this.f4021f = obtainStyledAttributes.getInt(index, this.f4021f);
            } else if (index == C0503R.styleable.ViewTransition_motionInterpolator) {
                int i2 = obtainStyledAttributes.peekValue(index).type;
                if (i2 == 1) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                    this.f4030o = resourceId2;
                    if (resourceId2 != -1) {
                        this.f4028m = -2;
                    }
                } else if (i2 == 3) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f4029n = string;
                    if (string == null || string.indexOf("/") <= 0) {
                        this.f4028m = -1;
                    } else {
                        this.f4030o = obtainStyledAttributes.getResourceId(index, -1);
                        this.f4028m = -2;
                    }
                } else {
                    this.f4028m = obtainStyledAttributes.getInteger(index, this.f4028m);
                }
            } else if (index == C0503R.styleable.ViewTransition_setsTag) {
                this.f4032q = obtainStyledAttributes.getResourceId(index, this.f4032q);
            } else if (index == C0503R.styleable.ViewTransition_clearsTag) {
                this.f4033r = obtainStyledAttributes.getResourceId(index, this.f4033r);
            } else if (index == C0503R.styleable.ViewTransition_ifTagSet) {
                this.f4034s = obtainStyledAttributes.getResourceId(index, this.f4034s);
            } else if (index == C0503R.styleable.ViewTransition_ifTagNotSet) {
                this.f4035t = obtainStyledAttributes.getResourceId(index, this.f4035t);
            } else if (index == C0503R.styleable.ViewTransition_SharedValueId) {
                this.f4037v = obtainStyledAttributes.getResourceId(index, this.f4037v);
            } else if (index == C0503R.styleable.ViewTransition_SharedValue) {
                this.f4036u = obtainStyledAttributes.getInteger(index, this.f4036u);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: k */
    public void m2038k(boolean enable) {
        this.f4019d = !enable;
    }

    /* renamed from: l */
    public void m2039l(int id) {
        this.f4017b = id;
    }

    /* renamed from: m */
    public boolean m2040m(int action) {
        int i = this.f4018c;
        return i == 1 ? action == 0 : i == 2 ? action == 1 : i == 3 && action == 0;
    }

    /* renamed from: n */
    public final void m2041n(MotionScene.Transition transition, View view) {
        int i = this.f4024i;
        if (i != -1) {
            transition.setDuration(i);
        }
        transition.setPathMotionArc(this.f4020e);
        transition.setInterpolatorInfo(this.f4028m, this.f4029n, this.f4030o);
        int id = view.getId();
        KeyFrames keyFrames = this.f4022g;
        if (keyFrames != null) {
            ArrayList<Key> keyFramesForView = keyFrames.getKeyFramesForView(-1);
            KeyFrames keyFrames2 = new KeyFrames();
            Iterator<Key> it2 = keyFramesForView.iterator();
            while (it2.hasNext()) {
                keyFrames2.addKey(it2.next().mo72118clone().setViewId(id));
            }
            transition.addKeyFrame(keyFrames2);
        }
    }

    public void setSharedValue(int sharedValue) {
        this.f4036u = sharedValue;
    }

    public void setSharedValueCurrent(int sharedValueCurrent) {
        this.f4038w = sharedValueCurrent;
    }

    public void setSharedValueID(int sharedValueID) {
        this.f4037v = sharedValueID;
    }

    public void setStateTransition(int stateTransition) {
        this.f4018c = stateTransition;
    }

    public String toString() {
        return "ViewTransition(" + Debug.getName(this.f4031p, this.f4017b) + MotionUtils.f31762d;
    }
}
