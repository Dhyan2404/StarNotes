package sun.java2d.pipe;

/* loaded from: classes16.dex */
public class RegionSpanIterator implements SpanIterator {
    int curhiy;
    int curloy;
    boolean done = false;
    int hix;
    int hiy;
    boolean isrect;
    int lox;
    int loy;

    /* renamed from: ri */
    RegionIterator f116389ri;

    public RegionSpanIterator(Region region) {
        int[] iArr = new int[4];
        region.getBounds(iArr);
        this.lox = iArr[0];
        this.loy = iArr[1];
        this.hix = iArr[2];
        this.hiy = iArr[3];
        this.isrect = region.isRectangular();
        this.f116389ri = region.getIterator();
    }

    @Override // sun.java2d.pipe.SpanIterator
    public long getNativeIterator() {
        return 0L;
    }

    @Override // sun.java2d.pipe.SpanIterator
    public void getPathBox(int[] iArr) {
        iArr[0] = this.lox;
        iArr[1] = this.loy;
        iArr[2] = this.hix;
        iArr[3] = this.hiy;
    }

    @Override // sun.java2d.pipe.SpanIterator
    public void intersectClipBox(int i, int i2, int i3, int i4) {
        if (i > this.lox) {
            this.lox = i;
        }
        if (i2 > this.loy) {
            this.loy = i2;
        }
        if (i3 < this.hix) {
            this.hix = i3;
        }
        if (i4 < this.hiy) {
            this.hiy = i4;
        }
        this.done = this.lox >= this.hix || this.loy >= this.hiy;
    }

    @Override // sun.java2d.pipe.SpanIterator
    public boolean nextSpan(int[] iArr) {
        if (this.done) {
            return false;
        }
        if (this.isrect) {
            getPathBox(iArr);
            this.done = true;
            return true;
        }
        int i = this.curloy;
        int i2 = this.curhiy;
        while (true) {
            if (this.f116389ri.nextXBand(iArr)) {
                int i3 = iArr[0];
                int i4 = iArr[2];
                int i5 = this.lox;
                if (i3 < i5) {
                    i3 = i5;
                }
                int i6 = this.hix;
                if (i4 > i6) {
                    i4 = i6;
                }
                if (i3 < i4 && i < i2) {
                    iArr[0] = i3;
                    this.curloy = i;
                    iArr[1] = i;
                    iArr[2] = i4;
                    this.curhiy = i2;
                    iArr[3] = i2;
                    return true;
                }
            } else {
                if (!this.f116389ri.nextYRange(iArr)) {
                    this.done = true;
                    return false;
                }
                i = iArr[1];
                i2 = iArr[3];
                int i7 = this.loy;
                if (i < i7) {
                    i = i7;
                }
                int i8 = this.hiy;
                if (i2 > i8) {
                    i2 = i8;
                }
                if (i >= i8) {
                    this.done = true;
                    return false;
                }
            }
        }
    }

    @Override // sun.java2d.pipe.SpanIterator
    public void skipDownTo(int i) {
        this.loy = i;
    }
}
