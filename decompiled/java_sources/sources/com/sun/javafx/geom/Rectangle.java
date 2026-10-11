package com.sun.javafx.geom;

import com.fasterxml.jackson.core.base.ParserBase;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes9.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x */
    public int f64056x;

    /* renamed from: y */
    public int f64057y;

    public Rectangle() {
        this(0, 0, 0, 0);
    }

    private void reshape(int i, int i2, int i3, int i4) {
        this.f64056x = i;
        this.f64057y = i2;
        this.width = i3;
        this.height = i4;
    }

    public void add(int i, int i2) {
        int i3 = this.width;
        int i4 = this.height;
        if ((i3 | i4) < 0) {
            this.f64056x = i;
            this.f64057y = i2;
            this.height = 0;
            this.width = 0;
            return;
        }
        int i5 = this.f64056x;
        int i6 = this.f64057y;
        long j = i3 + i5;
        long j2 = i4 + i6;
        if (i5 > i) {
            i5 = i;
        }
        if (i6 > i2) {
            i6 = i2;
        }
        long j3 = i;
        if (j < j3) {
            j = j3;
        }
        long j4 = i2;
        if (j2 < j4) {
            j2 = j4;
        }
        long j5 = j - i5;
        long j6 = j2 - i6;
        if (j5 > 2147483647L) {
            j5 = 2147483647L;
        }
        if (j6 > 2147483647L) {
            j6 = 2147483647L;
        }
        reshape(i5, i6, (int) j5, (int) j6);
    }

    public boolean contains(int i, int i2) {
        int i3 = this.width;
        int i4 = this.height;
        if ((i3 | i4) < 0) {
            return false;
        }
        int i5 = this.f64056x;
        int i6 = this.f64057y;
        if (i < i5 || i2 < i6) {
            return false;
        }
        int i7 = i3 + i5;
        int i8 = i4 + i6;
        if (i7 < i5 || i7 > i) {
            return i8 < i6 || i8 > i2;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Rectangle)) {
            return super.equals(obj);
        }
        Rectangle rectangle = (Rectangle) obj;
        return this.f64056x == rectangle.f64056x && this.f64057y == rectangle.f64057y && this.width == rectangle.width && this.height == rectangle.height;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r6 > 2147483647L) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void grow(int r13, int r14) {
        /*
            r12 = this;
            int r0 = r12.f64056x
            long r0 = (long) r0
            int r2 = r12.f64057y
            long r2 = (long) r2
            int r4 = r12.width
            long r4 = (long) r4
            int r6 = r12.height
            long r6 = (long) r6
            long r4 = r4 + r0
            long r6 = r6 + r2
            long r8 = (long) r13
            long r0 = r0 - r8
            long r13 = (long) r14
            long r2 = r2 - r13
            long r4 = r4 + r8
            long r6 = r6 + r13
            int r13 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            r8 = 2147483647(0x7fffffff, double:1.060997895E-314)
            r10 = -2147483648(0xffffffff80000000, double:NaN)
            if (r13 >= 0) goto L30
            long r4 = r4 - r0
            int r13 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r13 >= 0) goto L24
            r4 = r10
        L24:
            int r13 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r13 >= 0) goto L2a
            r0 = r10
            goto L47
        L2a:
            int r13 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r13 <= 0) goto L47
            r0 = r8
            goto L47
        L30:
            int r13 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r13 >= 0) goto L36
            r0 = r10
            goto L3b
        L36:
            int r13 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r13 <= 0) goto L3b
            r0 = r8
        L3b:
            long r4 = r4 - r0
            int r13 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r13 >= 0) goto L42
            r4 = r10
            goto L47
        L42:
            int r13 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r13 <= 0) goto L47
            r4 = r8
        L47:
            int r13 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r13 >= 0) goto L5f
            long r6 = r6 - r2
            int r13 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r13 >= 0) goto L51
            r6 = r10
        L51:
            int r13 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r13 >= 0) goto L58
            r8 = r6
            r2 = r10
            goto L75
        L58:
            int r13 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r13 <= 0) goto L5d
            r2 = r8
        L5d:
            r8 = r6
            goto L75
        L5f:
            int r13 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r13 >= 0) goto L65
            r2 = r10
            goto L6a
        L65:
            int r13 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r13 <= 0) goto L6a
            r2 = r8
        L6a:
            long r6 = r6 - r2
            int r13 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r13 >= 0) goto L71
            r8 = r10
            goto L75
        L71:
            int r13 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r13 <= 0) goto L5d
        L75:
            int r13 = (int) r0
            int r14 = (int) r2
            int r0 = (int) r4
            int r1 = (int) r8
            r12.reshape(r13, r14, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.javafx.geom.Rectangle.grow(int, int):void");
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f64056x) + (Float.floatToIntBits(this.f64057y) * 37) + (Float.floatToIntBits(this.width) * 43) + (Float.floatToIntBits(this.height) * 47);
    }

    public void intersectWith(Rectangle rectangle) {
        if (rectangle == null) {
            return;
        }
        int i = this.f64056x;
        int i2 = this.f64057y;
        int i3 = rectangle.f64056x;
        int i4 = rectangle.f64057y;
        long j = i + this.width;
        long j2 = i2 + this.height;
        long j3 = i3 + rectangle.width;
        long j4 = i4 + rectangle.height;
        if (i < i3) {
            i = i3;
        }
        if (i2 < i4) {
            i2 = i4;
        }
        if (j > j3) {
            j = j3;
        }
        if (j2 > j4) {
            j2 = j4;
        }
        long j5 = j - i;
        long j6 = j2 - i2;
        if (j5 < ParserBase.f21225q) {
            j5 = -2147483648L;
        }
        if (j6 < ParserBase.f21225q) {
            j6 = -2147483648L;
        }
        setBounds(i, i2, (int) j5, (int) j6);
    }

    public Rectangle intersection(Rectangle rectangle) {
        Rectangle rectangle2 = new Rectangle(this);
        rectangle2.intersectWith(rectangle);
        return rectangle2;
    }

    public boolean isEmpty() {
        return this.width <= 0 || this.height <= 0;
    }

    public void setBounds(Rectangle rectangle) {
        setBounds(rectangle.f64056x, rectangle.f64057y, rectangle.width, rectangle.height);
    }

    public RectBounds toRectBounds() {
        return new RectBounds(this.f64056x, this.f64057y, r1 + this.width, r3 + this.height);
    }

    public String toString() {
        return getClass().getName() + "[x=" + this.f64056x + ",y=" + this.f64057y + ",width=" + this.width + ",height=" + this.height + IteratorUtils.f104924b;
    }

    public void translate(int i, int i2) {
        int i3 = this.f64056x;
        int i4 = i3 + i;
        int i5 = Integer.MIN_VALUE;
        if (i < 0) {
            if (i4 > i3) {
                int i6 = this.width;
                if (i6 >= 0) {
                    this.width = i6 + (i4 - Integer.MIN_VALUE);
                }
                i4 = Integer.MIN_VALUE;
            }
        } else if (i4 < i3) {
            int i7 = this.width;
            if (i7 >= 0) {
                int i8 = i7 + (i4 - Integer.MAX_VALUE);
                this.width = i8;
                if (i8 < 0) {
                    this.width = Integer.MAX_VALUE;
                }
            }
            i4 = Integer.MAX_VALUE;
        }
        this.f64056x = i4;
        int i9 = this.f64057y;
        int i10 = i9 + i2;
        if (i2 < 0) {
            if (i10 > i9) {
                int i11 = this.height;
                if (i11 >= 0) {
                    this.height = i11 + (i10 - Integer.MIN_VALUE);
                }
            }
            i5 = i10;
        } else {
            if (i10 < i9) {
                int i12 = this.height;
                if (i12 >= 0) {
                    int i13 = i12 + (i10 - Integer.MAX_VALUE);
                    this.height = i13;
                    if (i13 < 0) {
                        this.height = Integer.MAX_VALUE;
                    }
                }
                i5 = Integer.MAX_VALUE;
            }
            i5 = i10;
        }
        this.f64057y = i5;
    }

    public Rectangle(BaseBounds baseBounds) {
        setBounds(baseBounds);
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        reshape(i, i2, i3, i4);
    }

    public void setBounds(BaseBounds baseBounds) {
        this.f64056x = (int) Math.floor(baseBounds.getMinX());
        this.f64057y = (int) Math.floor(baseBounds.getMinY());
        int ceil = (int) Math.ceil(baseBounds.getMaxX());
        int ceil2 = (int) Math.ceil(baseBounds.getMaxY());
        this.width = ceil - this.f64056x;
        this.height = ceil2 - this.f64057y;
    }

    public Rectangle(Rectangle rectangle) {
        this(rectangle.f64056x, rectangle.f64057y, rectangle.width, rectangle.height);
    }

    public Rectangle(int i, int i2, int i3, int i4) {
        this.f64056x = i;
        this.f64057y = i2;
        this.width = i3;
        this.height = i4;
    }

    public boolean contains(Rectangle rectangle) {
        return contains(rectangle.f64056x, rectangle.f64057y, rectangle.width, rectangle.height);
    }

    public boolean contains(int i, int i2, int i3, int i4) {
        int i5 = this.width;
        int i6 = this.height;
        if ((i5 | i6 | i3 | i4) < 0) {
            return false;
        }
        int i7 = this.f64056x;
        int i8 = this.f64057y;
        if (i < i7 || i2 < i8) {
            return false;
        }
        int i9 = i5 + i7;
        int i10 = i3 + i;
        if (i10 <= i) {
            if (i9 >= i7 || i10 > i9) {
                return false;
            }
        } else if (i9 >= i7 && i10 > i9) {
            return false;
        }
        int i11 = i6 + i8;
        int i12 = i4 + i2;
        return i12 <= i2 ? i11 < i8 && i12 <= i11 : i11 < i8 || i12 <= i11;
    }

    public void add(Rectangle rectangle) {
        long j = this.width;
        long j2 = this.height;
        if ((j | j2) < 0) {
            reshape(rectangle.f64056x, rectangle.f64057y, rectangle.width, rectangle.height);
        }
        long j3 = rectangle.width;
        long j4 = rectangle.height;
        if ((j3 | j4) < 0) {
            return;
        }
        int i = this.f64056x;
        int i2 = this.f64057y;
        long j5 = j + i;
        long j6 = j2 + i2;
        int i3 = rectangle.f64056x;
        int i4 = rectangle.f64057y;
        long j7 = j3 + i3;
        long j8 = j4 + i4;
        if (i > i3) {
            i = i3;
        }
        if (i2 > i4) {
            i2 = i4;
        }
        if (j5 < j7) {
            j5 = j7;
        }
        if (j6 < j8) {
            j6 = j8;
        }
        long j9 = j5 - i;
        long j10 = j6 - i2;
        if (j9 > 2147483647L) {
            j9 = 2147483647L;
        }
        if (j10 > 2147483647L) {
            j10 = 2147483647L;
        }
        reshape(i, i2, (int) j9, (int) j10);
    }

    public Rectangle(int i, int i2) {
        this(0, 0, i, i2);
    }
}
