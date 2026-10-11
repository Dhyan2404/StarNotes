package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* loaded from: classes3.dex */
public class Dimension {

    /* renamed from: a */
    public final int f3135a;

    /* renamed from: b */
    public int f3136b;

    /* renamed from: c */
    public int f3137c;

    /* renamed from: d */
    public float f3138d;

    /* renamed from: e */
    public int f3139e;

    /* renamed from: f */
    public String f3140f;

    /* renamed from: g */
    public Object f3141g;

    /* renamed from: h */
    public boolean f3142h;
    public static final Object FIXED_DIMENSION = new Object();
    public static final Object WRAP_DIMENSION = new Object();
    public static final Object SPREAD_DIMENSION = new Object();
    public static final Object PARENT_DIMENSION = new Object();
    public static final Object PERCENT_DIMENSION = new Object();
    public static final Object RATIO_DIMENSION = new Object();

    /* loaded from: classes3.dex */
    public enum Type {
        FIXED,
        WRAP,
        MATCH_PARENT,
        MATCH_CONSTRAINT
    }

    public Dimension() {
        this.f3135a = -2;
        this.f3136b = 0;
        this.f3137c = Integer.MAX_VALUE;
        this.f3138d = 1.0f;
        this.f3139e = 0;
        this.f3140f = null;
        this.f3141g = WRAP_DIMENSION;
        this.f3142h = false;
    }

    public static Dimension Fixed(int i) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(i);
        return dimension;
    }

    public static Dimension Parent() {
        return new Dimension(PARENT_DIMENSION);
    }

    public static Dimension Percent(Object obj, float f) {
        Dimension dimension = new Dimension(PERCENT_DIMENSION);
        dimension.percent(obj, f);
        return dimension;
    }

    public static Dimension Ratio(String str) {
        Dimension dimension = new Dimension(RATIO_DIMENSION);
        dimension.ratio(str);
        return dimension;
    }

    public static Dimension Spread() {
        return new Dimension(SPREAD_DIMENSION);
    }

    public static Dimension Suggested(int i) {
        Dimension dimension = new Dimension();
        dimension.suggested(i);
        return dimension;
    }

    public static Dimension Wrap() {
        return new Dimension(WRAP_DIMENSION);
    }

    /* renamed from: a */
    public int m1537a() {
        return this.f3139e;
    }

    public void apply(State state, ConstraintWidget constraintWidget, int i) {
        String str = this.f3140f;
        if (str != null) {
            constraintWidget.setDimensionRatio(str);
        }
        int i2 = 2;
        if (i == 0) {
            if (this.f3142h) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                Object obj = this.f3141g;
                if (obj == WRAP_DIMENSION) {
                    i2 = 1;
                } else if (obj != PERCENT_DIMENSION) {
                    i2 = 0;
                }
                constraintWidget.setHorizontalMatchStyle(i2, this.f3136b, this.f3137c, this.f3138d);
                return;
            }
            int i3 = this.f3136b;
            if (i3 > 0) {
                constraintWidget.setMinWidth(i3);
            }
            int i4 = this.f3137c;
            if (i4 < Integer.MAX_VALUE) {
                constraintWidget.setMaxWidth(i4);
            }
            Object obj2 = this.f3141g;
            if (obj2 == WRAP_DIMENSION) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                return;
            }
            if (obj2 == PARENT_DIMENSION) {
                constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                return;
            } else {
                if (obj2 == null) {
                    constraintWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                    constraintWidget.setWidth(this.f3139e);
                    return;
                }
                return;
            }
        }
        if (this.f3142h) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            Object obj3 = this.f3141g;
            if (obj3 == WRAP_DIMENSION) {
                i2 = 1;
            } else if (obj3 != PERCENT_DIMENSION) {
                i2 = 0;
            }
            constraintWidget.setVerticalMatchStyle(i2, this.f3136b, this.f3137c, this.f3138d);
            return;
        }
        int i5 = this.f3136b;
        if (i5 > 0) {
            constraintWidget.setMinHeight(i5);
        }
        int i6 = this.f3137c;
        if (i6 < Integer.MAX_VALUE) {
            constraintWidget.setMaxHeight(i6);
        }
        Object obj4 = this.f3141g;
        if (obj4 == WRAP_DIMENSION) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            return;
        }
        if (obj4 == PARENT_DIMENSION) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
        } else if (obj4 == null) {
            constraintWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.setHeight(this.f3139e);
        }
    }

    /* renamed from: b */
    public void m1538b(int i) {
        this.f3142h = false;
        this.f3141g = null;
        this.f3139e = i;
    }

    public boolean equalsFixedValue(int i) {
        return this.f3141g == null && this.f3139e == i;
    }

    public Dimension fixed(Object obj) {
        this.f3141g = obj;
        if (obj instanceof Integer) {
            this.f3139e = ((Integer) obj).intValue();
            this.f3141g = null;
        }
        return this;
    }

    public Dimension max(int i) {
        if (this.f3137c >= 0) {
            this.f3137c = i;
        }
        return this;
    }

    public Dimension min(int i) {
        if (i >= 0) {
            this.f3136b = i;
        }
        return this;
    }

    public Dimension percent(Object obj, float f) {
        this.f3138d = f;
        return this;
    }

    public Dimension ratio(String str) {
        this.f3140f = str;
        return this;
    }

    public Dimension suggested(int i) {
        this.f3142h = true;
        if (i >= 0) {
            this.f3137c = i;
        }
        return this;
    }

    public Dimension min(Object obj) {
        if (obj == WRAP_DIMENSION) {
            this.f3136b = -2;
        }
        return this;
    }

    public static Dimension Fixed(Object obj) {
        Dimension dimension = new Dimension(FIXED_DIMENSION);
        dimension.fixed(obj);
        return dimension;
    }

    public static Dimension Suggested(Object obj) {
        Dimension dimension = new Dimension();
        dimension.suggested(obj);
        return dimension;
    }

    public Dimension max(Object obj) {
        Object obj2 = WRAP_DIMENSION;
        if (obj == obj2 && this.f3142h) {
            this.f3141g = obj2;
            this.f3137c = Integer.MAX_VALUE;
        }
        return this;
    }

    public Dimension suggested(Object obj) {
        this.f3141g = obj;
        this.f3142h = true;
        return this;
    }

    public Dimension fixed(int i) {
        this.f3141g = null;
        this.f3139e = i;
        return this;
    }

    public Dimension(Object obj) {
        this.f3135a = -2;
        this.f3136b = 0;
        this.f3137c = Integer.MAX_VALUE;
        this.f3138d = 1.0f;
        this.f3139e = 0;
        this.f3140f = null;
        this.f3142h = false;
        this.f3141g = obj;
    }
}
