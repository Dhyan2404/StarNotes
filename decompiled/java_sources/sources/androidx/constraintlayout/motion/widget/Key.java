package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes3.dex */
public abstract class Key {
    public static final String ALPHA = "alpha";
    public static final String CURVEFIT = "curveFit";
    public static final String CUSTOM = "CUSTOM";
    public static final String ELEVATION = "elevation";
    public static final String MOTIONPROGRESS = "motionProgress";
    public static final String PIVOT_X = "transformPivotX";
    public static final String PIVOT_Y = "transformPivotY";
    public static final String PROGRESS = "progress";
    public static final String ROTATION = "rotation";
    public static final String ROTATION_X = "rotationX";
    public static final String ROTATION_Y = "rotationY";
    public static final String SCALE_X = "scaleX";
    public static final String SCALE_Y = "scaleY";
    public static final String TRANSITIONEASING = "transitionEasing";
    public static final String TRANSITION_PATH_ROTATE = "transitionPathRotate";
    public static final String TRANSLATION_X = "translationX";
    public static final String TRANSLATION_Y = "translationY";
    public static final String TRANSLATION_Z = "translationZ";
    public static int UNSET = -1;
    public static final String VISIBILITY = "visibility";
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_PHASE = "wavePhase";
    public static final String WAVE_VARIES_BY = "waveVariesBy";

    /* renamed from: a */
    public int f3529a;

    /* renamed from: b */
    public int f3530b;

    /* renamed from: c */
    public String f3531c;

    /* renamed from: d */
    public HashMap<String, ConstraintAttribute> f3532d;
    protected int mType;

    public Key() {
        int i = UNSET;
        this.f3529a = i;
        this.f3530b = i;
        this.f3531c = null;
    }

    /* renamed from: a */
    public boolean m1710a(String constraintTag) {
        String str = this.f3531c;
        if (str == null || constraintTag == null) {
            return false;
        }
        return constraintTag.matches(str);
    }

    public abstract void addValues(HashMap<String, ViewSpline> splines);

    /* renamed from: b */
    public boolean m1711b(Object value) {
        return value instanceof Boolean ? ((Boolean) value).booleanValue() : Boolean.parseBoolean(value.toString());
    }

    /* renamed from: c */
    public float m1712c(Object value) {
        return value instanceof Float ? ((Float) value).floatValue() : Float.parseFloat(value.toString());
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public abstract Key mo72118clone();

    public Key copy(Key src) {
        this.f3529a = src.f3529a;
        this.f3530b = src.f3530b;
        this.f3531c = src.f3531c;
        this.mType = src.mType;
        this.f3532d = src.f3532d;
        return this;
    }

    /* renamed from: d */
    public int m1713d(Object value) {
        return value instanceof Integer ? ((Integer) value).intValue() : Integer.parseInt(value.toString());
    }

    public abstract void getAttributeNames(HashSet<String> attributes);

    public int getFramePosition() {
        return this.f3529a;
    }

    public abstract void load(Context context, AttributeSet attrs);

    public void setFramePosition(int pos) {
        this.f3529a = pos;
    }

    public void setInterpolation(HashMap<String, Integer> interpolation) {
    }

    public abstract void setValue(String tag, Object value);

    public Key setViewId(int id) {
        this.f3530b = id;
        return this;
    }
}
