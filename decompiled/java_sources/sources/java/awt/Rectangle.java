package java.awt;

import com.fasterxml.jackson.core.base.ParserBase;
import java.awt.geom.Rectangle2D;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class Rectangle extends Rectangle2D implements Shape, Serializable {
    private static final long serialVersionUID = -4345857070255674764L;
    public int height;
    public int width;

    /* renamed from: x */
    public int f97732x;

    /* renamed from: y */
    public int f97733y;

    static {
        Toolkit.loadLibraries();
        if (GraphicsEnvironment.isHeadless()) {
            return;
        }
        initIDs();
    }

    public Rectangle() {
        this(0, 0, 0, 0);
    }

    private static int clip(double d, boolean z) {
        if (d <= -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        if (d >= 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        return (int) (z ? Math.ceil(d) : Math.floor(d));
    }

    private static void initIDs() {
    }

    public void add(int i, int i2) {
        int i3 = this.width;
        int i4 = this.height;
        if ((i3 | i4) < 0) {
            this.f97732x = i;
            this.f97733y = i2;
            this.height = 0;
            this.width = 0;
            return;
        }
        int i5 = this.f97732x;
        int i6 = this.f97733y;
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

    public boolean contains(Point point) {
        return contains(point.f97730x, point.f97731y);
    }

    @Override // java.awt.geom.Rectangle2D
    public Rectangle2D createIntersection(Rectangle2D rectangle2D) {
        if (rectangle2D instanceof Rectangle) {
            return intersection((Rectangle) rectangle2D);
        }
        Rectangle2D.Double r0 = new Rectangle2D.Double();
        Rectangle2D.intersect(this, rectangle2D, r0);
        return r0;
    }

    @Override // java.awt.geom.Rectangle2D
    public Rectangle2D createUnion(Rectangle2D rectangle2D) {
        if (rectangle2D instanceof Rectangle) {
            return union((Rectangle) rectangle2D);
        }
        Rectangle2D.Double r0 = new Rectangle2D.Double();
        Rectangle2D.union(this, rectangle2D, r0);
        return r0;
    }

    @Override // java.awt.geom.Rectangle2D
    public boolean equals(Object obj) {
        if (!(obj instanceof Rectangle)) {
            return super.equals(obj);
        }
        Rectangle rectangle = (Rectangle) obj;
        return this.f97732x == rectangle.f97732x && this.f97733y == rectangle.f97733y && this.width == rectangle.width && this.height == rectangle.height;
    }

    @Override // java.awt.geom.RectangularShape, java.awt.Shape
    public Rectangle getBounds() {
        return new Rectangle(this.f97732x, this.f97733y, this.width, this.height);
    }

    @Override // java.awt.geom.Rectangle2D, java.awt.Shape
    public Rectangle2D getBounds2D() {
        return new Rectangle(this.f97732x, this.f97733y, this.width, this.height);
    }

    @Override // java.awt.geom.RectangularShape
    public double getHeight() {
        return this.height;
    }

    public Point getLocation() {
        return new Point(this.f97732x, this.f97733y);
    }

    public Dimension getSize() {
        return new Dimension(this.width, this.height);
    }

    @Override // java.awt.geom.RectangularShape
    public double getWidth() {
        return this.width;
    }

    @Override // java.awt.geom.RectangularShape
    public double getX() {
        return this.f97732x;
    }

    @Override // java.awt.geom.RectangularShape
    public double getY() {
        return this.f97733y;
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
            int r0 = r12.f97732x
            long r0 = (long) r0
            int r2 = r12.f97733y
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
        throw new UnsupportedOperationException("Method not decompiled: java.awt.Rectangle.grow(int, int):void");
    }

    @Deprecated
    public boolean inside(int i, int i2) {
        int i3 = this.width;
        int i4 = this.height;
        if ((i3 | i4) < 0) {
            return false;
        }
        int i5 = this.f97732x;
        int i6 = this.f97733y;
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

    public Rectangle intersection(Rectangle rectangle) {
        int i = this.f97732x;
        int i2 = this.f97733y;
        int i3 = rectangle.f97732x;
        int i4 = rectangle.f97733y;
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
        return new Rectangle(i, i2, (int) j5, (int) j6);
    }

    public boolean intersects(Rectangle rectangle) {
        int i = this.width;
        int i2 = this.height;
        int i3 = rectangle.width;
        int i4 = rectangle.height;
        if (i3 <= 0 || i4 <= 0 || i <= 0 || i2 <= 0) {
            return false;
        }
        int i5 = this.f97732x;
        int i6 = this.f97733y;
        int i7 = rectangle.f97732x;
        int i8 = rectangle.f97733y;
        int i9 = i3 + i7;
        int i10 = i4 + i8;
        int i11 = i + i5;
        int i12 = i2 + i6;
        if (i9 >= i7 && i9 <= i5) {
            return false;
        }
        if (i10 >= i8 && i10 <= i6) {
            return false;
        }
        if (i11 < i5 || i11 > i7) {
            return i12 < i6 || i12 > i8;
        }
        return false;
    }

    @Override // java.awt.geom.RectangularShape
    public boolean isEmpty() {
        return this.width <= 0 || this.height <= 0;
    }

    @Deprecated
    public void move(int i, int i2) {
        this.f97732x = i;
        this.f97733y = i2;
    }

    @Override // java.awt.geom.Rectangle2D
    public int outcode(double d, double d2) {
        int i;
        int i2 = this.width;
        if (i2 <= 0) {
            i = 5;
        } else {
            int i3 = this.f97732x;
            i = d < ((double) i3) ? 1 : d > ((double) i3) + ((double) i2) ? 4 : 0;
        }
        int i4 = this.height;
        if (i4 <= 0) {
            return i | 10;
        }
        int i5 = this.f97733y;
        return d2 < ((double) i5) ? i | 2 : d2 > ((double) i5) + ((double) i4) ? i | 8 : i;
    }

    @Deprecated
    public void reshape(int i, int i2, int i3, int i4) {
        this.f97732x = i;
        this.f97733y = i2;
        this.width = i3;
        this.height = i4;
    }

    @Deprecated
    public void resize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public void setBounds(Rectangle rectangle) {
        setBounds(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public void setLocation(Point point) {
        setLocation(point.f97730x, point.f97731y);
    }

    @Override // java.awt.geom.Rectangle2D
    public void setRect(double d, double d2, double d3, double d4) {
        int clip;
        int clip2;
        int i = -1;
        int i2 = Integer.MAX_VALUE;
        if (d > 4.294967294E9d) {
            clip2 = -1;
            clip = Integer.MAX_VALUE;
        } else {
            clip = clip(d, false);
            double d5 = d3 >= 0.0d ? d3 + (d - clip) : d3;
            clip2 = clip(d5, d5 >= 0.0d);
        }
        if (d2 <= 4.294967294E9d) {
            i2 = clip(d2, false);
            double d6 = d4 >= 0.0d ? d4 + (d2 - i2) : d4;
            i = clip(d6, d6 >= 0.0d);
        }
        reshape(clip, i2, clip2, i);
    }

    public void setSize(Dimension dimension) {
        setSize(dimension.width, dimension.height);
    }

    public String toString() {
        return getClass().getName() + "[x=" + this.f97732x + ",y=" + this.f97733y + ",width=" + this.width + ",height=" + this.height + IteratorUtils.f104924b;
    }

    public void translate(int i, int i2) {
        int i3 = this.f97732x;
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
        this.f97732x = i4;
        int i9 = this.f97733y;
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
        this.f97733y = i5;
    }

    public Rectangle union(Rectangle rectangle) {
        long j = this.width;
        long j2 = this.height;
        if ((j | j2) < 0) {
            return new Rectangle(rectangle);
        }
        long j3 = rectangle.width;
        long j4 = rectangle.height;
        if ((j3 | j4) < 0) {
            return new Rectangle(this);
        }
        int i = this.f97732x;
        int i2 = this.f97733y;
        long j5 = j + i;
        long j6 = j2 + i2;
        int i3 = rectangle.f97732x;
        int i4 = rectangle.f97733y;
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
        return new Rectangle(i, i2, (int) j9, (int) j10);
    }

    public Rectangle(Rectangle rectangle) {
        this(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public boolean contains(int i, int i2) {
        return inside(i, i2);
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        reshape(i, i2, i3, i4);
    }

    public void setLocation(int i, int i2) {
        move(i, i2);
    }

    public void setSize(int i, int i2) {
        resize(i, i2);
    }

    public Rectangle(int i, int i2, int i3, int i4) {
        this.f97732x = i;
        this.f97733y = i2;
        this.width = i3;
        this.height = i4;
    }

    public boolean contains(Rectangle rectangle) {
        return contains(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public boolean contains(int i, int i2, int i3, int i4) {
        int i5 = this.width;
        int i6 = this.height;
        if ((i5 | i6 | i3 | i4) < 0) {
            return false;
        }
        int i7 = this.f97732x;
        int i8 = this.f97733y;
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

    public Rectangle(int i, int i2) {
        this(0, 0, i, i2);
    }

    public void add(Point point) {
        add(point.f97730x, point.f97731y);
    }

    public Rectangle(Point point, Dimension dimension) {
        this(point.f97730x, point.f97731y, dimension.width, dimension.height);
    }

    public void add(Rectangle rectangle) {
        long j = this.width;
        long j2 = this.height;
        if ((j | j2) < 0) {
            reshape(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
        }
        long j3 = rectangle.width;
        long j4 = rectangle.height;
        if ((j3 | j4) < 0) {
            return;
        }
        int i = this.f97732x;
        int i2 = this.f97733y;
        long j5 = j + i;
        long j6 = j2 + i2;
        int i3 = rectangle.f97732x;
        int i4 = rectangle.f97733y;
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

    public Rectangle(Point point) {
        this(point.f97730x, point.f97731y, 0, 0);
    }

    public Rectangle(Dimension dimension) {
        this(0, 0, dimension.width, dimension.height);
    }
}
