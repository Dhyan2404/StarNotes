package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class CircularFlow extends VirtualLayout {

    /* renamed from: r */
    public static final String f3459r = "CircularFlow";

    /* renamed from: s */
    public static int f3460s;

    /* renamed from: t */
    public static float f3461t;

    /* renamed from: h */
    public ConstraintLayout f3462h;

    /* renamed from: i */
    public int f3463i;

    /* renamed from: j */
    public float[] f3464j;

    /* renamed from: k */
    public int[] f3465k;

    /* renamed from: l */
    public int f3466l;

    /* renamed from: m */
    public int f3467m;

    /* renamed from: n */
    public String f3468n;

    /* renamed from: o */
    public String f3469o;

    /* renamed from: p */
    public Float f3470p;

    /* renamed from: q */
    public Integer f3471q;

    public CircularFlow(Context context) {
        super(context);
    }

    public static int[] removeElementFromArray(int[] array, int index) {
        int[] iArr = new int[array.length - 1];
        int i = 0;
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 != index) {
                iArr[i] = array[i2];
                i++;
            }
        }
        return iArr;
    }

    private void setAngles(String idList) {
        if (idList == null) {
            return;
        }
        int i = 0;
        this.f3467m = 0;
        while (true) {
            int indexOf = idList.indexOf(44, i);
            if (indexOf == -1) {
                m1696g(idList.substring(i).trim());
                return;
            } else {
                m1696g(idList.substring(i, indexOf).trim());
                i = indexOf + 1;
            }
        }
    }

    private void setRadius(String idList) {
        if (idList == null) {
            return;
        }
        int i = 0;
        this.f3466l = 0;
        while (true) {
            int indexOf = idList.indexOf(44, i);
            if (indexOf == -1) {
                m1697h(idList.substring(i).trim());
                return;
            } else {
                m1697h(idList.substring(i, indexOf).trim());
                i = indexOf + 1;
            }
        }
    }

    public void addViewToCircularFlow(View view, int radius, float angle) {
        if (containsId(view.getId())) {
            return;
        }
        addView(view);
        this.f3467m++;
        float[] angles = getAngles();
        this.f3464j = angles;
        angles[this.f3467m - 1] = angle;
        this.f3466l++;
        int[] radius2 = getRadius();
        this.f3465k = radius2;
        radius2[this.f3466l - 1] = (int) (radius * this.myContext.getResources().getDisplayMetrics().density);
        m1698i();
    }

    /* renamed from: g */
    public final void m1696g(String angleString) {
        float[] fArr;
        if (angleString == null || angleString.length() == 0 || this.myContext == null || (fArr = this.f3464j) == null) {
            return;
        }
        if (this.f3467m + 1 > fArr.length) {
            this.f3464j = Arrays.copyOf(fArr, fArr.length + 1);
        }
        this.f3464j[this.f3467m] = Integer.parseInt(angleString);
        this.f3467m++;
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.f3464j, this.f3467m);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.f3465k, this.f3466l);
    }

    /* renamed from: h */
    public final void m1697h(String radiusString) {
        int[] iArr;
        if (radiusString == null || radiusString.length() == 0 || this.myContext == null || (iArr = this.f3465k) == null) {
            return;
        }
        if (this.f3466l + 1 > iArr.length) {
            this.f3465k = Arrays.copyOf(iArr, iArr.length + 1);
        }
        this.f3465k[this.f3466l] = (int) (Integer.parseInt(radiusString) * this.myContext.getResources().getDisplayMetrics().density);
        this.f3466l++;
    }

    /* renamed from: i */
    public final void m1698i() {
        this.f3462h = (ConstraintLayout) getParent();
        for (int i = 0; i < this.mCount; i++) {
            View viewById = this.f3462h.getViewById(this.mIds[i]);
            if (viewById != null) {
                int i2 = f3460s;
                float f = f3461t;
                int[] iArr = this.f3465k;
                if (iArr == null || i >= iArr.length) {
                    Integer num = this.f3471q;
                    if (num == null || num.intValue() == -1) {
                        Log.e(f3459r, "Added radius to view with id: " + this.mMap.get(Integer.valueOf(viewById.getId())));
                    } else {
                        this.f3466l++;
                        if (this.f3465k == null) {
                            this.f3465k = new int[1];
                        }
                        int[] radius = getRadius();
                        this.f3465k = radius;
                        radius[this.f3466l - 1] = i2;
                    }
                } else {
                    i2 = iArr[i];
                }
                float[] fArr = this.f3464j;
                if (fArr == null || i >= fArr.length) {
                    Float f2 = this.f3470p;
                    if (f2 == null || f2.floatValue() == -1.0f) {
                        Log.e(f3459r, "Added angle to view with id: " + this.mMap.get(Integer.valueOf(viewById.getId())));
                    } else {
                        this.f3467m++;
                        if (this.f3464j == null) {
                            this.f3464j = new float[1];
                        }
                        float[] angles = getAngles();
                        this.f3464j = angles;
                        angles[this.f3467m - 1] = f;
                    }
                } else {
                    f = fArr[i];
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) viewById.getLayoutParams();
                layoutParams.circleAngle = f;
                layoutParams.circleConstraint = this.f3463i;
                layoutParams.circleRadius = i2;
                viewById.setLayoutParams(layoutParams);
            }
        }
        applyLayoutFeatures();
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attrs) {
        super.init(attrs);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ConstraintLayout_Layout_circularflow_viewCenter) {
                    this.f3463i = obtainStyledAttributes.getResourceId(index, 0);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_circularflow_angles) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f3468n = string;
                    setAngles(string);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_circularflow_radiusInDP) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f3469o = string2;
                    setRadius(string2);
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_circularflow_defaultAngle) {
                    Float valueOf = Float.valueOf(obtainStyledAttributes.getFloat(index, f3461t));
                    this.f3470p = valueOf;
                    setDefaultAngle(valueOf.floatValue());
                } else if (index == C0503R.styleable.ConstraintLayout_Layout_circularflow_defaultRadius) {
                    Integer valueOf2 = Integer.valueOf(obtainStyledAttributes.getDimensionPixelSize(index, f3460s));
                    this.f3471q = valueOf2;
                    setDefaultRadius(valueOf2.intValue());
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public boolean isUpdatable(View view) {
        return containsId(view.getId()) && indexFromId(view.getId()) != -1;
    }

    /* renamed from: j */
    public final float[] m1699j(float[] angles, int index) {
        return (angles == null || index < 0 || index >= this.f3467m) ? angles : removeElementFromArray(angles, index);
    }

    /* renamed from: k */
    public final int[] m1700k(int[] radius, int index) {
        return (radius == null || index < 0 || index >= this.f3466l) ? radius : removeElementFromArray(radius, index);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f3468n;
        if (str != null) {
            this.f3464j = new float[1];
            setAngles(str);
        }
        String str2 = this.f3469o;
        if (str2 != null) {
            this.f3465k = new int[1];
            setRadius(str2);
        }
        Float f = this.f3470p;
        if (f != null) {
            setDefaultAngle(f.floatValue());
        }
        Integer num = this.f3471q;
        if (num != null) {
            setDefaultRadius(num.intValue());
        }
        m1698i();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public int removeView(View view) {
        int removeView = super.removeView(view);
        if (removeView == -1) {
            return removeView;
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this.f3462h);
        constraintSet.clear(view.getId(), 8);
        constraintSet.applyTo(this.f3462h);
        float[] fArr = this.f3464j;
        if (removeView < fArr.length) {
            this.f3464j = m1699j(fArr, removeView);
            this.f3467m--;
        }
        int[] iArr = this.f3465k;
        if (removeView < iArr.length) {
            this.f3465k = m1700k(iArr, removeView);
            this.f3466l--;
        }
        m1698i();
        return removeView;
    }

    public void setDefaultAngle(float angle) {
        f3461t = angle;
    }

    public void setDefaultRadius(int radius) {
        f3460s = radius;
    }

    public void updateAngle(View view, float angle) {
        if (!isUpdatable(view)) {
            Log.e(f3459r, "It was not possible to update angle to view with id: " + view.getId());
            return;
        }
        int indexFromId = indexFromId(view.getId());
        if (indexFromId > this.f3464j.length) {
            return;
        }
        float[] angles = getAngles();
        this.f3464j = angles;
        angles[indexFromId] = angle;
        m1698i();
    }

    public void updateRadius(View view, int radius) {
        if (!isUpdatable(view)) {
            Log.e(f3459r, "It was not possible to update radius to view with id: " + view.getId());
            return;
        }
        int indexFromId = indexFromId(view.getId());
        if (indexFromId > this.f3465k.length) {
            return;
        }
        int[] radius2 = getRadius();
        this.f3465k = radius2;
        radius2[indexFromId] = (int) (radius * this.myContext.getResources().getDisplayMetrics().density);
        m1698i();
    }

    public void updateReference(View view, int radius, float angle) {
        if (!isUpdatable(view)) {
            Log.e(f3459r, "It was not possible to update radius and angle to view with id: " + view.getId());
            return;
        }
        int indexFromId = indexFromId(view.getId());
        if (getAngles().length > indexFromId) {
            float[] angles = getAngles();
            this.f3464j = angles;
            angles[indexFromId] = angle;
        }
        if (getRadius().length > indexFromId) {
            int[] radius2 = getRadius();
            this.f3465k = radius2;
            radius2[indexFromId] = (int) (radius * this.myContext.getResources().getDisplayMetrics().density);
        }
        m1698i();
    }

    public CircularFlow(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CircularFlow(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public static float[] removeElementFromArray(float[] array, int index) {
        float[] fArr = new float[array.length - 1];
        int i = 0;
        for (int i2 = 0; i2 < array.length; i2++) {
            if (i2 != index) {
                fArr[i] = array[i2];
                i++;
            }
        }
        return fArr;
    }
}
