package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.motion.widget.MotionScene;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class ConstraintLayoutStates {
    public static final String TAG = "ConstraintLayoutStates";

    /* renamed from: h */
    public static final boolean f4379h = false;

    /* renamed from: a */
    public final ConstraintLayout f4380a;

    /* renamed from: b */
    public ConstraintSet f4381b;

    /* renamed from: c */
    public int f4382c = -1;

    /* renamed from: d */
    public int f4383d = -1;

    /* renamed from: e */
    public SparseArray<C0498a> f4384e = new SparseArray<>();

    /* renamed from: f */
    public SparseArray<ConstraintSet> f4385f = new SparseArray<>();

    /* renamed from: g */
    public ConstraintsChangedListener f4386g = null;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayoutStates$a */
    /* loaded from: classes3.dex */
    public static class C0498a {

        /* renamed from: a */
        public int f4387a;

        /* renamed from: b */
        public ArrayList<C0499b> f4388b = new ArrayList<>();

        /* renamed from: c */
        public int f4389c;

        /* renamed from: d */
        public ConstraintSet f4390d;

        public C0498a(Context context, XmlPullParser parser) {
            this.f4389c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.State_android_id) {
                    this.f4387a = obtainStyledAttributes.getResourceId(index, this.f4387a);
                } else if (index == C0503R.styleable.State_constraints) {
                    this.f4389c = obtainStyledAttributes.getResourceId(index, this.f4389c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f4389c);
                    context.getResources().getResourceName(this.f4389c);
                    if (gon.f71305w.equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f4390d = constraintSet;
                        constraintSet.clone(context, this.f4389c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public void m2144a(C0499b size) {
            this.f4388b.add(size);
        }

        /* renamed from: b */
        public int m2145b(float width, float height) {
            for (int i = 0; i < this.f4388b.size(); i++) {
                if (this.f4388b.get(i).m2146a(width, height)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayoutStates$b */
    /* loaded from: classes3.dex */
    public static class C0499b {

        /* renamed from: a */
        public int f4391a;

        /* renamed from: b */
        public float f4392b;

        /* renamed from: c */
        public float f4393c;

        /* renamed from: d */
        public float f4394d;

        /* renamed from: e */
        public float f4395e;

        /* renamed from: f */
        public int f4396f;

        /* renamed from: g */
        public ConstraintSet f4397g;

        public C0499b(Context context, XmlPullParser parser) {
            this.f4392b = Float.NaN;
            this.f4393c = Float.NaN;
            this.f4394d = Float.NaN;
            this.f4395e = Float.NaN;
            this.f4396f = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), C0503R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.Variant_constraints) {
                    this.f4396f = obtainStyledAttributes.getResourceId(index, this.f4396f);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f4396f);
                    context.getResources().getResourceName(this.f4396f);
                    if (gon.f71305w.equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f4397g = constraintSet;
                        constraintSet.clone(context, this.f4396f);
                    }
                } else if (index == C0503R.styleable.Variant_region_heightLessThan) {
                    this.f4395e = obtainStyledAttributes.getDimension(index, this.f4395e);
                } else if (index == C0503R.styleable.Variant_region_heightMoreThan) {
                    this.f4393c = obtainStyledAttributes.getDimension(index, this.f4393c);
                } else if (index == C0503R.styleable.Variant_region_widthLessThan) {
                    this.f4394d = obtainStyledAttributes.getDimension(index, this.f4394d);
                } else if (index == C0503R.styleable.Variant_region_widthMoreThan) {
                    this.f4392b = obtainStyledAttributes.getDimension(index, this.f4392b);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public boolean m2146a(float widthDp, float heightDp) {
            if (!Float.isNaN(this.f4392b) && widthDp < this.f4392b) {
                return false;
            }
            if (!Float.isNaN(this.f4393c) && heightDp < this.f4393c) {
                return false;
            }
            if (Float.isNaN(this.f4394d) || widthDp <= this.f4394d) {
                return Float.isNaN(this.f4395e) || heightDp <= this.f4395e;
            }
            return false;
        }
    }

    public ConstraintLayoutStates(Context context, ConstraintLayout layout, int resourceID) {
        this.f4380a = layout;
        m2142a(context, resourceID);
    }

    /* renamed from: a */
    public final void m2142a(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            int eventType = xml.getEventType();
            C0498a c0498a = null;
            while (true) {
                char c = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals(MotionScene.f3918G)) {
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c = 0;
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
                        c0498a = new C0498a(context, xml);
                        this.f4384e.put(c0498a.f4387a, c0498a);
                    } else if (c == 3) {
                        C0499b c0499b = new C0499b(context, xml);
                        if (c0498a != null) {
                            c0498a.m2144a(c0499b);
                        }
                    } else if (c == 4) {
                        m2143b(context, xml);
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

    /* renamed from: b */
    public final void m2143b(Context context, XmlPullParser parser) {
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = parser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = parser.getAttributeName(i);
            String attributeValue = parser.getAttributeValue(i);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                constraintSet.load(context, parser);
                this.f4385f.put(identifier, constraintSet);
                return;
            }
        }
    }

    public boolean needsToChange(int id, float width, float height) {
        int i = this.f4382c;
        if (i != id) {
            return true;
        }
        C0498a valueAt = id == -1 ? this.f4384e.valueAt(0) : this.f4384e.get(i);
        int i2 = this.f4383d;
        return (i2 == -1 || !valueAt.f4388b.get(i2).m2146a(width, height)) && this.f4383d != valueAt.m2145b(width, height);
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.f4386g = constraintsChangedListener;
    }

    public void updateConstraints(int id, float width, float height) {
        int m2145b;
        int i = this.f4382c;
        if (i == id) {
            C0498a valueAt = id == -1 ? this.f4384e.valueAt(0) : this.f4384e.get(i);
            int i2 = this.f4383d;
            if ((i2 == -1 || !valueAt.f4388b.get(i2).m2146a(width, height)) && this.f4383d != (m2145b = valueAt.m2145b(width, height))) {
                ConstraintSet constraintSet = m2145b == -1 ? this.f4381b : valueAt.f4388b.get(m2145b).f4397g;
                int i3 = m2145b == -1 ? valueAt.f4389c : valueAt.f4388b.get(m2145b).f4396f;
                if (constraintSet == null) {
                    return;
                }
                this.f4383d = m2145b;
                ConstraintsChangedListener constraintsChangedListener = this.f4386g;
                if (constraintsChangedListener != null) {
                    constraintsChangedListener.preLayoutChange(-1, i3);
                }
                constraintSet.applyTo(this.f4380a);
                ConstraintsChangedListener constraintsChangedListener2 = this.f4386g;
                if (constraintsChangedListener2 != null) {
                    constraintsChangedListener2.postLayoutChange(-1, i3);
                    return;
                }
                return;
            }
            return;
        }
        this.f4382c = id;
        C0498a c0498a = this.f4384e.get(id);
        int m2145b2 = c0498a.m2145b(width, height);
        ConstraintSet constraintSet2 = m2145b2 == -1 ? c0498a.f4390d : c0498a.f4388b.get(m2145b2).f4397g;
        int i4 = m2145b2 == -1 ? c0498a.f4389c : c0498a.f4388b.get(m2145b2).f4396f;
        if (constraintSet2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + id + ", dim =" + width + ", " + height);
            return;
        }
        this.f4383d = m2145b2;
        ConstraintsChangedListener constraintsChangedListener3 = this.f4386g;
        if (constraintsChangedListener3 != null) {
            constraintsChangedListener3.preLayoutChange(id, i4);
        }
        constraintSet2.applyTo(this.f4380a);
        ConstraintsChangedListener constraintsChangedListener4 = this.f4386g;
        if (constraintsChangedListener4 != null) {
            constraintsChangedListener4.postLayoutChange(id, i4);
        }
    }
}
