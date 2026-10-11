package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.C0503R;
import com.sunia.HTREnginev2.bui;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class KeyPosition extends bui {
    public static final String DRAWPATH = "drawPath";
    public static final String PERCENT_HEIGHT = "percentHeight";
    public static final String PERCENT_WIDTH = "percentWidth";
    public static final String PERCENT_X = "percentX";
    public static final String PERCENT_Y = "percentY";
    public static final String SIZE_PERCENT = "sizePercent";
    public static final String TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;

    /* renamed from: r */
    public static final String f3621r = "KeyPosition";

    /* renamed from: s */
    public static final String f3622s = "KeyPosition";

    /* renamed from: t */
    public static final int f3623t = 2;

    /* renamed from: f */
    public String f3624f = null;

    /* renamed from: g */
    public int f3625g = Key.UNSET;

    /* renamed from: h */
    public int f3626h = 0;

    /* renamed from: i */
    public float f3627i = Float.NaN;

    /* renamed from: j */
    public float f3628j = Float.NaN;

    /* renamed from: k */
    public float f3629k = Float.NaN;

    /* renamed from: l */
    public float f3630l = Float.NaN;

    /* renamed from: m */
    public float f3631m = Float.NaN;

    /* renamed from: n */
    public float f3632n = Float.NaN;

    /* renamed from: o */
    public int f3633o = 0;

    /* renamed from: p */
    public float f3634p = Float.NaN;

    /* renamed from: q */
    public float f3635q = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.KeyPosition$a */
    /* loaded from: classes3.dex */
    public static class C0466a {

        /* renamed from: a */
        public static final int f3636a = 1;

        /* renamed from: b */
        public static final int f3637b = 2;

        /* renamed from: c */
        public static final int f3638c = 3;

        /* renamed from: d */
        public static final int f3639d = 4;

        /* renamed from: e */
        public static final int f3640e = 5;

        /* renamed from: f */
        public static final int f3641f = 6;

        /* renamed from: g */
        public static final int f3642g = 7;

        /* renamed from: h */
        public static final int f3643h = 8;

        /* renamed from: i */
        public static final int f3644i = 9;

        /* renamed from: j */
        public static final int f3645j = 10;

        /* renamed from: k */
        public static final int f3646k = 11;

        /* renamed from: l */
        public static final int f3647l = 12;

        /* renamed from: m */
        public static SparseIntArray f3648m;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3648m = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.KeyPosition_motionTarget, 1);
            f3648m.append(C0503R.styleable.KeyPosition_framePosition, 2);
            f3648m.append(C0503R.styleable.KeyPosition_transitionEasing, 3);
            f3648m.append(C0503R.styleable.KeyPosition_curveFit, 4);
            f3648m.append(C0503R.styleable.KeyPosition_drawPath, 5);
            f3648m.append(C0503R.styleable.KeyPosition_percentX, 6);
            f3648m.append(C0503R.styleable.KeyPosition_percentY, 7);
            f3648m.append(C0503R.styleable.KeyPosition_keyPositionType, 9);
            f3648m.append(C0503R.styleable.KeyPosition_sizePercent, 8);
            f3648m.append(C0503R.styleable.KeyPosition_percentWidth, 11);
            f3648m.append(C0503R.styleable.KeyPosition_percentHeight, 12);
            f3648m.append(C0503R.styleable.KeyPosition_pathMotionArc, 10);
        }

        /* renamed from: b */
        public static void m1798b(KeyPosition c, TypedArray a) {
            int indexCount = a.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = a.getIndex(i);
                switch (f3648m.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a.getResourceId(index, c.f3530b);
                            c.f3530b = resourceId;
                            if (resourceId == -1) {
                                c.f3531c = a.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (a.peekValue(index).type == 3) {
                            c.f3531c = a.getString(index);
                            break;
                        } else {
                            c.f3530b = a.getResourceId(index, c.f3530b);
                            break;
                        }
                    case 2:
                        c.f3529a = a.getInt(index, c.f3529a);
                        break;
                    case 3:
                        if (a.peekValue(index).type == 3) {
                            c.f3624f = a.getString(index);
                            break;
                        } else {
                            c.f3624f = Easing.NAMED_EASING[a.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        c.f66147e = a.getInteger(index, c.f66147e);
                        break;
                    case 5:
                        c.f3626h = a.getInt(index, c.f3626h);
                        break;
                    case 6:
                        c.f3629k = a.getFloat(index, c.f3629k);
                        break;
                    case 7:
                        c.f3630l = a.getFloat(index, c.f3630l);
                        break;
                    case 8:
                        float f = a.getFloat(index, c.f3628j);
                        c.f3627i = f;
                        c.f3628j = f;
                        break;
                    case 9:
                        c.f3633o = a.getInt(index, c.f3633o);
                        break;
                    case 10:
                        c.f3625g = a.getInt(index, c.f3625g);
                        break;
                    case 11:
                        c.f3627i = a.getFloat(index, c.f3627i);
                        break;
                    case 12:
                        c.f3628j = a.getFloat(index, c.f3628j);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3648m.get(index));
                        break;
                }
            }
            if (c.f3529a == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public KeyPosition() {
        this.mType = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyPosition keyPosition = (KeyPosition) src;
        this.f3624f = keyPosition.f3624f;
        this.f3625g = keyPosition.f3625g;
        this.f3626h = keyPosition.f3626h;
        this.f3627i = keyPosition.f3627i;
        this.f3628j = Float.NaN;
        this.f3629k = keyPosition.f3629k;
        this.f3630l = keyPosition.f3630l;
        this.f3631m = keyPosition.f3631m;
        this.f3632n = keyPosition.f3632n;
        this.f3634p = keyPosition.f3634p;
        this.f3635q = keyPosition.f3635q;
        return this;
    }

    @Override // com.sunia.HTREnginev2.bui
    /* renamed from: e */
    public void mo1788e(int layoutWidth, int layoutHeight, float start_x, float start_y, float end_x, float end_y) {
        int i = this.f3633o;
        if (i == 1) {
            m1792i(start_x, start_y, end_x, end_y);
        } else if (i != 2) {
            m1791h(start_x, start_y, end_x, end_y);
        } else {
            m1793j(layoutWidth, layoutHeight);
        }
    }

    @Override // com.sunia.HTREnginev2.bui
    /* renamed from: f */
    public float mo1789f() {
        return this.f3634p;
    }

    @Override // com.sunia.HTREnginev2.bui
    /* renamed from: g */
    public float mo1790g() {
        return this.f3635q;
    }

    /* renamed from: h */
    public final void m1791h(float start_x, float start_y, float end_x, float end_y) {
        float f = end_x - start_x;
        float f2 = end_y - start_y;
        float f3 = Float.isNaN(this.f3629k) ? 0.0f : this.f3629k;
        float f4 = Float.isNaN(this.f3632n) ? 0.0f : this.f3632n;
        float f5 = Float.isNaN(this.f3630l) ? 0.0f : this.f3630l;
        this.f3634p = (int) (start_x + (f3 * f) + ((Float.isNaN(this.f3631m) ? 0.0f : this.f3631m) * f2));
        this.f3635q = (int) (start_y + (f * f4) + (f2 * f5));
    }

    /* renamed from: i */
    public final void m1792i(float start_x, float start_y, float end_x, float end_y) {
        float f = end_x - start_x;
        float f2 = end_y - start_y;
        float f3 = this.f3629k;
        float f4 = this.f3630l;
        this.f3634p = start_x + (f * f3) + ((-f2) * f4);
        this.f3635q = start_y + (f2 * f3) + (f * f4);
    }

    @Override // com.sunia.HTREnginev2.bui
    public boolean intersects(int layoutWidth, int layoutHeight, RectF start, RectF end, float x, float y) {
        mo1788e(layoutWidth, layoutHeight, start.centerX(), start.centerY(), end.centerX(), end.centerY());
        return Math.abs(x - this.f3634p) < 20.0f && Math.abs(y - this.f3635q) < 20.0f;
    }

    /* renamed from: j */
    public final void m1793j(int layoutWidth, int layoutHeight) {
        float f = this.f3629k;
        float f2 = 0;
        this.f3634p = ((layoutWidth - 0) * f) + f2;
        this.f3635q = ((layoutHeight - 0) * f) + f2;
    }

    /* renamed from: k */
    public void m1794k(RectF start, RectF end, float x, float y, String[] attribute, float[] value) {
        float centerX = start.centerX();
        float centerY = start.centerY();
        float centerX2 = end.centerX() - centerX;
        float centerY2 = end.centerY() - centerY;
        String str = attribute[0];
        if (str == null) {
            attribute[0] = "percentX";
            value[0] = (x - centerX) / centerX2;
            attribute[1] = "percentY";
            value[1] = (y - centerY) / centerY2;
            return;
        }
        if ("percentX".equals(str)) {
            value[0] = (x - centerX) / centerX2;
            value[1] = (y - centerY) / centerY2;
        } else {
            value[1] = (x - centerX) / centerX2;
            value[0] = (y - centerY) / centerY2;
        }
    }

    /* renamed from: l */
    public void m1795l(RectF start, RectF end, float x, float y, String[] attribute, float[] value) {
        float centerX = start.centerX();
        float centerY = start.centerY();
        float centerX2 = end.centerX() - centerX;
        float centerY2 = end.centerY() - centerY;
        float hypot = (float) Math.hypot(centerX2, centerY2);
        if (hypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            value[0] = 0.0f;
            value[1] = 0.0f;
            return;
        }
        float f = centerX2 / hypot;
        float f2 = centerY2 / hypot;
        float f3 = y - centerY;
        float f4 = x - centerX;
        float f5 = ((f * f3) - (f4 * f2)) / hypot;
        float f6 = ((f * f4) + (f2 * f3)) / hypot;
        String str = attribute[0];
        if (str != null) {
            if ("percentX".equals(str)) {
                value[0] = f6;
                value[1] = f5;
                return;
            }
            return;
        }
        attribute[0] = "percentX";
        attribute[1] = "percentY";
        value[0] = f6;
        value[1] = f5;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        C0466a.m1798b(this, context.obtainStyledAttributes(attrs, C0503R.styleable.KeyPosition));
    }

    /* renamed from: m */
    public void m1796m(View view, RectF start, RectF end, float x, float y, String[] attribute, float[] value) {
        start.centerX();
        start.centerY();
        end.centerX();
        end.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
        String str = attribute[0];
        if (str == null) {
            attribute[0] = "percentX";
            value[0] = x / width;
            attribute[1] = "percentY";
            value[1] = y / height;
            return;
        }
        if ("percentX".equals(str)) {
            value[0] = x / width;
            value[1] = y / height;
        } else {
            value[1] = x / width;
            value[0] = y / height;
        }
    }

    @Override // com.sunia.HTREnginev2.bui
    public void positionAttributes(View view, RectF start, RectF end, float x, float y, String[] attribute, float[] value) {
        int i = this.f3633o;
        if (i == 1) {
            m1795l(start, end, x, y, attribute, value);
        } else if (i != 2) {
            m1794k(start, end, x, y, attribute, value);
        } else {
            m1796m(view, start, end, x, y, attribute, value);
        }
    }

    public void setType(int type) {
        this.f3633o = type;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c = 65535;
        switch (tag.hashCode()) {
            case -1812823328:
                if (tag.equals("transitionEasing")) {
                    c = 0;
                    break;
                }
                break;
            case -1127236479:
                if (tag.equals("percentWidth")) {
                    c = 1;
                    break;
                }
                break;
            case -1017587252:
                if (tag.equals("percentHeight")) {
                    c = 2;
                    break;
                }
                break;
            case -827014263:
                if (tag.equals("drawPath")) {
                    c = 3;
                    break;
                }
                break;
            case -200259324:
                if (tag.equals("sizePercent")) {
                    c = 4;
                    break;
                }
                break;
            case 428090547:
                if (tag.equals("percentX")) {
                    c = 5;
                    break;
                }
                break;
            case 428090548:
                if (tag.equals("percentY")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f3624f = value.toString();
                return;
            case 1:
                this.f3627i = m1712c(value);
                return;
            case 2:
                this.f3628j = m1712c(value);
                return;
            case 3:
                this.f3626h = m1713d(value);
                return;
            case 4:
                float m1712c = m1712c(value);
                this.f3627i = m1712c;
                this.f3628j = m1712c;
                return;
            case 5:
                this.f3629k = m1712c(value);
                return;
            case 6:
                this.f3630l = m1712c(value);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo72118clone() {
        return new KeyPosition().copy(this);
    }
}
