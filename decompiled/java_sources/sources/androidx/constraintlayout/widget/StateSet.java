package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.motion.widget.MotionScene;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class StateSet {
    public static final String TAG = "ConstraintLayoutStates";

    /* renamed from: h */
    public static final boolean f4677h = false;

    /* renamed from: b */
    public ConstraintSet f4679b;

    /* renamed from: a */
    public int f4678a = -1;

    /* renamed from: c */
    public int f4680c = -1;

    /* renamed from: d */
    public int f4681d = -1;

    /* renamed from: e */
    public SparseArray<C0504a> f4682e = new SparseArray<>();

    /* renamed from: f */
    public SparseArray<ConstraintSet> f4683f = new SparseArray<>();

    /* renamed from: g */
    public ConstraintsChangedListener f4684g = null;

    /* renamed from: androidx.constraintlayout.widget.StateSet$a */
    /* loaded from: classes3.dex */
    public static class C0504a {

        /* renamed from: a */
        public int f4685a;

        /* renamed from: b */
        public ArrayList<C0505b> f4686b = new ArrayList<>();

        /* renamed from: c */
        public int f4687c;

        /* renamed from: d */
        public boolean f4688d;

        public C0504a(Context context, XmlPullParser parser) {
            this.f4687c = -1;
            this.f4688d = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.State_android_id) {
                    this.f4685a = obtainStyledAttributes.getResourceId(index, this.f4685a);
                } else if (index == C0503R.styleable.State_constraints) {
                    this.f4687c = obtainStyledAttributes.getResourceId(index, this.f4687c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f4687c);
                    context.getResources().getResourceName(this.f4687c);
                    if (gon.f71305w.equals(resourceTypeName)) {
                        this.f4688d = true;
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public void m2234a(C0505b size) {
            this.f4686b.add(size);
        }

        /* renamed from: b */
        public int m2235b(float width, float height) {
            for (int i = 0; i < this.f4686b.size(); i++) {
                if (this.f4686b.get(i).m2236a(width, height)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.StateSet$b */
    /* loaded from: classes3.dex */
    public static class C0505b {

        /* renamed from: a */
        public int f4689a;

        /* renamed from: b */
        public float f4690b;

        /* renamed from: c */
        public float f4691c;

        /* renamed from: d */
        public float f4692d;

        /* renamed from: e */
        public float f4693e;

        /* renamed from: f */
        public int f4694f;

        /* renamed from: g */
        public boolean f4695g;

        public C0505b(Context context, XmlPullParser parser) {
            this.f4690b = Float.NaN;
            this.f4691c = Float.NaN;
            this.f4692d = Float.NaN;
            this.f4693e = Float.NaN;
            this.f4694f = -1;
            this.f4695g = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.Variant_constraints) {
                    this.f4694f = obtainStyledAttributes.getResourceId(index, this.f4694f);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f4694f);
                    context.getResources().getResourceName(this.f4694f);
                    if (gon.f71305w.equals(resourceTypeName)) {
                        this.f4695g = true;
                    }
                } else if (index == C0503R.styleable.Variant_region_heightLessThan) {
                    this.f4693e = obtainStyledAttributes.getDimension(index, this.f4693e);
                } else if (index == C0503R.styleable.Variant_region_heightMoreThan) {
                    this.f4691c = obtainStyledAttributes.getDimension(index, this.f4691c);
                } else if (index == C0503R.styleable.Variant_region_widthLessThan) {
                    this.f4692d = obtainStyledAttributes.getDimension(index, this.f4692d);
                } else if (index == C0503R.styleable.Variant_region_widthMoreThan) {
                    this.f4690b = obtainStyledAttributes.getDimension(index, this.f4690b);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public boolean m2236a(float widthDp, float heightDp) {
            if (!Float.isNaN(this.f4690b) && widthDp < this.f4690b) {
                return false;
            }
            if (!Float.isNaN(this.f4691c) && heightDp < this.f4691c) {
                return false;
            }
            if (Float.isNaN(this.f4692d) || widthDp <= this.f4692d) {
                return Float.isNaN(this.f4693e) || heightDp <= this.f4693e;
            }
            return false;
        }
    }

    public StateSet(Context context, XmlPullParser parser) {
        m2233a(context, parser);
    }

    /* renamed from: a */
    public final void m2233a(Context context, XmlPullParser parser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0503R.styleable.StateSet_defaultState) {
                this.f4678a = obtainStyledAttributes.getResourceId(index, this.f4678a);
            }
        }
        obtainStyledAttributes.recycle();
        try {
            int eventType = parser.getEventType();
            C0504a c0504a = null;
            while (true) {
                char c = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    parser.getName();
                } else if (eventType == 2) {
                    String name = parser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals(MotionScene.f3918G)) {
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    if (c == 2) {
                        c0504a = new C0504a(context, parser);
                        this.f4682e.put(c0504a.f4685a, c0504a);
                    } else if (c == 3) {
                        C0505b c0505b = new C0505b(context, parser);
                        if (c0504a != null) {
                            c0504a.m2234a(c0505b);
                        }
                    }
                } else if (eventType != 3) {
                    continue;
                } else if (MotionScene.f3918G.equals(parser.getName())) {
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

    public int convertToConstraintSet(int currentConstrainSettId, int stateId, float width, float height) {
        C0504a c0504a = this.f4682e.get(stateId);
        if (c0504a == null) {
            return stateId;
        }
        if (width == -1.0f || height == -1.0f) {
            if (c0504a.f4687c == currentConstrainSettId) {
                return currentConstrainSettId;
            }
            Iterator<C0505b> it2 = c0504a.f4686b.iterator();
            while (it2.hasNext()) {
                if (currentConstrainSettId == it2.next().f4694f) {
                    return currentConstrainSettId;
                }
            }
            return c0504a.f4687c;
        }
        Iterator<C0505b> it3 = c0504a.f4686b.iterator();
        C0505b c0505b = null;
        while (it3.hasNext()) {
            C0505b next = it3.next();
            if (next.m2236a(width, height)) {
                if (currentConstrainSettId == next.f4694f) {
                    return currentConstrainSettId;
                }
                c0505b = next;
            }
        }
        return c0505b != null ? c0505b.f4694f : c0504a.f4687c;
    }

    public boolean needsToChange(int id, float width, float height) {
        int i = this.f4680c;
        if (i != id) {
            return true;
        }
        C0504a valueAt = id == -1 ? this.f4682e.valueAt(0) : this.f4682e.get(i);
        int i2 = this.f4681d;
        return (i2 == -1 || !valueAt.f4686b.get(i2).m2236a(width, height)) && this.f4681d != valueAt.m2235b(width, height);
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.f4684g = constraintsChangedListener;
    }

    public int stateGetConstraintID(int id, int width, int height) {
        return updateConstraints(-1, id, width, height);
    }

    public int updateConstraints(int currentId, int id, float width, float height) {
        int m2235b;
        if (currentId == id) {
            C0504a valueAt = id == -1 ? this.f4682e.valueAt(0) : this.f4682e.get(this.f4680c);
            if (valueAt == null) {
                return -1;
            }
            return ((this.f4681d == -1 || !valueAt.f4686b.get(currentId).m2236a(width, height)) && currentId != (m2235b = valueAt.m2235b(width, height))) ? m2235b == -1 ? valueAt.f4687c : valueAt.f4686b.get(m2235b).f4694f : currentId;
        }
        C0504a c0504a = this.f4682e.get(id);
        if (c0504a == null) {
            return -1;
        }
        int m2235b2 = c0504a.m2235b(width, height);
        return m2235b2 == -1 ? c0504a.f4687c : c0504a.f4686b.get(m2235b2).f4694f;
    }
}
