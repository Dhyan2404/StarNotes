package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
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
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.StateSet;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.text.AlphabetConverter;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class MotionScene {

    /* renamed from: A */
    public static final int f3912A = -1;

    /* renamed from: B */
    public static final int f3913B = -2;

    /* renamed from: C */
    public static final String f3914C = "MotionScene";

    /* renamed from: D */
    public static final String f3915D = "Transition";

    /* renamed from: E */
    public static final String f3916E = "OnSwipe";

    /* renamed from: F */
    public static final String f3917F = "OnClick";

    /* renamed from: G */
    public static final String f3918G = "StateSet";

    /* renamed from: H */
    public static final String f3919H = "Include";

    /* renamed from: I */
    public static final String f3920I = "include";

    /* renamed from: J */
    public static final String f3921J = "KeyFrameSet";

    /* renamed from: K */
    public static final String f3922K = "ConstraintSet";

    /* renamed from: L */
    public static final String f3923L = "ViewTransition";
    public static final int LAYOUT_CALL_MEASURE = 2;
    public static final int LAYOUT_HONOR_REQUEST = 1;
    public static final int LAYOUT_IGNORE_REQUEST = 0;

    /* renamed from: M */
    public static final int f3924M = 0;

    /* renamed from: N */
    public static final int f3925N = 1;

    /* renamed from: O */
    public static final int f3926O = 2;

    /* renamed from: P */
    public static final int f3927P = 3;

    /* renamed from: Q */
    public static final int f3928Q = 4;

    /* renamed from: R */
    public static final int f3929R = 5;

    /* renamed from: S */
    public static final int f3930S = 6;
    public static final int UNSET = -1;

    /* renamed from: v */
    public static final String f3931v = "MotionScene";

    /* renamed from: w */
    public static final boolean f3932w = false;

    /* renamed from: x */
    public static final int f3933x = 8;

    /* renamed from: y */
    public static final int f3934y = 0;

    /* renamed from: z */
    public static final int f3935z = 1;

    /* renamed from: a */
    public final MotionLayout f3936a;

    /* renamed from: n */
    public MotionEvent f3949n;

    /* renamed from: q */
    public MotionLayout.MotionTracker f3952q;

    /* renamed from: r */
    public boolean f3953r;

    /* renamed from: s */
    public final ViewTransitionController f3954s;

    /* renamed from: t */
    public float f3955t;

    /* renamed from: u */
    public float f3956u;

    /* renamed from: b */
    public StateSet f3937b = null;

    /* renamed from: c */
    public Transition f3938c = null;

    /* renamed from: d */
    public boolean f3939d = false;

    /* renamed from: e */
    public ArrayList<Transition> f3940e = new ArrayList<>();

    /* renamed from: f */
    public Transition f3941f = null;

    /* renamed from: g */
    public ArrayList<Transition> f3942g = new ArrayList<>();

    /* renamed from: h */
    public SparseArray<ConstraintSet> f3943h = new SparseArray<>();

    /* renamed from: i */
    public HashMap<String, Integer> f3944i = new HashMap<>();

    /* renamed from: j */
    public SparseIntArray f3945j = new SparseIntArray();

    /* renamed from: k */
    public boolean f3946k = false;

    /* renamed from: l */
    public int f3947l = 400;

    /* renamed from: m */
    public int f3948m = 0;

    /* renamed from: o */
    public boolean f3950o = false;

    /* renamed from: p */
    public boolean f3951p = false;

    /* renamed from: androidx.constraintlayout.motion.widget.MotionScene$a */
    /* loaded from: classes3.dex */
    public class InterpolatorC0480a implements Interpolator {

        /* renamed from: a */
        public final /* synthetic */ Easing f3981a;

        public InterpolatorC0480a(final MotionScene this$0, final Easing val$easing) {
            this.f3981a = val$easing;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float v) {
            return (float) this.f3981a.get(v);
        }
    }

    public MotionScene(MotionLayout layout) {
        this.f3936a = layout;
        this.f3954s = new ViewTransitionController(layout);
    }

    /* renamed from: n */
    public static String m1968n(Context context, int resourceId, XmlPullParser pullParser) {
        return ".(" + Debug.getName(context, resourceId) + ".xml:" + pullParser.getLineNumber() + ") \"" + pullParser.getName() + "\"";
    }

    public static String stripID(String id) {
        if (id == null) {
            return "";
        }
        int indexOf = id.indexOf(47);
        return indexOf < 0 ? id : id.substring(indexOf + 1);
    }

    /* renamed from: A */
    public final boolean m1969A(int key) {
        int i = this.f3945j.get(key);
        int size = this.f3945j.size();
        while (i > 0) {
            if (i == key) {
                return true;
            }
            int i2 = size - 1;
            if (size < 0) {
                return true;
            }
            i = this.f3945j.get(i);
            size = i2;
        }
        return false;
    }

    /* renamed from: B */
    public boolean m1970B(View view, int position) {
        Transition transition = this.f3938c;
        if (transition == null) {
            return false;
        }
        Iterator it2 = transition.f3970k.iterator();
        while (it2.hasNext()) {
            Iterator<Key> it3 = ((KeyFrames) it2.next()).getKeyFramesForView(view.getId()).iterator();
            while (it3.hasNext()) {
                if (it3.next().f3529a == position) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: C */
    public final boolean m1971C() {
        return this.f3952q != null;
    }

    /* renamed from: D */
    public final void m1972D(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            int eventType = xml.getEventType();
            Transition transition = null;
            while (true) {
                char c = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    if (this.f3946k) {
                        System.out.println("parsing = " + name);
                    }
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c = 5;
                                break;
                            }
                            break;
                        case -1239391468:
                            if (name.equals("KeyFrameSet")) {
                                c = '\b';
                                break;
                            }
                            break;
                        case -687739768:
                            if (name.equals(f3919H)) {
                                c = 7;
                                break;
                            }
                            break;
                        case 61998586:
                            if (name.equals("ViewTransition")) {
                                c = '\t';
                                break;
                            }
                            break;
                        case 269306229:
                            if (name.equals("Transition")) {
                                break;
                            }
                            break;
                        case 312750793:
                            if (name.equals(f3917F)) {
                                c = 3;
                                break;
                            }
                            break;
                        case 327855227:
                            if (name.equals(f3916E)) {
                                c = 2;
                                break;
                            }
                            break;
                        case 793277014:
                            if (name.equals("MotionScene")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals(f3918G)) {
                                c = 4;
                                break;
                            }
                            break;
                        case 1942574248:
                            if (name.equals("include")) {
                                c = 6;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    switch (c) {
                        case 0:
                            m1976H(context, xml);
                            break;
                        case 1:
                            ArrayList<Transition> arrayList = this.f3940e;
                            transition = new Transition(this, context, xml);
                            arrayList.add(transition);
                            if (this.f3938c == null && !transition.f3961b) {
                                this.f3938c = transition;
                                if (transition.f3971l != null) {
                                    this.f3938c.f3971l.m2063D(this.f3953r);
                                }
                            }
                            if (!transition.f3961b) {
                                break;
                            } else {
                                if (transition.f3962c == -1) {
                                    this.f3941f = transition;
                                } else {
                                    this.f3942g.add(transition);
                                }
                                this.f3940e.remove(transition);
                                break;
                            }
                        case 2:
                            if (transition == null) {
                                Log.v("MotionScene", " OnSwipe (" + context.getResources().getResourceEntryName(resourceId) + ".xml:" + xml.getLineNumber() + MotionUtils.f31762d);
                            }
                            if (transition == null) {
                                break;
                            } else {
                                transition.f3971l = new C0484a(context, this.f3936a, xml);
                                break;
                            }
                        case 3:
                            if (transition == null) {
                                break;
                            } else {
                                transition.addOnClick(context, xml);
                                break;
                            }
                        case 4:
                            this.f3937b = new StateSet(context, xml);
                            break;
                        case 5:
                            m1973E(context, xml);
                            break;
                        case 6:
                        case 7:
                            m1975G(context, xml);
                            break;
                        case '\b':
                            KeyFrames keyFrames = new KeyFrames(context, xml);
                            if (transition == null) {
                                break;
                            } else {
                                transition.f3970k.add(keyFrames);
                                break;
                            }
                        case '\t':
                            this.f3954s.add(new ViewTransition(context, xml));
                            break;
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: E */
    public final int m1973E(Context context, XmlPullParser parser) {
        boolean z;
        boolean z2;
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.setForceId(false);
        int attributeCount = parser.getAttributeCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeName = parser.getAttributeName(i3);
            String attributeValue = parser.getAttributeValue(i3);
            if (this.f3946k) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -1496482599:
                    if (attributeName.equals("deriveConstraintsFrom")) {
                        z = false;
                        break;
                    }
                    break;
                case -1153153640:
                    if (attributeName.equals("constraintRotate")) {
                        z = true;
                        break;
                    }
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        z = 2;
                        break;
                    }
                    break;
            }
            z = -1;
            switch (z) {
                case false:
                    i2 = m1990k(context, attributeValue);
                    break;
                case true:
                    try {
                        constraintSet.mRotate = Integer.parseInt(attributeValue);
                        break;
                    } catch (NumberFormatException unused) {
                        attributeValue.hashCode();
                        switch (attributeValue.hashCode()) {
                            case -768416914:
                                if (attributeValue.equals("x_left")) {
                                    z2 = false;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (attributeValue.equals("left")) {
                                    z2 = true;
                                    break;
                                }
                                break;
                            case 3387192:
                                if (attributeValue.equals("none")) {
                                    z2 = 2;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (attributeValue.equals(gon.f71288n0)) {
                                    z2 = 3;
                                    break;
                                }
                                break;
                            case 1954540437:
                                if (attributeValue.equals("x_right")) {
                                    z2 = 4;
                                    break;
                                }
                                break;
                        }
                        z2 = -1;
                        switch (z2) {
                            case false:
                                constraintSet.mRotate = 4;
                                break;
                            case true:
                                constraintSet.mRotate = 2;
                                break;
                            case true:
                                constraintSet.mRotate = 0;
                                break;
                            case true:
                                constraintSet.mRotate = 1;
                                break;
                            case true:
                                constraintSet.mRotate = 3;
                                break;
                        }
                    }
                    break;
                case true:
                    i = m1990k(context, attributeValue);
                    this.f3944i.put(stripID(attributeValue), Integer.valueOf(i));
                    constraintSet.mIdString = Debug.getName(context, i);
                    break;
            }
        }
        if (i != -1) {
            if (this.f3936a.f3821S0 != 0) {
                constraintSet.setValidateOnParse(true);
            }
            constraintSet.load(context, parser);
            if (i2 != -1) {
                this.f3945j.put(i, i2);
            }
            this.f3943h.put(i, constraintSet);
        }
        return i;
    }

    /* renamed from: F */
    public final int m1974F(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && "ConstraintSet".equals(name)) {
                    return m1973E(context, xml);
                }
            }
            return -1;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    /* renamed from: G */
    public final void m1975G(Context context, XmlPullParser mainParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(mainParser), C0503R.styleable.include);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0503R.styleable.include_constraintSet) {
                m1974F(context, obtainStyledAttributes.getResourceId(index, -1));
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: H */
    public final void m1976H(Context context, XmlPullParser parser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0503R.styleable.MotionScene_defaultDuration) {
                int i2 = obtainStyledAttributes.getInt(index, this.f3947l);
                this.f3947l = i2;
                if (i2 < 8) {
                    this.f3947l = 8;
                }
            } else if (index == C0503R.styleable.MotionScene_layoutDuringTransition) {
                this.f3948m = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: I */
    public void m1977I(float dx, float dy) {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return;
        }
        this.f3938c.f3971l.m2090w(dx, dy);
    }

    /* renamed from: J */
    public void m1978J(float dx, float dy) {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return;
        }
        this.f3938c.f3971l.m2091x(dx, dy);
    }

    /* renamed from: K */
    public void m1979K(MotionEvent event, int currentState, MotionLayout motionLayout) {
        MotionLayout.MotionTracker motionTracker;
        MotionEvent motionEvent;
        RectF rectF = new RectF();
        if (this.f3952q == null) {
            this.f3952q = this.f3936a.obtainVelocityTracker();
        }
        this.f3952q.addMovement(event);
        if (currentState != -1) {
            int action = event.getAction();
            boolean z = false;
            if (action == 0) {
                this.f3955t = event.getRawX();
                this.f3956u = event.getRawY();
                this.f3949n = event;
                this.f3950o = false;
                if (this.f3938c.f3971l != null) {
                    RectF m2074g = this.f3938c.f3971l.m2074g(this.f3936a, rectF);
                    if (m2074g != null && !m2074g.contains(this.f3949n.getX(), this.f3949n.getY())) {
                        this.f3949n = null;
                        this.f3950o = true;
                        return;
                    }
                    RectF m2085r = this.f3938c.f3971l.m2085r(this.f3936a, rectF);
                    if (m2085r == null || m2085r.contains(this.f3949n.getX(), this.f3949n.getY())) {
                        this.f3951p = false;
                    } else {
                        this.f3951p = true;
                    }
                    this.f3938c.f3971l.m2060A(this.f3955t, this.f3956u);
                    return;
                }
                return;
            }
            if (action == 2 && !this.f3950o) {
                float rawY = event.getRawY() - this.f3956u;
                float rawX = event.getRawX() - this.f3955t;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent = this.f3949n) == null) {
                    return;
                }
                Transition bestTransitionFor = bestTransitionFor(currentState, rawX, rawY, motionEvent);
                if (bestTransitionFor != null) {
                    motionLayout.setTransition(bestTransitionFor);
                    RectF m2085r2 = this.f3938c.f3971l.m2085r(this.f3936a, rectF);
                    if (m2085r2 != null && !m2085r2.contains(this.f3949n.getX(), this.f3949n.getY())) {
                        z = true;
                    }
                    this.f3951p = z;
                    this.f3938c.f3971l.m2066G(this.f3955t, this.f3956u);
                }
            }
        }
        if (this.f3950o) {
            return;
        }
        Transition transition = this.f3938c;
        if (transition != null && transition.f3971l != null && !this.f3951p) {
            this.f3938c.f3971l.m2088u(event, this.f3952q, currentState, this);
        }
        this.f3955t = event.getRawX();
        this.f3956u = event.getRawY();
        if (event.getAction() != 1 || (motionTracker = this.f3952q) == null) {
            return;
        }
        motionTracker.recycle();
        this.f3952q = null;
        int i = motionLayout.f3785A0;
        if (i != -1) {
            m1985f(motionLayout, i);
        }
    }

    /* renamed from: L */
    public final void m1980L(int key, MotionLayout motionLayout) {
        ConstraintSet constraintSet = this.f3943h.get(key);
        constraintSet.derivedState = constraintSet.mIdString;
        int i = this.f3945j.get(key);
        if (i > 0) {
            m1980L(i, motionLayout);
            ConstraintSet constraintSet2 = this.f3943h.get(i);
            if (constraintSet2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + Debug.getName(this.f3936a.getContext(), i));
                return;
            }
            constraintSet.derivedState += "/" + constraintSet2.derivedState;
            constraintSet.readFallback(constraintSet2);
        } else {
            constraintSet.derivedState += "  layout";
            constraintSet.readFallback(motionLayout);
        }
        constraintSet.applyDeltaFrom(constraintSet);
    }

    /* renamed from: M */
    public void m1981M(MotionLayout motionLayout) {
        for (int i = 0; i < this.f3943h.size(); i++) {
            int keyAt = this.f3943h.keyAt(i);
            if (m1969A(keyAt)) {
                Log.e("MotionScene", "Cannot be derived from yourself");
                return;
            }
            m1980L(keyAt, motionLayout);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r2 != (-1)) goto L13;
     */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1982N(int r7, int r8) {
        /*
            r6 = this;
            androidx.constraintlayout.widget.StateSet r0 = r6.f3937b
            r1 = -1
            if (r0 == 0) goto L16
            int r0 = r0.stateGetConstraintID(r7, r1, r1)
            if (r0 == r1) goto Lc
            goto Ld
        Lc:
            r0 = r7
        Ld:
            androidx.constraintlayout.widget.StateSet r2 = r6.f3937b
            int r2 = r2.stateGetConstraintID(r8, r1, r1)
            if (r2 == r1) goto L17
            goto L18
        L16:
            r0 = r7
        L17:
            r2 = r8
        L18:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r3 = r6.f3938c
            if (r3 == 0) goto L2b
            int r3 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2005a(r3)
            if (r3 != r8) goto L2b
            androidx.constraintlayout.motion.widget.MotionScene$Transition r3 = r6.f3938c
            int r3 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2007c(r3)
            if (r3 != r7) goto L2b
            return
        L2b:
            java.util.ArrayList<androidx.constraintlayout.motion.widget.MotionScene$Transition> r3 = r6.f3940e
            java.util.Iterator r3 = r3.iterator()
        L31:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L6b
            java.lang.Object r4 = r3.next()
            androidx.constraintlayout.motion.widget.MotionScene$Transition r4 = (androidx.constraintlayout.motion.widget.MotionScene.Transition) r4
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2005a(r4)
            if (r5 != r2) goto L49
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2007c(r4)
            if (r5 == r0) goto L55
        L49:
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2005a(r4)
            if (r5 != r8) goto L31
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2007c(r4)
            if (r5 != r7) goto L31
        L55:
            r6.f3938c = r4
            if (r4 == 0) goto L6a
            androidx.constraintlayout.motion.widget.a r7 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2016l(r4)
            if (r7 == 0) goto L6a
            androidx.constraintlayout.motion.widget.MotionScene$Transition r7 = r6.f3938c
            androidx.constraintlayout.motion.widget.a r7 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2016l(r7)
            boolean r6 = r6.f3953r
            r7.m2063D(r6)
        L6a:
            return
        L6b:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r7 = r6.f3941f
            java.util.ArrayList<androidx.constraintlayout.motion.widget.MotionScene$Transition> r3 = r6.f3942g
            java.util.Iterator r3 = r3.iterator()
        L73:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L87
            java.lang.Object r4 = r3.next()
            androidx.constraintlayout.motion.widget.MotionScene$Transition r4 = (androidx.constraintlayout.motion.widget.MotionScene.Transition) r4
            int r5 = androidx.constraintlayout.motion.widget.MotionScene.Transition.m2005a(r4)
            if (r5 != r8) goto L73
            r7 = r4
            goto L73
        L87:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r8 = new androidx.constraintlayout.motion.widget.MotionScene$Transition
            r8.<init>(r6, r7)
            androidx.constraintlayout.motion.widget.MotionScene.Transition.m2008d(r8, r0)
            androidx.constraintlayout.motion.widget.MotionScene.Transition.m2006b(r8, r2)
            if (r0 == r1) goto L99
            java.util.ArrayList<androidx.constraintlayout.motion.widget.MotionScene$Transition> r7 = r6.f3940e
            r7.add(r8)
        L99:
            r6.f3938c = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.m1982N(int, int):void");
    }

    /* renamed from: O */
    public void m1983O() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return;
        }
        this.f3938c.f3971l.m2067H();
    }

    /* renamed from: P */
    public boolean m1984P() {
        Iterator<Transition> it2 = this.f3940e.iterator();
        while (it2.hasNext()) {
            if (it2.next().f3971l != null) {
                return true;
            }
        }
        Transition transition = this.f3938c;
        return (transition == null || transition.f3971l == null) ? false : true;
    }

    public void addOnClickListeners(MotionLayout motionLayout, int currentState) {
        Iterator<Transition> it2 = this.f3940e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3972m.size() > 0) {
                Iterator it3 = next.f3972m.iterator();
                while (it3.hasNext()) {
                    ((Transition.TransitionOnClick) it3.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        Iterator<Transition> it4 = this.f3942g.iterator();
        while (it4.hasNext()) {
            Transition next2 = it4.next();
            if (next2.f3972m.size() > 0) {
                Iterator it5 = next2.f3972m.iterator();
                while (it5.hasNext()) {
                    ((Transition.TransitionOnClick) it5.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        Iterator<Transition> it6 = this.f3940e.iterator();
        while (it6.hasNext()) {
            Transition next3 = it6.next();
            if (next3.f3972m.size() > 0) {
                Iterator it7 = next3.f3972m.iterator();
                while (it7.hasNext()) {
                    ((Transition.TransitionOnClick) it7.next()).addOnClickListeners(motionLayout, currentState, next3);
                }
            }
        }
        Iterator<Transition> it8 = this.f3942g.iterator();
        while (it8.hasNext()) {
            Transition next4 = it8.next();
            if (next4.f3972m.size() > 0) {
                Iterator it9 = next4.f3972m.iterator();
                while (it9.hasNext()) {
                    ((Transition.TransitionOnClick) it9.next()).addOnClickListeners(motionLayout, currentState, next4);
                }
            }
        }
    }

    public void addTransition(Transition transition) {
        int m1991l = m1991l(transition);
        if (m1991l == -1) {
            this.f3940e.add(transition);
        } else {
            this.f3940e.set(m1991l, transition);
        }
    }

    public boolean applyViewTransition(int viewTransitionId, MotionController motionController) {
        return this.f3954s.m2050d(viewTransitionId, motionController);
    }

    public Transition bestTransitionFor(int currentState, float dx, float dy, MotionEvent lastTouchDown) {
        if (currentState == -1) {
            return this.f3938c;
        }
        List<Transition> transitionsWithState = getTransitionsWithState(currentState);
        RectF rectF = new RectF();
        float f = 0.0f;
        Transition transition = null;
        for (Transition transition2 : transitionsWithState) {
            if (!transition2.f3974o && transition2.f3971l != null) {
                transition2.f3971l.m2063D(this.f3953r);
                RectF m2085r = transition2.f3971l.m2085r(this.f3936a, rectF);
                if (m2085r == null || lastTouchDown == null || m2085r.contains(lastTouchDown.getX(), lastTouchDown.getY())) {
                    RectF m2074g = transition2.f3971l.m2074g(this.f3936a, rectF);
                    if (m2074g == null || lastTouchDown == null || m2074g.contains(lastTouchDown.getX(), lastTouchDown.getY())) {
                        float m2068a = transition2.f3971l.m2068a(dx, dy);
                        if (transition2.f3971l.f4107l && lastTouchDown != null) {
                            m2068a = ((float) (Math.atan2(dy + r10, dx + r9) - Math.atan2(lastTouchDown.getX() - transition2.f3971l.f4104i, lastTouchDown.getY() - transition2.f3971l.f4105j))) * 10.0f;
                        }
                        float f2 = m2068a * (transition2.f3962c == currentState ? -1.0f : 1.1f);
                        if (f2 > f) {
                            transition = transition2;
                            f = f2;
                        }
                    }
                }
            }
        }
        return transition;
    }

    public void disableAutoTransition(boolean disable) {
        this.f3939d = disable;
    }

    public void enableViewTransition(int id, boolean enable) {
        this.f3954s.m2051e(id, enable);
    }

    /* renamed from: f */
    public boolean m1985f(MotionLayout motionLayout, int currentState) {
        Transition transition;
        if (m1971C() || this.f3939d) {
            return false;
        }
        Iterator<Transition> it2 = this.f3940e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3973n != 0 && ((transition = this.f3938c) != next || !transition.isTransitionFlag(2))) {
                if (currentState == next.f3963d && (next.f3973n == 4 || next.f3973n == 2)) {
                    MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState);
                    motionLayout.setTransition(next);
                    if (next.f3973n == 4) {
                        motionLayout.transitionToEnd();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.m1913T(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState);
                        motionLayout.m1923d0();
                    }
                    return true;
                }
                if (currentState == next.f3962c && (next.f3973n == 3 || next.f3973n == 1)) {
                    MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState2);
                    motionLayout.setTransition(next);
                    if (next.f3973n == 3) {
                        motionLayout.transitionToStart();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.m1913T(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState2);
                        motionLayout.m1923d0();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: g */
    public int m1986g() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0;
        }
        return this.f3938c.f3971l.m2072e();
    }

    public int gatPathMotionArc() {
        Transition transition = this.f3938c;
        if (transition != null) {
            return transition.f3975p;
        }
        return -1;
    }

    public ConstraintSet getConstraintSet(Context context, String id) {
        if (this.f3946k) {
            System.out.println("id " + id);
            System.out.println("size " + this.f3943h.size());
        }
        for (int i = 0; i < this.f3943h.size(); i++) {
            int keyAt = this.f3943h.keyAt(i);
            String resourceName = context.getResources().getResourceName(keyAt);
            if (this.f3946k) {
                System.out.println("Id for <" + i + "> is <" + resourceName + "> looking for <" + id + ">");
            }
            if (id.equals(resourceName)) {
                return this.f3943h.get(keyAt);
            }
        }
        return null;
    }

    public int[] getConstraintSetIds() {
        int size = this.f3943h.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = this.f3943h.keyAt(i);
        }
        return iArr;
    }

    public ArrayList<Transition> getDefinedTransitions() {
        return this.f3940e;
    }

    public int getDuration() {
        Transition transition = this.f3938c;
        return transition != null ? transition.f3967h : this.f3947l;
    }

    public Interpolator getInterpolator() {
        int i = this.f3938c.f3964e;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(this.f3936a.getContext(), this.f3938c.f3966g);
        }
        if (i == -1) {
            return new InterpolatorC0480a(this, Easing.getInterpolator(this.f3938c.f3965f));
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

    public void getKeyFrames(MotionController motionController) {
        Transition transition = this.f3938c;
        if (transition != null) {
            Iterator it2 = transition.f3970k.iterator();
            while (it2.hasNext()) {
                ((KeyFrames) it2.next()).addFrames(motionController);
            }
        } else {
            Transition transition2 = this.f3941f;
            if (transition2 != null) {
                Iterator it3 = transition2.f3970k.iterator();
                while (it3.hasNext()) {
                    ((KeyFrames) it3.next()).addFrames(motionController);
                }
            }
        }
    }

    public float getPathPercent(View view, int position) {
        return 0.0f;
    }

    public float getStaggered() {
        Transition transition = this.f3938c;
        if (transition != null) {
            return transition.f3968i;
        }
        return 0.0f;
    }

    public Transition getTransitionById(int id) {
        Iterator<Transition> it2 = this.f3940e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3960a == id) {
                return next;
            }
        }
        return null;
    }

    public List<Transition> getTransitionsWithState(int stateId) {
        int m1997s = m1997s(stateId);
        ArrayList arrayList = new ArrayList();
        Iterator<Transition> it2 = this.f3940e.iterator();
        while (it2.hasNext()) {
            Transition next = it2.next();
            if (next.f3963d == m1997s || next.f3962c == m1997s) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public ConstraintSet m1987h(int id) {
        return m1988i(id, -1, -1);
    }

    /* renamed from: i */
    public ConstraintSet m1988i(int id, int width, int height) {
        int stateGetConstraintID;
        if (this.f3946k) {
            System.out.println("id " + id);
            System.out.println("size " + this.f3943h.size());
        }
        StateSet stateSet = this.f3937b;
        if (stateSet != null && (stateGetConstraintID = stateSet.stateGetConstraintID(id, width, height)) != -1) {
            id = stateGetConstraintID;
        }
        if (this.f3943h.get(id) != null) {
            return this.f3943h.get(id);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + Debug.getName(this.f3936a.getContext(), id) + " In MotionScene");
        SparseArray<ConstraintSet> sparseArray = this.f3943h;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    public boolean isViewTransitionEnabled(int id) {
        return this.f3954s.m2053g(id);
    }

    /* renamed from: j */
    public int m1989j() {
        Transition transition = this.f3938c;
        if (transition == null) {
            return -1;
        }
        return transition.f3962c;
    }

    /* renamed from: k */
    public final int m1990k(Context context, String idString) {
        int i;
        if (idString.contains("/")) {
            i = context.getResources().getIdentifier(idString.substring(idString.indexOf(47) + 1), "id", context.getPackageName());
            if (this.f3946k) {
                System.out.println("id getMap res = " + i);
            }
        } else {
            i = -1;
        }
        if (i != -1) {
            return i;
        }
        if (idString.length() > 1) {
            return Integer.parseInt(idString.substring(1));
        }
        Log.e("MotionScene", "error in parsing id");
        return i;
    }

    /* renamed from: l */
    public final int m1991l(Transition transition) {
        int i = transition.f3960a;
        if (i == -1) {
            throw new IllegalArgumentException("The transition must have an id");
        }
        for (int i2 = 0; i2 < this.f3940e.size(); i2++) {
            if (this.f3940e.get(i2).f3960a == i) {
                return i2;
            }
        }
        return -1;
    }

    public int lookUpConstraintId(String id) {
        Integer num = this.f3944i.get(id);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String lookUpConstraintName(int id) {
        for (Map.Entry<String, Integer> entry : this.f3944i.entrySet()) {
            Integer value = entry.getValue();
            if (value != null && value.intValue() == id) {
                return entry.getKey();
            }
        }
        return null;
    }

    /* renamed from: m */
    public Key m1992m(Context context, int type, int target, int position) {
        Transition transition = this.f3938c;
        if (transition == null) {
            return null;
        }
        Iterator it2 = transition.f3970k.iterator();
        while (it2.hasNext()) {
            KeyFrames keyFrames = (KeyFrames) it2.next();
            for (Integer num : keyFrames.getKeys()) {
                if (target == num.intValue()) {
                    Iterator<Key> it3 = keyFrames.getKeyFramesForView(num.intValue()).iterator();
                    while (it3.hasNext()) {
                        Key next = it3.next();
                        if (next.f3529a == position && next.mType == type) {
                            return next;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: o */
    public float m1993o() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0.0f;
        }
        return this.f3938c.f3971l.m2076i();
    }

    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
    }

    /* renamed from: p */
    public float m1994p() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0.0f;
        }
        return this.f3938c.f3971l.m2077j();
    }

    /* renamed from: q */
    public boolean m1995q() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return false;
        }
        return this.f3938c.f3971l.m2078k();
    }

    /* renamed from: r */
    public float m1996r(float dx, float dy) {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0.0f;
        }
        return this.f3938c.f3971l.m2079l(dx, dy);
    }

    public void removeTransition(Transition transition) {
        int m1991l = m1991l(transition);
        if (m1991l != -1) {
            this.f3940e.remove(m1991l);
        }
    }

    /* renamed from: s */
    public final int m1997s(int stateId) {
        int stateGetConstraintID;
        StateSet stateSet = this.f3937b;
        return (stateSet == null || (stateGetConstraintID = stateSet.stateGetConstraintID(stateId, -1, -1)) == -1) ? stateId : stateGetConstraintID;
    }

    public void setConstraintSet(int id, ConstraintSet set) {
        this.f3943h.put(id, set);
    }

    public void setDuration(int duration) {
        Transition transition = this.f3938c;
        if (transition != null) {
            transition.setDuration(duration);
        } else {
            this.f3947l = duration;
        }
    }

    public void setKeyframe(View view, int position, String name, Object value) {
        Transition transition = this.f3938c;
        if (transition == null) {
            return;
        }
        Iterator it2 = transition.f3970k.iterator();
        while (it2.hasNext()) {
            Iterator<Key> it3 = ((KeyFrames) it2.next()).getKeyFramesForView(view.getId()).iterator();
            while (it3.hasNext()) {
                if (it3.next().f3529a == position) {
                    if (value != null) {
                        ((Float) value).floatValue();
                    }
                    name.equalsIgnoreCase("app:PerpendicularPath_percent");
                }
            }
        }
    }

    public void setRtl(boolean rtl) {
        this.f3953r = rtl;
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return;
        }
        this.f3938c.f3971l.m2063D(this.f3953r);
    }

    public void setTransition(Transition transition) {
        this.f3938c = transition;
        if (transition == null || transition.f3971l == null) {
            return;
        }
        this.f3938c.f3971l.m2063D(this.f3953r);
    }

    /* renamed from: t */
    public int m1998t() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0;
        }
        return this.f3938c.f3971l.m2080m();
    }

    /* renamed from: u */
    public float m1999u() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0.0f;
        }
        return this.f3938c.f3971l.m2081n();
    }

    /* renamed from: v */
    public float m2000v() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0.0f;
        }
        return this.f3938c.f3971l.m2082o();
    }

    public boolean validateLayout(MotionLayout layout) {
        return layout == this.f3936a && layout.f3853v0 == this;
    }

    public void viewTransition(int id, View... view) {
        this.f3954s.m2058l(id, view);
    }

    /* renamed from: w */
    public float m2001w() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0.0f;
        }
        return this.f3938c.f3971l.m2083p();
    }

    /* renamed from: x */
    public float m2002x() {
        Transition transition = this.f3938c;
        if (transition == null || transition.f3971l == null) {
            return 0.0f;
        }
        return this.f3938c.f3971l.m2084q();
    }

    /* renamed from: y */
    public int m2003y() {
        Transition transition = this.f3938c;
        if (transition == null) {
            return -1;
        }
        return transition.f3963d;
    }

    /* renamed from: z */
    public int m2004z(int stateId) {
        Iterator<Transition> it2 = this.f3940e.iterator();
        while (it2.hasNext()) {
            if (it2.next().f3963d == stateId) {
                return 0;
            }
        }
        return 1;
    }

    /* loaded from: classes3.dex */
    public static class Transition {
        public static final int AUTO_ANIMATE_TO_END = 4;
        public static final int AUTO_ANIMATE_TO_START = 3;
        public static final int AUTO_JUMP_TO_END = 2;
        public static final int AUTO_JUMP_TO_START = 1;
        public static final int AUTO_NONE = 0;
        public static final int INTERPOLATE_ANTICIPATE = 6;
        public static final int INTERPOLATE_BOUNCE = 4;
        public static final int INTERPOLATE_EASE_IN = 1;
        public static final int INTERPOLATE_EASE_IN_OUT = 0;
        public static final int INTERPOLATE_EASE_OUT = 2;
        public static final int INTERPOLATE_LINEAR = 3;
        public static final int INTERPOLATE_OVERSHOOT = 5;
        public static final int INTERPOLATE_REFERENCE_ID = -2;
        public static final int INTERPOLATE_SPLINE_STRING = -1;

        /* renamed from: s */
        public static final int f3957s = 1;

        /* renamed from: t */
        public static final int f3958t = 2;

        /* renamed from: u */
        public static final int f3959u = 4;

        /* renamed from: a */
        public int f3960a;

        /* renamed from: b */
        public boolean f3961b;

        /* renamed from: c */
        public int f3962c;

        /* renamed from: d */
        public int f3963d;

        /* renamed from: e */
        public int f3964e;

        /* renamed from: f */
        public String f3965f;

        /* renamed from: g */
        public int f3966g;

        /* renamed from: h */
        public int f3967h;

        /* renamed from: i */
        public float f3968i;

        /* renamed from: j */
        public final MotionScene f3969j;

        /* renamed from: k */
        public ArrayList<KeyFrames> f3970k;

        /* renamed from: l */
        public C0484a f3971l;

        /* renamed from: m */
        public ArrayList<TransitionOnClick> f3972m;

        /* renamed from: n */
        public int f3973n;

        /* renamed from: o */
        public boolean f3974o;

        /* renamed from: p */
        public int f3975p;

        /* renamed from: q */
        public int f3976q;

        /* renamed from: r */
        public int f3977r;

        public Transition(MotionScene motionScene, Transition global) {
            this.f3960a = -1;
            this.f3961b = false;
            this.f3962c = -1;
            this.f3963d = -1;
            this.f3964e = 0;
            this.f3965f = null;
            this.f3966g = -1;
            this.f3967h = 400;
            this.f3968i = 0.0f;
            this.f3970k = new ArrayList<>();
            this.f3971l = null;
            this.f3972m = new ArrayList<>();
            this.f3973n = 0;
            this.f3974o = false;
            this.f3975p = -1;
            this.f3976q = 0;
            this.f3977r = 0;
            this.f3969j = motionScene;
            this.f3967h = motionScene.f3947l;
            if (global != null) {
                this.f3975p = global.f3975p;
                this.f3964e = global.f3964e;
                this.f3965f = global.f3965f;
                this.f3966g = global.f3966g;
                this.f3967h = global.f3967h;
                this.f3970k = global.f3970k;
                this.f3968i = global.f3968i;
                this.f3976q = global.f3976q;
            }
        }

        public void addKeyFrame(KeyFrames keyFrames) {
            this.f3970k.add(keyFrames);
        }

        public void addOnClick(int id, int action) {
            Iterator<TransitionOnClick> it2 = this.f3972m.iterator();
            while (it2.hasNext()) {
                TransitionOnClick next = it2.next();
                if (next.f3979f == id) {
                    next.f3980g = action;
                    return;
                }
            }
            this.f3972m.add(new TransitionOnClick(this, id, action));
        }

        public String debugString(Context context) {
            String resourceEntryName = this.f3963d == -1 ? "null" : context.getResources().getResourceEntryName(this.f3963d);
            if (this.f3962c == -1) {
                return resourceEntryName + " -> null";
            }
            return resourceEntryName + AlphabetConverter.f109940d + context.getResources().getResourceEntryName(this.f3962c);
        }

        public int getAutoTransition() {
            return this.f3973n;
        }

        public int getDuration() {
            return this.f3967h;
        }

        public int getEndConstraintSetId() {
            return this.f3962c;
        }

        public int getId() {
            return this.f3960a;
        }

        public List<KeyFrames> getKeyFrameList() {
            return this.f3970k;
        }

        public int getLayoutDuringTransition() {
            return this.f3976q;
        }

        public List<TransitionOnClick> getOnClickList() {
            return this.f3972m;
        }

        public int getPathMotionArc() {
            return this.f3975p;
        }

        public float getStagger() {
            return this.f3968i;
        }

        public int getStartConstraintSetId() {
            return this.f3963d;
        }

        public C0484a getTouchResponse() {
            return this.f3971l;
        }

        public boolean isEnabled() {
            return !this.f3974o;
        }

        public boolean isTransitionFlag(int flag) {
            return (this.f3977r & flag) != 0;
        }

        public void removeOnClick(int id) {
            TransitionOnClick transitionOnClick;
            Iterator<TransitionOnClick> it2 = this.f3972m.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    transitionOnClick = null;
                    break;
                } else {
                    transitionOnClick = it2.next();
                    if (transitionOnClick.f3979f == id) {
                        break;
                    }
                }
            }
            if (transitionOnClick != null) {
                this.f3972m.remove(transitionOnClick);
            }
        }

        public void setAutoTransition(int type) {
            this.f3973n = type;
        }

        public void setDuration(int duration) {
            this.f3967h = Math.max(duration, 8);
        }

        public void setEnable(boolean enable) {
            setEnabled(enable);
        }

        public void setEnabled(boolean enable) {
            this.f3974o = !enable;
        }

        public void setInterpolatorInfo(int interpolator, String interpolatorString, int interpolatorID) {
            this.f3964e = interpolator;
            this.f3965f = interpolatorString;
            this.f3966g = interpolatorID;
        }

        public void setLayoutDuringTransition(int mode) {
            this.f3976q = mode;
        }

        public void setOnSwipe(OnSwipe onSwipe) {
            this.f3971l = onSwipe == null ? null : new C0484a(this.f3969j.f3936a, onSwipe);
        }

        public void setOnTouchUp(int touchUpMode) {
            C0484a touchResponse = getTouchResponse();
            if (touchResponse != null) {
                touchResponse.m2065F(touchUpMode);
            }
        }

        public void setPathMotionArc(int arcMode) {
            this.f3975p = arcMode;
        }

        public void setStagger(float stagger) {
            this.f3968i = stagger;
        }

        public void setTransitionFlag(int flag) {
            this.f3977r = flag;
        }

        /* renamed from: t */
        public final void m2024t(MotionScene motionScene, Context context, TypedArray a) {
            int indexCount = a.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = a.getIndex(i);
                if (index == C0503R.styleable.Transition_constraintSetEnd) {
                    this.f3962c = a.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3962c);
                    if (gon.f71305w.equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        constraintSet.load(context, this.f3962c);
                        motionScene.f3943h.append(this.f3962c, constraintSet);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.f3962c = motionScene.m1974F(context, this.f3962c);
                    }
                } else if (index == C0503R.styleable.Transition_constraintSetStart) {
                    this.f3963d = a.getResourceId(index, this.f3963d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.f3963d);
                    if (gon.f71305w.equals(resourceTypeName2)) {
                        ConstraintSet constraintSet2 = new ConstraintSet();
                        constraintSet2.load(context, this.f3963d);
                        motionScene.f3943h.append(this.f3963d, constraintSet2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.f3963d = motionScene.m1974F(context, this.f3963d);
                    }
                } else if (index == C0503R.styleable.Transition_motionInterpolator) {
                    int i2 = a.peekValue(index).type;
                    if (i2 == 1) {
                        int resourceId = a.getResourceId(index, -1);
                        this.f3966g = resourceId;
                        if (resourceId != -1) {
                            this.f3964e = -2;
                        }
                    } else if (i2 == 3) {
                        String string = a.getString(index);
                        this.f3965f = string;
                        if (string != null) {
                            if (string.indexOf("/") > 0) {
                                this.f3966g = a.getResourceId(index, -1);
                                this.f3964e = -2;
                            } else {
                                this.f3964e = -1;
                            }
                        }
                    } else {
                        this.f3964e = a.getInteger(index, this.f3964e);
                    }
                } else if (index == C0503R.styleable.Transition_duration) {
                    int i3 = a.getInt(index, this.f3967h);
                    this.f3967h = i3;
                    if (i3 < 8) {
                        this.f3967h = 8;
                    }
                } else if (index == C0503R.styleable.Transition_staggered) {
                    this.f3968i = a.getFloat(index, this.f3968i);
                } else if (index == C0503R.styleable.Transition_autoTransition) {
                    this.f3973n = a.getInteger(index, this.f3973n);
                } else if (index == C0503R.styleable.Transition_android_id) {
                    this.f3960a = a.getResourceId(index, this.f3960a);
                } else if (index == C0503R.styleable.Transition_transitionDisable) {
                    this.f3974o = a.getBoolean(index, this.f3974o);
                } else if (index == C0503R.styleable.Transition_pathMotionArc) {
                    this.f3975p = a.getInteger(index, -1);
                } else if (index == C0503R.styleable.Transition_layoutDuringTransition) {
                    this.f3976q = a.getInteger(index, 0);
                } else if (index == C0503R.styleable.Transition_transitionFlags) {
                    this.f3977r = a.getInteger(index, 0);
                }
            }
            if (this.f3963d == -1) {
                this.f3961b = true;
            }
        }

        /* renamed from: u */
        public final void m2025u(MotionScene motionScene, Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.Transition);
            m2024t(motionScene, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        public void addOnClick(Context context, XmlPullParser parser) {
            this.f3972m.add(new TransitionOnClick(context, this, parser));
        }

        /* loaded from: classes3.dex */
        public static class TransitionOnClick implements View.OnClickListener {
            public static final int ANIM_TOGGLE = 17;
            public static final int ANIM_TO_END = 1;
            public static final int ANIM_TO_START = 16;
            public static final int JUMP_TO_END = 256;
            public static final int JUMP_TO_START = 4096;

            /* renamed from: e */
            public final Transition f3978e;

            /* renamed from: f */
            public int f3979f;

            /* renamed from: g */
            public int f3980g;

            public TransitionOnClick(Context context, Transition transition, XmlPullParser parser) {
                this.f3979f = -1;
                this.f3980g = 17;
                this.f3978e = transition;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == C0503R.styleable.OnClick_targetId) {
                        this.f3979f = obtainStyledAttributes.getResourceId(index, this.f3979f);
                    } else if (index == C0503R.styleable.OnClick_clickAction) {
                        this.f3980g = obtainStyledAttributes.getInt(index, this.f3980g);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* renamed from: a */
            public boolean m2026a(Transition current, MotionLayout tl) {
                Transition transition = this.f3978e;
                if (transition == current) {
                    return true;
                }
                int i = transition.f3962c;
                int i2 = this.f3978e.f3963d;
                if (i2 == -1) {
                    return tl.f3785A0 != i;
                }
                int i3 = tl.f3785A0;
                return i3 == i2 || i3 == i;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r7v4, types: [android.view.View] */
            public void addOnClickListeners(MotionLayout motionLayout, int i, Transition transition) {
                int i2 = this.f3979f;
                MotionLayout motionLayout2 = motionLayout;
                if (i2 != -1) {
                    motionLayout2 = motionLayout.findViewById(i2);
                }
                if (motionLayout2 == null) {
                    Log.e("MotionScene", "OnClick could not find id " + this.f3979f);
                    return;
                }
                int i3 = transition.f3963d;
                int i4 = transition.f3962c;
                if (i3 == -1) {
                    motionLayout2.setOnClickListener(this);
                    return;
                }
                int i5 = this.f3980g;
                boolean z = false;
                boolean z2 = ((i5 & 1) != 0 && i == i3) | ((i5 & 1) != 0 && i == i3) | ((i5 & 256) != 0 && i == i3) | ((i5 & 16) != 0 && i == i4);
                if ((i5 & 4096) != 0 && i == i4) {
                    z = true;
                }
                if (z2 || z) {
                    motionLayout2.setOnClickListener(this);
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:37:0x00a3  */
            /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onClick(android.view.View r8) {
                /*
                    Method dump skipped, instructions count: 233
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick.onClick(android.view.View):void");
            }

            public void removeOnClickListeners(MotionLayout motionLayout) {
                int i = this.f3979f;
                if (i == -1) {
                    return;
                }
                View findViewById = motionLayout.findViewById(i);
                if (findViewById != null) {
                    findViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.f3979f);
            }

            public TransitionOnClick(Transition transition, int id, int action) {
                this.f3978e = transition;
                this.f3979f = id;
                this.f3980g = action;
            }
        }

        public Transition(int id, MotionScene motionScene, int constraintSetStartId, int constraintSetEndId) {
            this.f3960a = -1;
            this.f3961b = false;
            this.f3962c = -1;
            this.f3963d = -1;
            this.f3964e = 0;
            this.f3965f = null;
            this.f3966g = -1;
            this.f3967h = 400;
            this.f3968i = 0.0f;
            this.f3970k = new ArrayList<>();
            this.f3971l = null;
            this.f3972m = new ArrayList<>();
            this.f3973n = 0;
            this.f3974o = false;
            this.f3975p = -1;
            this.f3976q = 0;
            this.f3977r = 0;
            this.f3960a = id;
            this.f3969j = motionScene;
            this.f3963d = constraintSetStartId;
            this.f3962c = constraintSetEndId;
            this.f3967h = motionScene.f3947l;
            this.f3976q = motionScene.f3948m;
        }

        public Transition(MotionScene motionScene, Context context, XmlPullParser parser) {
            this.f3960a = -1;
            this.f3961b = false;
            this.f3962c = -1;
            this.f3963d = -1;
            this.f3964e = 0;
            this.f3965f = null;
            this.f3966g = -1;
            this.f3967h = 400;
            this.f3968i = 0.0f;
            this.f3970k = new ArrayList<>();
            this.f3971l = null;
            this.f3972m = new ArrayList<>();
            this.f3973n = 0;
            this.f3974o = false;
            this.f3975p = -1;
            this.f3976q = 0;
            this.f3977r = 0;
            this.f3967h = motionScene.f3947l;
            this.f3976q = motionScene.f3948m;
            this.f3969j = motionScene;
            m2025u(motionScene, context, Xml.asAttributeSet(parser));
        }
    }

    public MotionScene(Context context, MotionLayout layout, int resourceID) {
        this.f3936a = layout;
        this.f3954s = new ViewTransitionController(layout);
        m1972D(context, resourceID);
        this.f3943h.put(C0503R.id.motion_base, new ConstraintSet());
        this.f3944i.put("motion_base", Integer.valueOf(C0503R.id.motion_base));
    }
}
