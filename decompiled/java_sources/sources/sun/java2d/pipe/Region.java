package sun.java2d.pipe;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.geom.RectangularShape;

/* loaded from: classes16.dex */
public class Region {
    static final int GROW_SIZE = 50;
    private static final int INCLUDE_A = 1;
    private static final int INCLUDE_B = 2;
    private static final int INCLUDE_COMMON = 4;
    static final int INIT_SIZE = 50;
    int[] bands;
    int endIndex;
    int hix;
    int hiy;
    int lox;
    int loy;
    public static final Region EMPTY_REGION = new Region(0, 0, 0, 0);
    public static final Region WHOLE_REGION = new Region(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);

    static {
        initIDs();
    }

    public Region(int i, int i2, int i3, int i4) {
        this.lox = i;
        this.loy = i2;
        this.hix = i3;
        this.hiy = i4;
    }

    private void appendSpan(int[] iArr) {
        int[] iArr2;
        int i;
        int i2 = iArr[0];
        int i3 = this.lox;
        if (i2 < i3) {
            i2 = i3;
        }
        int i4 = iArr[1];
        int i5 = this.loy;
        if (i4 < i5) {
            i4 = i5;
        }
        int i6 = iArr[2];
        int i7 = this.hix;
        if (i6 > i7) {
            i6 = i7;
        }
        int i8 = iArr[3];
        int i9 = this.hiy;
        if (i8 > i9) {
            i8 = i9;
        }
        if (i6 <= i2 || i8 <= i4) {
            return;
        }
        int i10 = iArr[4];
        int i11 = this.endIndex;
        if (i11 == 0 || i4 >= (i = (iArr2 = this.bands)[i10 + 1])) {
            if (this.bands == null) {
                this.bands = new int[50];
            } else {
                needSpace(5);
                endRow(iArr);
                i10 = iArr[4];
            }
            int[] iArr3 = this.bands;
            int i12 = this.endIndex;
            int i13 = i12 + 1;
            iArr3[i12] = i4;
            int i14 = i13 + 1;
            iArr3[i13] = i8;
            this.endIndex = i14 + 1;
            iArr3[i14] = 0;
        } else {
            if (i4 != iArr2[i10] || i8 != i || i2 < iArr2[i11 - 1]) {
                throw new InternalError("bad span");
            }
            if (i2 == iArr2[i11 - 1]) {
                iArr2[i11 - 1] = i6;
                return;
            }
            needSpace(2);
        }
        int[] iArr4 = this.bands;
        int i15 = this.endIndex;
        int i16 = i15 + 1;
        iArr4[i15] = i2;
        this.endIndex = i16 + 1;
        iArr4[i16] = i6;
        int i17 = i10 + 2;
        iArr4[i17] = iArr4[i17] + 1;
    }

    private void calcBBox() {
        int[] iArr = this.bands;
        int i = this.endIndex;
        if (i <= 5) {
            if (i == 0) {
                this.hiy = 0;
                this.hix = 0;
                this.loy = 0;
                this.lox = 0;
            } else {
                this.loy = iArr[0];
                this.hiy = iArr[1];
                this.lox = iArr[3];
                this.hix = iArr[4];
                this.endIndex = 0;
            }
            this.bands = null;
            return;
        }
        int i2 = this.hix;
        int i3 = this.lox;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.endIndex) {
            int i6 = iArr[i4 + 2];
            int i7 = i4 + 3;
            int i8 = iArr[i7];
            if (i2 > i8) {
                i2 = i8;
            }
            int i9 = i7 + (i6 * 2);
            int i10 = iArr[i9 - 1];
            if (i3 < i10) {
                i3 = i10;
            }
            i5 = i4;
            i4 = i9;
        }
        this.lox = i2;
        this.loy = iArr[0];
        this.hix = i3;
        this.hiy = iArr[i5 + 1];
    }

    public static int clipAdd(int i, int i2) {
        int i3 = i + i2;
        if ((i3 > i) != (i2 > 0)) {
            return i2 < 0 ? Integer.MIN_VALUE : Integer.MAX_VALUE;
        }
        return i3;
    }

    public static int clipRound(double d) {
        double d2 = d - 0.5d;
        if (d2 < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        if (d2 > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        return (int) Math.ceil(d2);
    }

    public static int clipScale(int i, double d) {
        if (d == 1.0d) {
            return i;
        }
        double d2 = i * d;
        if (d2 < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        if (d2 > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        return (int) Math.round(d2);
    }

    public static int dimAdd(int i, int i2) {
        if (i2 <= 0) {
            return i;
        }
        int i3 = i2 + i;
        if (i3 < i) {
            return Integer.MAX_VALUE;
        }
        return i3;
    }

    private void endRow(int[] iArr) {
        int i = iArr[4];
        int i2 = iArr[5];
        if (i > i2) {
            int[] iArr2 = this.bands;
            if (iArr2[i2 + 1] == iArr2[i]) {
                int i3 = iArr2[i2 + 2];
                int i4 = iArr2[i + 2];
                if (i3 == i4) {
                    int i5 = i4 * 2;
                    int i6 = i + 3;
                    int i7 = i2 + 3;
                    while (true) {
                        if (i5 <= 0) {
                            break;
                        }
                        int i8 = i6 + 1;
                        int i9 = i7 + 1;
                        if (iArr2[i6] != iArr2[i7]) {
                            i7 = i9;
                            break;
                        } else {
                            i5--;
                            i6 = i8;
                            i7 = i9;
                        }
                    }
                    if (i5 == 0) {
                        iArr2[iArr[5] + 1] = iArr2[i7 + 1];
                        this.endIndex = i7;
                        return;
                    }
                }
            }
        }
        iArr[5] = iArr[4];
        iArr[4] = this.endIndex;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x015a, code lost:
    
        if ((r28 & 1) != 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x015c, code lost:
    
        r23 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0167, code lost:
    
        if ((r28 & 2) != 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0170, code lost:
    
        if ((r28 & 4) != 0) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void filterSpans(sun.java2d.pipe.Region r26, sun.java2d.pipe.Region r27, int r28) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.pipe.Region.filterSpans(sun.java2d.pipe.Region, sun.java2d.pipe.Region, int):void");
    }

    public static Region getInstance(Shape shape, AffineTransform affineTransform) {
        return getInstance(WHOLE_REGION, false, shape, affineTransform);
    }

    public static Region getInstanceXYWH(int i, int i2, int i3, int i4) {
        return getInstanceXYXY(i, i2, dimAdd(i, i3), dimAdd(i2, i4));
    }

    public static Region getInstanceXYXY(int i, int i2, int i3, int i4) {
        return new Region(i, i2, i3, i4);
    }

    private Region getSafeTranslatedRegion(int i, int i2) {
        int i3;
        Region region = new Region(clipAdd(this.lox, i), clipAdd(this.loy, i2), clipAdd(this.hix, i), clipAdd(this.hiy, i2));
        int[] iArr = this.bands;
        if (iArr != null) {
            int i4 = this.endIndex;
            int[] iArr2 = new int[i4];
            int i5 = 0;
            int i6 = 0;
            while (i5 < i4) {
                int i7 = i6 + 1;
                int i8 = i5 + 1;
                int clipAdd = clipAdd(iArr[i5], i2);
                iArr2[i6] = clipAdd;
                int i9 = i7 + 1;
                int i10 = i8 + 1;
                int clipAdd2 = clipAdd(iArr[i8], i2);
                iArr2[i7] = clipAdd2;
                int i11 = i9 + 1;
                int i12 = i10 + 1;
                int i13 = iArr[i10];
                iArr2[i9] = i13;
                if (clipAdd < clipAdd2) {
                    i3 = i11;
                    while (true) {
                        i13--;
                        if (i13 < 0) {
                            break;
                        }
                        int i14 = i12 + 1;
                        int clipAdd3 = clipAdd(iArr[i12], i);
                        i12 = i14 + 1;
                        int clipAdd4 = clipAdd(iArr[i14], i);
                        if (clipAdd3 < clipAdd4) {
                            int i15 = i3 + 1;
                            iArr2[i3] = clipAdd3;
                            i3 = i15 + 1;
                            iArr2[i15] = clipAdd4;
                        }
                    }
                } else {
                    i12 += i13 * 2;
                    i3 = i11;
                }
                if (i3 > i11) {
                    iArr2[i11 - 1] = (i3 - i11) / 2;
                    i6 = i3;
                } else {
                    i6 = i11 - 3;
                }
                i5 = i12;
            }
            if (i6 > 5) {
                region.endIndex = i6;
                region.bands = iArr2;
            } else if (i6 < 5) {
                region.hiy = 0;
                region.hix = 0;
                region.loy = 0;
                region.lox = 0;
            } else {
                region.loy = iArr2[0];
                region.hiy = iArr2[1];
                region.lox = iArr2[3];
                region.hix = iArr2[4];
            }
        }
        return region;
    }

    private static void initIDs() {
    }

    private void needSpace(int i) {
        int i2 = this.endIndex;
        int i3 = i + i2;
        int[] iArr = this.bands;
        if (i3 >= iArr.length) {
            int[] iArr2 = new int[iArr.length + 50];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.bands = iArr2;
        }
    }

    public void appendSpans(SpanIterator spanIterator) {
        int[] iArr = new int[6];
        while (spanIterator.nextSpan(iArr)) {
            appendSpan(iArr);
        }
        endRow(iArr);
        calcBBox();
    }

    public void clipBoxToBounds(int[] iArr) {
        int i = iArr[0];
        int i2 = this.lox;
        if (i < i2) {
            iArr[0] = i2;
        }
        int i3 = iArr[1];
        int i4 = this.loy;
        if (i3 < i4) {
            iArr[1] = i4;
        }
        int i5 = iArr[2];
        int i6 = this.hix;
        if (i5 > i6) {
            iArr[2] = i6;
        }
        int i7 = iArr[3];
        int i8 = this.hiy;
        if (i7 > i8) {
            iArr[3] = i8;
        }
    }

    public boolean contains(int i, int i2) {
        if (i >= this.lox && i < this.hix && i2 >= this.loy && i2 < this.hiy) {
            if (this.bands != null) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.endIndex) {
                        break;
                    }
                    int[] iArr = this.bands;
                    int i4 = i3 + 1;
                    if (i2 < iArr[i3]) {
                        return false;
                    }
                    int i5 = i4 + 1;
                    if (i2 >= iArr[i4]) {
                        i3 = (iArr[i5] * 2) + i5 + 1;
                    } else {
                        int i6 = i5 + 1;
                        int i7 = (iArr[i5] * 2) + i6;
                        while (i6 < i7) {
                            int[] iArr2 = this.bands;
                            int i8 = i6 + 1;
                            if (i < iArr2[i6]) {
                                return false;
                            }
                            i6 = i8 + 1;
                            if (i < iArr2[i8]) {
                                return true;
                            }
                        }
                    }
                }
            } else {
                return true;
            }
        }
        return false;
    }

    public boolean encompasses(Region region) {
        return this.bands == null && this.lox <= region.lox && this.loy <= region.loy && this.hix >= region.hix && this.hiy >= region.hiy;
    }

    public boolean encompassesXYWH(int i, int i2, int i3, int i4) {
        return encompassesXYXY(i, i2, dimAdd(i, i3), dimAdd(i2, i4));
    }

    public boolean encompassesXYXY(int i, int i2, int i3, int i4) {
        return this.bands == null && this.lox <= i && this.loy <= i2 && this.hix >= i3 && this.hiy >= i4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Region)) {
            return false;
        }
        Region region = (Region) obj;
        if (isEmpty()) {
            return region.isEmpty();
        }
        if (region.isEmpty() || region.lox != this.lox || region.loy != this.loy || region.hix != this.hix || region.hiy != this.hiy) {
            return false;
        }
        int[] iArr = this.bands;
        if (iArr == null) {
            return region.bands == null;
        }
        int[] iArr2 = region.bands;
        if (iArr2 == null || this.endIndex != region.endIndex) {
            return false;
        }
        for (int i = 0; i < this.endIndex; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public SpanIterator filter(SpanIterator spanIterator) {
        if (this.bands != null) {
            return new RegionClipSpanIterator(this, spanIterator);
        }
        spanIterator.intersectClipBox(this.lox, this.loy, this.hix, this.hiy);
        return spanIterator;
    }

    public void getBounds(int[] iArr) {
        iArr[0] = this.lox;
        iArr[1] = this.loy;
        iArr[2] = this.hix;
        iArr[3] = this.hiy;
    }

    public Region getBoundsIntersection(Rectangle rectangle) {
        return getBoundsIntersectionXYWH(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public Region getBoundsIntersectionXYWH(int i, int i2, int i3, int i4) {
        return getBoundsIntersectionXYXY(i, i2, dimAdd(i, i3), dimAdd(i2, i4));
    }

    public Region getBoundsIntersectionXYXY(int i, int i2, int i3, int i4) {
        if (this.bands == null && this.lox >= i && this.loy >= i2 && this.hix <= i3 && this.hiy <= i4) {
            return this;
        }
        int i5 = this.lox;
        if (i < i5) {
            i = i5;
        }
        int i6 = this.loy;
        if (i2 < i6) {
            i2 = i6;
        }
        int i7 = this.hix;
        if (i3 > i7) {
            i3 = i7;
        }
        int i8 = this.hiy;
        if (i4 > i8) {
            i4 = i8;
        }
        return new Region(i, i2, i3, i4);
    }

    public Region getDifference(Region region) {
        if (!region.intersectsQuickCheck(this)) {
            return this;
        }
        if (isInsideQuickCheck(region)) {
            return EMPTY_REGION;
        }
        Region region2 = new Region(this.lox, this.loy, this.hix, this.hiy);
        region2.filterSpans(this, region, 1);
        return region2;
    }

    public Region getExclusiveOr(Region region) {
        if (region.isEmpty()) {
            return this;
        }
        if (isEmpty()) {
            return region;
        }
        int i = region.lox;
        int i2 = this.lox;
        if (i > i2) {
            i = i2;
        }
        int i3 = region.loy;
        int i4 = this.loy;
        if (i3 > i4) {
            i3 = i4;
        }
        int i5 = region.hix;
        int i6 = this.hix;
        if (i5 < i6) {
            i5 = i6;
        }
        int i7 = region.hiy;
        int i8 = this.hiy;
        if (i7 < i8) {
            i7 = i8;
        }
        Region region2 = new Region(i, i3, i5, i7);
        region2.filterSpans(this, region, 3);
        return region2;
    }

    public int getHeight() {
        int i = this.hiy;
        int i2 = this.loy;
        if (i < i2) {
            return 0;
        }
        int i3 = i - i2;
        if (i3 < 0) {
            return Integer.MAX_VALUE;
        }
        return i3;
    }

    public int getHiX() {
        return this.hix;
    }

    public int getHiY() {
        return this.hiy;
    }

    public Region getIntersection(Rectangle rectangle) {
        return getIntersectionXYWH(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public Region getIntersectionXYWH(int i, int i2, int i3, int i4) {
        return getIntersectionXYXY(i, i2, dimAdd(i, i3), dimAdd(i2, i4));
    }

    public Region getIntersectionXYXY(double d, double d2, double d3, double d4) {
        if (!Double.isNaN(d) && !Double.isNaN(d2) && !Double.isNaN(d3) && !Double.isNaN(d4)) {
            return getIntersectionXYXY(clipRound(d), clipRound(d2), clipRound(d3), clipRound(d4));
        }
        return EMPTY_REGION;
    }

    public RegionIterator getIterator() {
        return new RegionIterator(this);
    }

    public int getLoX() {
        return this.lox;
    }

    public int getLoY() {
        return this.loy;
    }

    public Region getScaledRegion(double d, double d2) {
        int i;
        if (d == 0.0d || d2 == 0.0d || this == EMPTY_REGION) {
            return EMPTY_REGION;
        }
        if ((d == 1.0d && d2 == 1.0d) || this == WHOLE_REGION) {
            return this;
        }
        Region region = new Region(clipScale(this.lox, d), clipScale(this.loy, d2), clipScale(this.hix, d), clipScale(this.hiy, d2));
        int[] iArr = this.bands;
        if (iArr != null) {
            int i2 = this.endIndex;
            int[] iArr2 = new int[i2];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = i4 + 1;
                int i6 = i3 + 1;
                int clipScale = clipScale(iArr[i3], d2);
                iArr2[i4] = clipScale;
                int i7 = i5 + 1;
                int i8 = i6 + 1;
                int clipScale2 = clipScale(iArr[i6], d2);
                iArr2[i5] = clipScale2;
                int i9 = i7 + 1;
                int i10 = i8 + 1;
                int i11 = iArr[i8];
                iArr2[i7] = i11;
                if (clipScale < clipScale2) {
                    i = i9;
                    while (true) {
                        i11--;
                        if (i11 < 0) {
                            break;
                        }
                        int i12 = i10 + 1;
                        int clipScale3 = clipScale(iArr[i10], d);
                        i10 = i12 + 1;
                        int clipScale4 = clipScale(iArr[i12], d);
                        if (clipScale3 < clipScale4) {
                            int i13 = i + 1;
                            iArr2[i] = clipScale3;
                            i = i13 + 1;
                            iArr2[i13] = clipScale4;
                        }
                    }
                } else {
                    i10 += i11 * 2;
                    i = i9;
                }
                if (i > i9) {
                    iArr2[i9 - 1] = (i - i9) / 2;
                    i4 = i;
                } else {
                    i4 = i9 - 3;
                }
                i3 = i10;
            }
            if (i4 > 5) {
                region.endIndex = i4;
                region.bands = iArr2;
            } else if (i4 < 5) {
                region.hiy = 0;
                region.hix = 0;
                region.loy = 0;
                region.lox = 0;
            } else {
                region.loy = iArr2[0];
                region.hiy = iArr2[1];
                region.lox = iArr2[3];
                region.hix = iArr2[4];
            }
        }
        return region;
    }

    public SpanIterator getSpanIterator() {
        return new RegionSpanIterator(this);
    }

    public Region getTranslatedRegion(int i, int i2) {
        if ((i | i2) == 0) {
            return this;
        }
        int i3 = this.lox;
        int i4 = i3 + i;
        int i5 = this.loy;
        int i6 = i5 + i2;
        int i7 = this.hix;
        int i8 = i7 + i;
        int i9 = this.hiy;
        int i10 = i9 + i2;
        int i11 = 0;
        if ((i4 > i3) == (i > 0)) {
            if ((i6 > i5) == (i2 > 0)) {
                if ((i8 > i7) == (i > 0)) {
                    if ((i10 > i9) == (i2 > 0)) {
                        Region region = new Region(i4, i6, i8, i10);
                        int[] iArr = this.bands;
                        if (iArr != null) {
                            int i12 = this.endIndex;
                            region.endIndex = i12;
                            int[] iArr2 = new int[i12];
                            region.bands = iArr2;
                            while (i11 < i12) {
                                iArr2[i11] = iArr[i11] + i2;
                                int i13 = i11 + 1;
                                iArr2[i13] = iArr[i13] + i2;
                                int i14 = i13 + 1;
                                int i15 = iArr[i14];
                                iArr2[i14] = i15;
                                while (true) {
                                    i11 = i14 + 1;
                                    i15--;
                                    if (i15 >= 0) {
                                        iArr2[i11] = iArr[i11] + i;
                                        i14 = i11 + 1;
                                        iArr2[i14] = iArr[i14] + i;
                                    }
                                }
                            }
                        }
                        return region;
                    }
                }
            }
        }
        return getSafeTranslatedRegion(i, i2);
    }

    public Region getUnion(Region region) {
        if (region.isEmpty() || region.isInsideQuickCheck(this)) {
            return this;
        }
        if (isEmpty() || isInsideQuickCheck(region)) {
            return region;
        }
        int i = region.lox;
        int i2 = this.lox;
        if (i > i2) {
            i = i2;
        }
        int i3 = region.loy;
        int i4 = this.loy;
        if (i3 > i4) {
            i3 = i4;
        }
        int i5 = region.hix;
        int i6 = this.hix;
        if (i5 < i6) {
            i5 = i6;
        }
        int i7 = region.hiy;
        int i8 = this.hiy;
        if (i7 < i8) {
            i7 = i8;
        }
        Region region2 = new Region(i, i3, i5, i7);
        region2.filterSpans(this, region, 7);
        return region2;
    }

    public int getWidth() {
        int i = this.hix;
        int i2 = this.lox;
        if (i < i2) {
            return 0;
        }
        int i3 = i - i2;
        if (i3 < 0) {
            return Integer.MAX_VALUE;
        }
        return i3;
    }

    public int hashCode() {
        if (isEmpty()) {
            return 0;
        }
        return (this.hiy * 9) + (this.lox * 3) + (this.loy * 5) + (this.hix * 7);
    }

    public boolean intersectsQuickCheck(Region region) {
        return region.hix > this.lox && region.lox < this.hix && region.hiy > this.loy && region.loy < this.hiy;
    }

    public boolean intersectsQuickCheckXYXY(int i, int i2, int i3, int i4) {
        return i3 > this.lox && i < this.hix && i4 > this.loy && i2 < this.hiy;
    }

    public boolean isEmpty() {
        return this.hix <= this.lox || this.hiy <= this.loy;
    }

    public boolean isInsideQuickCheck(Region region) {
        return region.bands == null && region.lox <= this.lox && region.loy <= this.loy && region.hix >= this.hix && region.hiy >= this.hiy;
    }

    public boolean isInsideXYWH(int i, int i2, int i3, int i4) {
        return isInsideXYXY(i, i2, dimAdd(i, i3), dimAdd(i2, i4));
    }

    public boolean isInsideXYXY(int i, int i2, int i3, int i4) {
        return this.lox >= i && this.loy >= i2 && this.hix <= i3 && this.hiy <= i4;
    }

    public boolean isRectangular() {
        return this.bands == null;
    }

    public void setOutputArea(Rectangle rectangle) {
        setOutputAreaXYWH(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public void setOutputAreaXYWH(int i, int i2, int i3, int i4) {
        setOutputAreaXYXY(i, i2, dimAdd(i, i3), dimAdd(i2, i4));
    }

    public void setOutputAreaXYXY(int i, int i2, int i3, int i4) {
        this.lox = i;
        this.loy = i2;
        this.hix = i3;
        this.hiy = i4;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Region[[");
        sb.append(this.lox);
        sb.append(", ");
        sb.append(this.loy);
        sb.append(" => ");
        sb.append(this.hix);
        sb.append(", ");
        sb.append(this.hiy);
        sb.append(']');
        if (this.bands != null) {
            int i = 0;
            while (i < this.endIndex) {
                sb.append("y{");
                int i2 = i + 1;
                sb.append(this.bands[i]);
                sb.append(',');
                int i3 = i2 + 1;
                sb.append(this.bands[i2]);
                sb.append("}[");
                int i4 = i3 + 1;
                int i5 = (this.bands[i3] * 2) + i4;
                while (i4 < i5) {
                    sb.append("x(");
                    int i6 = i4 + 1;
                    sb.append(this.bands[i4]);
                    sb.append(", ");
                    i4 = i6 + 1;
                    sb.append(this.bands[i6]);
                    sb.append(')');
                }
                sb.append(']');
                i = i4;
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public static Region getInstance(Region region, Shape shape, AffineTransform affineTransform) {
        return getInstance(region, false, shape, affineTransform);
    }

    public Region getBoundsIntersection(Region region) {
        if (encompasses(region)) {
            return region;
        }
        if (region.encompasses(this)) {
            return this;
        }
        int i = region.lox;
        int i2 = this.lox;
        if (i < i2) {
            i = i2;
        }
        int i3 = region.loy;
        int i4 = this.loy;
        if (i3 < i4) {
            i3 = i4;
        }
        int i5 = region.hix;
        int i6 = this.hix;
        if (i5 > i6) {
            i5 = i6;
        }
        int i7 = region.hiy;
        int i8 = this.hiy;
        if (i7 > i8) {
            i7 = i8;
        }
        return new Region(i, i3, i5, i7);
    }

    public Region getIntersection(Rectangle2D rectangle2D) {
        if (rectangle2D instanceof Rectangle) {
            return getIntersection((Rectangle) rectangle2D);
        }
        return getIntersectionXYXY(rectangle2D.getMinX(), rectangle2D.getMinY(), rectangle2D.getMaxX(), rectangle2D.getMaxY());
    }

    public SpanIterator getSpanIterator(int[] iArr) {
        SpanIterator spanIterator = getSpanIterator();
        spanIterator.intersectClipBox(iArr[0], iArr[1], iArr[2], iArr[3]);
        return spanIterator;
    }

    public void setOutputArea(int[] iArr) {
        this.lox = iArr[0];
        this.loy = iArr[1];
        this.hix = iArr[2];
        this.hiy = iArr[3];
    }

    public static Region getInstance(Region region, boolean z, Shape shape, AffineTransform affineTransform) {
        if ((shape instanceof RectangularShape) && ((RectangularShape) shape).isEmpty()) {
            return EMPTY_REGION;
        }
        int[] iArr = new int[4];
        ShapeSpanIterator shapeSpanIterator = new ShapeSpanIterator(z);
        try {
            shapeSpanIterator.setOutputArea(region);
            shapeSpanIterator.appendPath(shape.getPathIterator(affineTransform));
            shapeSpanIterator.getPathBox(iArr);
            return getInstance(iArr, shapeSpanIterator);
        } finally {
            shapeSpanIterator.dispose();
        }
    }

    private Region(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        this.lox = i;
        this.loy = i2;
        this.hix = i3;
        this.hiy = i4;
        this.bands = iArr;
        this.endIndex = i5;
    }

    public Region getIntersectionXYXY(int i, int i2, int i3, int i4) {
        if (isInsideXYXY(i, i2, i3, i4)) {
            return this;
        }
        int i5 = this.lox;
        if (i < i5) {
            i = i5;
        }
        int i6 = this.loy;
        if (i2 < i6) {
            i2 = i6;
        }
        int i7 = this.hix;
        if (i3 > i7) {
            i3 = i7;
        }
        int i8 = this.hiy;
        if (i4 > i8) {
            i4 = i8;
        }
        Region region = new Region(i, i2, i3, i4);
        if (this.bands != null) {
            region.appendSpans(getSpanIterator());
        }
        return region;
    }

    public Region getIntersection(Region region) {
        if (isInsideQuickCheck(region)) {
            return this;
        }
        if (region.isInsideQuickCheck(this)) {
            return region;
        }
        int i = region.lox;
        int i2 = this.lox;
        if (i < i2) {
            i = i2;
        }
        int i3 = region.loy;
        int i4 = this.loy;
        if (i3 < i4) {
            i3 = i4;
        }
        int i5 = region.hix;
        int i6 = this.hix;
        if (i5 > i6) {
            i5 = i6;
        }
        int i7 = region.hiy;
        int i8 = this.hiy;
        if (i7 > i8) {
            i7 = i8;
        }
        Region region2 = new Region(i, i3, i5, i7);
        if (!region2.isEmpty()) {
            region2.filterSpans(this, region, 4);
        }
        return region2;
    }

    public static Region getInstance(int i, int i2, int i3, int i4, int[] iArr) {
        int i5 = iArr[0];
        int i6 = iArr[1];
        if (i4 > i2 && i3 > i && i6 > i5) {
            int[] iArr2 = new int[(i6 - i5) * 5];
            int i7 = 0;
            int i8 = 2;
            while (i5 < i6) {
                int i9 = i8 + 1;
                int max = Math.max(clipAdd(i, iArr[i8]), i);
                int i10 = i9 + 1;
                int min = Math.min(clipAdd(i, iArr[i9]), i3);
                if (max < min) {
                    int max2 = Math.max(clipAdd(i2, i5), i2);
                    int min2 = Math.min(clipAdd(max2, 1), i4);
                    if (max2 < min2) {
                        int i11 = i7 + 1;
                        iArr2[i7] = max2;
                        int i12 = i11 + 1;
                        iArr2[i11] = min2;
                        int i13 = i12 + 1;
                        iArr2[i12] = 1;
                        int i14 = i13 + 1;
                        iArr2[i13] = max;
                        iArr2[i14] = min;
                        i7 = i14 + 1;
                    }
                }
                i5++;
                i8 = i10;
            }
            return i7 != 0 ? new Region(i, i2, i3, i4, iArr2, i7) : EMPTY_REGION;
        }
        return EMPTY_REGION;
    }

    public static Region getInstance(Rectangle rectangle) {
        return getInstanceXYWH(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    public static Region getInstance(int[] iArr) {
        return new Region(iArr[0], iArr[1], iArr[2], iArr[3]);
    }

    public static Region getInstance(int[] iArr, SpanIterator spanIterator) {
        Region region = new Region(iArr[0], iArr[1], iArr[2], iArr[3]);
        region.appendSpans(spanIterator);
        return region;
    }
}
