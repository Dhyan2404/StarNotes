package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.helper.widget.Carousel;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class Carousel extends MotionHelper {

    /* renamed from: Q */
    public static final boolean f3434Q = false;
    public static final int TOUCH_UP_CARRY_ON = 2;
    public static final int TOUCH_UP_IMMEDIATE_STOP = 1;

    /* renamed from: k0 */
    public static final String f3435k0 = "Carousel";

    /* renamed from: J */
    public int f3436J;

    /* renamed from: O */
    public Runnable f3437O;

    /* renamed from: i */
    public Adapter f3438i;

    /* renamed from: j */
    public final ArrayList<View> f3439j;

    /* renamed from: k */
    public int f3440k;

    /* renamed from: l */
    public int f3441l;

    /* renamed from: m */
    public MotionLayout f3442m;

    /* renamed from: n */
    public int f3443n;

    /* renamed from: o */
    public boolean f3444o;

    /* renamed from: p */
    public int f3445p;

    /* renamed from: q */
    public int f3446q;

    /* renamed from: r */
    public int f3447r;

    /* renamed from: s */
    public int f3448s;

    /* renamed from: t */
    public float f3449t;

    /* renamed from: u */
    public int f3450u;

    /* renamed from: v */
    public int f3451v;

    /* renamed from: w */
    public int f3452w;

    /* renamed from: x */
    public float f3453x;

    /* renamed from: y */
    public int f3454y;

    /* renamed from: z */
    public int f3455z;

    /* loaded from: classes3.dex */
    public interface Adapter {
        int count();

        void onNewItem(int index);

        void populate(View view, int index);
    }

    /* renamed from: androidx.constraintlayout.helper.widget.Carousel$a */
    /* loaded from: classes3.dex */
    public class RunnableC0426a implements Runnable {

        /* renamed from: androidx.constraintlayout.helper.widget.Carousel$a$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ float f3457e;

            public a(final float val$v) {
                this.f3457e = val$v;
            }

            @Override // java.lang.Runnable
            public void run() {
                Carousel.this.f3442m.touchAnimateTo(5, 1.0f, this.f3457e);
            }
        }

        public RunnableC0426a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Carousel.this.f3442m.setProgress(0.0f);
            Carousel.this.m1693t();
            Carousel.this.f3438i.onNewItem(Carousel.this.f3441l);
            float velocity = Carousel.this.f3442m.getVelocity();
            if (Carousel.this.f3452w != 2 || velocity <= Carousel.this.f3453x || Carousel.this.f3441l >= Carousel.this.f3438i.count() - 1) {
                return;
            }
            float f = velocity * Carousel.this.f3449t;
            if (Carousel.this.f3441l != 0 || Carousel.this.f3440k <= Carousel.this.f3441l) {
                if (Carousel.this.f3441l != Carousel.this.f3438i.count() - 1 || Carousel.this.f3440k >= Carousel.this.f3441l) {
                    Carousel.this.f3442m.post(new a(f));
                }
            }
        }
    }

    public Carousel(Context context) {
        super(context);
        this.f3438i = null;
        this.f3439j = new ArrayList<>();
        this.f3440k = 0;
        this.f3441l = 0;
        this.f3443n = -1;
        this.f3444o = false;
        this.f3445p = -1;
        this.f3446q = -1;
        this.f3447r = -1;
        this.f3448s = -1;
        this.f3449t = 0.9f;
        this.f3450u = 0;
        this.f3451v = 4;
        this.f3452w = 1;
        this.f3453x = 2.0f;
        this.f3454y = -1;
        this.f3455z = 200;
        this.f3436J = -1;
        this.f3437O = new RunnableC0426a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public /* synthetic */ void m1689s() {
        this.f3442m.setTransitionDuration(this.f3455z);
        if (this.f3454y < this.f3441l) {
            this.f3442m.transitionToState(this.f3447r, this.f3455z);
        } else {
            this.f3442m.transitionToState(this.f3448s, this.f3455z);
        }
    }

    public int getCount() {
        Adapter adapter = this.f3438i;
        if (adapter != null) {
            return adapter.count();
        }
        return 0;
    }

    public int getCurrentIndex() {
        return this.f3441l;
    }

    public void jumpToIndex(int index) {
        this.f3441l = Math.max(0, Math.min(getCount() - 1, index));
        refresh();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @RequiresApi(api = 17)
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getParent() instanceof MotionLayout) {
            MotionLayout motionLayout = (MotionLayout) getParent();
            for (int i = 0; i < this.mCount; i++) {
                int i2 = this.mIds[i];
                View viewById = motionLayout.getViewById(i2);
                if (this.f3443n == i2) {
                    this.f3450u = i;
                }
                this.f3439j.add(viewById);
            }
            this.f3442m = motionLayout;
            if (this.f3452w == 2) {
                MotionScene.Transition transition = motionLayout.getTransition(this.f3446q);
                if (transition != null) {
                    transition.setOnTouchUp(5);
                }
                MotionScene.Transition transition2 = this.f3442m.getTransition(this.f3445p);
                if (transition2 != null) {
                    transition2.setOnTouchUp(5);
                }
            }
            m1693t();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress) {
        this.f3436J = startId;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    public void onTransitionCompleted(MotionLayout motionLayout, int currentId) {
        int i = this.f3441l;
        this.f3440k = i;
        if (currentId == this.f3448s) {
            this.f3441l = i + 1;
        } else if (currentId == this.f3447r) {
            this.f3441l = i - 1;
        }
        if (this.f3444o) {
            if (this.f3441l >= this.f3438i.count()) {
                this.f3441l = 0;
            }
            if (this.f3441l < 0) {
                this.f3441l = this.f3438i.count() - 1;
            }
        } else {
            if (this.f3441l >= this.f3438i.count()) {
                this.f3441l = this.f3438i.count() - 1;
            }
            if (this.f3441l < 0) {
                this.f3441l = 0;
            }
        }
        if (this.f3440k != this.f3441l) {
            this.f3442m.post(this.f3437O);
        }
    }

    /* renamed from: p */
    public final void m1690p(boolean enable) {
        Iterator<MotionScene.Transition> it2 = this.f3442m.getDefinedTransitions().iterator();
        while (it2.hasNext()) {
            it2.next().setEnabled(enable);
        }
    }

    /* renamed from: q */
    public final boolean m1691q(int transitionID, boolean enable) {
        MotionLayout motionLayout;
        MotionScene.Transition transition;
        if (transitionID == -1 || (motionLayout = this.f3442m) == null || (transition = motionLayout.getTransition(transitionID)) == null || enable == transition.isEnabled()) {
            return false;
        }
        transition.setEnabled(enable);
        return true;
    }

    /* renamed from: r */
    public final void m1692r(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.Carousel);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.Carousel_carousel_firstView) {
                    this.f3443n = obtainStyledAttributes.getResourceId(index, this.f3443n);
                } else if (index == C0503R.styleable.Carousel_carousel_backwardTransition) {
                    this.f3445p = obtainStyledAttributes.getResourceId(index, this.f3445p);
                } else if (index == C0503R.styleable.Carousel_carousel_forwardTransition) {
                    this.f3446q = obtainStyledAttributes.getResourceId(index, this.f3446q);
                } else if (index == C0503R.styleable.Carousel_carousel_emptyViewsBehavior) {
                    this.f3451v = obtainStyledAttributes.getInt(index, this.f3451v);
                } else if (index == C0503R.styleable.Carousel_carousel_previousState) {
                    this.f3447r = obtainStyledAttributes.getResourceId(index, this.f3447r);
                } else if (index == C0503R.styleable.Carousel_carousel_nextState) {
                    this.f3448s = obtainStyledAttributes.getResourceId(index, this.f3448s);
                } else if (index == C0503R.styleable.Carousel_carousel_touchUp_dampeningFactor) {
                    this.f3449t = obtainStyledAttributes.getFloat(index, this.f3449t);
                } else if (index == C0503R.styleable.Carousel_carousel_touchUpMode) {
                    this.f3452w = obtainStyledAttributes.getInt(index, this.f3452w);
                } else if (index == C0503R.styleable.Carousel_carousel_touchUp_velocityThreshold) {
                    this.f3453x = obtainStyledAttributes.getFloat(index, this.f3453x);
                } else if (index == C0503R.styleable.Carousel_carousel_infinite) {
                    this.f3444o = obtainStyledAttributes.getBoolean(index, this.f3444o);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void refresh() {
        int size = this.f3439j.size();
        for (int i = 0; i < size; i++) {
            View view = this.f3439j.get(i);
            if (this.f3438i.count() == 0) {
                m1695v(view, this.f3451v);
            } else {
                m1695v(view, 0);
            }
        }
        this.f3442m.rebuildScene();
        m1693t();
    }

    public void setAdapter(Adapter adapter) {
        this.f3438i = adapter;
    }

    /* renamed from: t */
    public final void m1693t() {
        Adapter adapter = this.f3438i;
        if (adapter == null || this.f3442m == null || adapter.count() == 0) {
            return;
        }
        int size = this.f3439j.size();
        for (int i = 0; i < size; i++) {
            View view = this.f3439j.get(i);
            int i2 = (this.f3441l + i) - this.f3450u;
            if (this.f3444o) {
                if (i2 < 0) {
                    int i3 = this.f3451v;
                    if (i3 != 4) {
                        m1695v(view, i3);
                    } else {
                        m1695v(view, 0);
                    }
                    if (i2 % this.f3438i.count() == 0) {
                        this.f3438i.populate(view, 0);
                    } else {
                        Adapter adapter2 = this.f3438i;
                        adapter2.populate(view, adapter2.count() + (i2 % this.f3438i.count()));
                    }
                } else if (i2 >= this.f3438i.count()) {
                    if (i2 == this.f3438i.count()) {
                        i2 = 0;
                    } else if (i2 > this.f3438i.count()) {
                        i2 %= this.f3438i.count();
                    }
                    int i4 = this.f3451v;
                    if (i4 != 4) {
                        m1695v(view, i4);
                    } else {
                        m1695v(view, 0);
                    }
                    this.f3438i.populate(view, i2);
                } else {
                    m1695v(view, 0);
                    this.f3438i.populate(view, i2);
                }
            } else if (i2 < 0) {
                m1695v(view, this.f3451v);
            } else if (i2 >= this.f3438i.count()) {
                m1695v(view, this.f3451v);
            } else {
                m1695v(view, 0);
                this.f3438i.populate(view, i2);
            }
        }
        int i5 = this.f3454y;
        if (i5 != -1 && i5 != this.f3441l) {
            this.f3442m.post(new Runnable() { // from class: com.sunia.HTREnginev2.snd
                @Override // java.lang.Runnable
                public final void run() {
                    Carousel.this.m1689s();
                }
            });
        } else if (i5 == this.f3441l) {
            this.f3454y = -1;
        }
        if (this.f3445p == -1 || this.f3446q == -1) {
            Log.w(f3435k0, "No backward or forward transitions defined for Carousel!");
            return;
        }
        if (this.f3444o) {
            return;
        }
        int count = this.f3438i.count();
        if (this.f3441l == 0) {
            m1691q(this.f3445p, false);
        } else {
            m1691q(this.f3445p, true);
            this.f3442m.setTransition(this.f3445p);
        }
        if (this.f3441l == count - 1) {
            m1691q(this.f3446q, false);
        } else {
            m1691q(this.f3446q, true);
            this.f3442m.setTransition(this.f3446q);
        }
    }

    public void transitionToIndex(int index, int delay) {
        this.f3454y = Math.max(0, Math.min(getCount() - 1, index));
        int max = Math.max(0, delay);
        this.f3455z = max;
        this.f3442m.setTransitionDuration(max);
        if (index < this.f3441l) {
            this.f3442m.transitionToState(this.f3447r, this.f3455z);
        } else {
            this.f3442m.transitionToState(this.f3448s, this.f3455z);
        }
    }

    /* renamed from: u */
    public final boolean m1694u(int constraintSetId, View view, int visibility) {
        ConstraintSet.Constraint constraint;
        ConstraintSet constraintSet = this.f3442m.getConstraintSet(constraintSetId);
        if (constraintSet == null || (constraint = constraintSet.getConstraint(view.getId())) == null) {
            return false;
        }
        constraint.propertySet.mVisibilityMode = 1;
        view.setVisibility(visibility);
        return true;
    }

    /* renamed from: v */
    public final boolean m1695v(View view, int visibility) {
        MotionLayout motionLayout = this.f3442m;
        if (motionLayout == null) {
            return false;
        }
        boolean z = false;
        for (int i : motionLayout.getConstraintSetIds()) {
            z |= m1694u(i, view, visibility);
        }
        return z;
    }

    public Carousel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3438i = null;
        this.f3439j = new ArrayList<>();
        this.f3440k = 0;
        this.f3441l = 0;
        this.f3443n = -1;
        this.f3444o = false;
        this.f3445p = -1;
        this.f3446q = -1;
        this.f3447r = -1;
        this.f3448s = -1;
        this.f3449t = 0.9f;
        this.f3450u = 0;
        this.f3451v = 4;
        this.f3452w = 1;
        this.f3453x = 2.0f;
        this.f3454y = -1;
        this.f3455z = 200;
        this.f3436J = -1;
        this.f3437O = new RunnableC0426a();
        m1692r(context, attrs);
    }

    public Carousel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3438i = null;
        this.f3439j = new ArrayList<>();
        this.f3440k = 0;
        this.f3441l = 0;
        this.f3443n = -1;
        this.f3444o = false;
        this.f3445p = -1;
        this.f3446q = -1;
        this.f3447r = -1;
        this.f3448s = -1;
        this.f3449t = 0.9f;
        this.f3450u = 0;
        this.f3451v = 4;
        this.f3452w = 1;
        this.f3453x = 2.0f;
        this.f3454y = -1;
        this.f3455z = 200;
        this.f3436J = -1;
        this.f3437O = new RunnableC0426a();
        m1692r(context, attrs);
    }
}
