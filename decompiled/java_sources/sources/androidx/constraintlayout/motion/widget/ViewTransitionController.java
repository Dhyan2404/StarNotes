package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class ViewTransitionController {

    /* renamed from: a */
    public final MotionLayout f4055a;

    /* renamed from: c */
    public HashSet<View> f4057c;

    /* renamed from: e */
    public ArrayList<ViewTransition.C0482b> f4059e;

    /* renamed from: b */
    public ArrayList<ViewTransition> f4056b = new ArrayList<>();

    /* renamed from: d */
    public String f4058d = "ViewTransitionController";

    /* renamed from: f */
    public ArrayList<ViewTransition.C0482b> f4060f = new ArrayList<>();

    /* renamed from: androidx.constraintlayout.motion.widget.ViewTransitionController$a */
    /* loaded from: classes3.dex */
    public class C0483a implements SharedValues.SharedValuesListener {

        /* renamed from: e */
        public final /* synthetic */ ViewTransition f4061e;

        /* renamed from: f */
        public final /* synthetic */ int f4062f;

        /* renamed from: g */
        public final /* synthetic */ boolean f4063g;

        /* renamed from: h */
        public final /* synthetic */ int f4064h;

        public C0483a(final ViewTransition val$viewTransition, final int val$listen_for_id, final boolean val$isSet, final int val$listen_for_value) {
            this.f4061e = val$viewTransition;
            this.f4062f = val$listen_for_id;
            this.f4063g = val$isSet;
            this.f4064h = val$listen_for_value;
        }

        @Override // androidx.constraintlayout.widget.SharedValues.SharedValuesListener
        public void onNewValue(int id, int value, int oldValue) {
            int sharedValueCurrent = this.f4061e.getSharedValueCurrent();
            this.f4061e.setSharedValueCurrent(value);
            if (this.f4062f != id || sharedValueCurrent == value) {
                return;
            }
            if (this.f4063g) {
                if (this.f4064h == value) {
                    int childCount = ViewTransitionController.this.f4055a.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = ViewTransitionController.this.f4055a.getChildAt(i);
                        if (this.f4061e.m2036i(childAt)) {
                            int currentState = ViewTransitionController.this.f4055a.getCurrentState();
                            ConstraintSet constraintSet = ViewTransitionController.this.f4055a.getConstraintSet(currentState);
                            ViewTransition viewTransition = this.f4061e;
                            ViewTransitionController viewTransitionController = ViewTransitionController.this;
                            viewTransition.m2031c(viewTransitionController, viewTransitionController.f4055a, currentState, constraintSet, childAt);
                        }
                    }
                    return;
                }
                return;
            }
            if (this.f4064h != value) {
                int childCount2 = ViewTransitionController.this.f4055a.getChildCount();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt2 = ViewTransitionController.this.f4055a.getChildAt(i2);
                    if (this.f4061e.m2036i(childAt2)) {
                        int currentState2 = ViewTransitionController.this.f4055a.getCurrentState();
                        ConstraintSet constraintSet2 = ViewTransitionController.this.f4055a.getConstraintSet(currentState2);
                        ViewTransition viewTransition2 = this.f4061e;
                        ViewTransitionController viewTransitionController2 = ViewTransitionController.this;
                        viewTransition2.m2031c(viewTransitionController2, viewTransitionController2.f4055a, currentState2, constraintSet2, childAt2);
                    }
                }
            }
        }
    }

    public ViewTransitionController(MotionLayout layout) {
        this.f4055a = layout;
    }

    public void add(ViewTransition viewTransition) {
        this.f4056b.add(viewTransition);
        this.f4057c = null;
        if (viewTransition.getStateTransition() == 4) {
            m2054h(viewTransition, true);
        } else if (viewTransition.getStateTransition() == 5) {
            m2054h(viewTransition, false);
        }
    }

    /* renamed from: b */
    public void m2048b(ViewTransition.C0482b animation) {
        if (this.f4059e == null) {
            this.f4059e = new ArrayList<>();
        }
        this.f4059e.add(animation);
    }

    /* renamed from: c */
    public void m2049c() {
        ArrayList<ViewTransition.C0482b> arrayList = this.f4059e;
        if (arrayList == null) {
            return;
        }
        Iterator<ViewTransition.C0482b> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().m2042a();
        }
        this.f4059e.removeAll(this.f4060f);
        this.f4060f.clear();
        if (this.f4059e.isEmpty()) {
            this.f4059e = null;
        }
    }

    /* renamed from: d */
    public boolean m2050d(int viewTransitionId, MotionController motionController) {
        Iterator<ViewTransition> it2 = this.f4056b.iterator();
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.m2033e() == viewTransitionId) {
                next.f4022g.addAllFrames(motionController);
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public void m2051e(int id, boolean enable) {
        Iterator<ViewTransition> it2 = this.f4056b.iterator();
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.m2033e() == id) {
                next.m2038k(enable);
                return;
            }
        }
    }

    /* renamed from: f */
    public void m2052f() {
        this.f4055a.invalidate();
    }

    /* renamed from: g */
    public boolean m2053g(int id) {
        Iterator<ViewTransition> it2 = this.f4056b.iterator();
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.m2033e() == id) {
                return next.m2035g();
            }
        }
        return false;
    }

    /* renamed from: h */
    public final void m2054h(ViewTransition viewTransition, boolean isSet) {
        ConstraintLayout.getSharedValues().addListener(viewTransition.getSharedValueID(), new C0483a(viewTransition, viewTransition.getSharedValueID(), isSet, viewTransition.getSharedValue()));
    }

    /* renamed from: i */
    public void m2055i(int id) {
        ViewTransition viewTransition;
        Iterator<ViewTransition> it2 = this.f4056b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                viewTransition = null;
                break;
            } else {
                viewTransition = it2.next();
                if (viewTransition.m2033e() == id) {
                    break;
                }
            }
        }
        if (viewTransition != null) {
            this.f4057c = null;
            this.f4056b.remove(viewTransition);
        }
    }

    /* renamed from: j */
    public void m2056j(ViewTransition.C0482b animation) {
        this.f4060f.add(animation);
    }

    /* renamed from: k */
    public void m2057k(MotionEvent event) {
        ViewTransition viewTransition;
        int currentState = this.f4055a.getCurrentState();
        if (currentState == -1) {
            return;
        }
        if (this.f4057c == null) {
            this.f4057c = new HashSet<>();
            Iterator<ViewTransition> it2 = this.f4056b.iterator();
            while (it2.hasNext()) {
                ViewTransition next = it2.next();
                int childCount = this.f4055a.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = this.f4055a.getChildAt(i);
                    if (next.m2036i(childAt)) {
                        childAt.getId();
                        this.f4057c.add(childAt);
                    }
                }
            }
        }
        float x = event.getX();
        float y = event.getY();
        Rect rect = new Rect();
        int action = event.getAction();
        ArrayList<ViewTransition.C0482b> arrayList = this.f4059e;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<ViewTransition.C0482b> it3 = this.f4059e.iterator();
            while (it3.hasNext()) {
                it3.next().m2045d(action, x, y);
            }
        }
        if (action == 0 || action == 1) {
            ConstraintSet constraintSet = this.f4055a.getConstraintSet(currentState);
            Iterator<ViewTransition> it4 = this.f4056b.iterator();
            while (it4.hasNext()) {
                ViewTransition next2 = it4.next();
                if (next2.m2040m(action)) {
                    Iterator<View> it5 = this.f4057c.iterator();
                    while (it5.hasNext()) {
                        View next3 = it5.next();
                        if (next2.m2036i(next3)) {
                            next3.getHitRect(rect);
                            if (rect.contains((int) x, (int) y)) {
                                viewTransition = next2;
                                next2.m2031c(this, this.f4055a, currentState, constraintSet, next3);
                            } else {
                                viewTransition = next2;
                            }
                            next2 = viewTransition;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: l */
    public void m2058l(int id, View... views) {
        ArrayList arrayList = new ArrayList();
        Iterator<ViewTransition> it2 = this.f4056b.iterator();
        ViewTransition viewTransition = null;
        while (it2.hasNext()) {
            ViewTransition next = it2.next();
            if (next.m2033e() == id) {
                for (View view : views) {
                    if (next.m2032d(view)) {
                        arrayList.add(view);
                    }
                }
                if (!arrayList.isEmpty()) {
                    m2059m(next, (View[]) arrayList.toArray(new View[0]));
                    arrayList.clear();
                }
                viewTransition = next;
            }
        }
        if (viewTransition == null) {
            Log.e(this.f4058d, " Could not find ViewTransition");
        }
    }

    /* renamed from: m */
    public final void m2059m(ViewTransition vt, View... view) {
        int currentState = this.f4055a.getCurrentState();
        if (vt.f4021f == 2) {
            vt.m2031c(this, this.f4055a, currentState, null, view);
            return;
        }
        if (currentState != -1) {
            ConstraintSet constraintSet = this.f4055a.getConstraintSet(currentState);
            if (constraintSet == null) {
                return;
            }
            vt.m2031c(this, this.f4055a, currentState, constraintSet, view);
            return;
        }
        Log.w(this.f4058d, "No support for ViewTransition within transition yet. Currently: " + this.f4055a.toString());
    }
}
