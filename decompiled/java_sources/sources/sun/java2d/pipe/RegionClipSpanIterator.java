package sun.java2d.pipe;

/* loaded from: classes16.dex */
public class RegionClipSpanIterator implements SpanIterator {
    RegionIterator box;
    boolean doNextBox;
    boolean doNextSpan;
    boolean done;
    RegionIterator lwm;
    int lwmhiy;
    int lwmloy;
    RegionIterator resetState;
    Region rgn;
    int rgnbndshix;
    int rgnbndshiy;
    int rgnbndslox;
    int rgnbndsloy;
    int rgnhix;
    int rgnhiy;
    int rgnlox;
    int rgnloy;
    RegionIterator row;
    SpanIterator spanIter;
    int spanhix;
    int spanhiy;
    int spanlox;
    int spanloy;
    int[] rgnbox = new int[4];
    int[] spanbox = new int[4];

    public RegionClipSpanIterator(Region region, SpanIterator spanIterator) {
        this.done = false;
        this.spanIter = spanIterator;
        RegionIterator iterator = region.getIterator();
        this.resetState = iterator;
        RegionIterator createCopy = iterator.createCopy();
        this.lwm = createCopy;
        if (!createCopy.nextYRange(this.rgnbox)) {
            this.done = true;
            return;
        }
        int[] iArr = this.rgnbox;
        int i = iArr[1];
        this.lwmloy = i;
        this.rgnloy = i;
        int i2 = iArr[3];
        this.lwmhiy = i2;
        this.rgnhiy = i2;
        region.getBounds(iArr);
        int[] iArr2 = this.rgnbox;
        int i3 = iArr2[0];
        this.rgnbndslox = i3;
        int i4 = iArr2[1];
        this.rgnbndsloy = i4;
        int i5 = iArr2[2];
        this.rgnbndshix = i5;
        int i6 = iArr2[3];
        this.rgnbndshiy = i6;
        if (i3 >= i5 || i4 >= i6) {
            this.done = true;
            return;
        }
        this.rgn = region;
        RegionIterator createCopy2 = this.lwm.createCopy();
        this.row = createCopy2;
        this.box = createCopy2.createCopy();
        this.doNextSpan = true;
        this.doNextBox = false;
    }

    public void finalize() {
    }

    @Override // sun.java2d.pipe.SpanIterator
    public long getNativeIterator() {
        return 0L;
    }

    @Override // sun.java2d.pipe.SpanIterator
    public void getPathBox(int[] iArr) {
        int[] iArr2 = new int[4];
        this.rgn.getBounds(iArr2);
        this.spanIter.getPathBox(iArr);
        int i = iArr[0];
        int i2 = iArr2[0];
        if (i < i2) {
            iArr[0] = i2;
        }
        int i3 = iArr[1];
        int i4 = iArr2[1];
        if (i3 < i4) {
            iArr[1] = i4;
        }
        int i5 = iArr[2];
        int i6 = iArr2[2];
        if (i5 > i6) {
            iArr[2] = i6;
        }
        int i7 = iArr[3];
        int i8 = iArr2[3];
        if (i7 > i8) {
            iArr[3] = i8;
        }
    }

    @Override // sun.java2d.pipe.SpanIterator
    public void intersectClipBox(int i, int i2, int i3, int i4) {
        this.spanIter.intersectClipBox(i, i2, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00a7, code lost:
    
        r0 = r10.row.nextYRange(r10.rgnbox);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00af, code lost:
    
        if (r0 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b1, code lost:
    
        r2 = r10.rgnbox;
        r10.rgnloy = r2[1];
        r10.rgnhiy = r2[3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bb, code lost:
    
        if (r0 == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c1, code lost:
    
        if (r10.rgnloy < r10.spanhiy) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00cf, code lost:
    
        r10.doNextSpan = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00c4, code lost:
    
        r10.box.copyStateFrom(r10.row);
        r10.doNextBox = true;
     */
    @Override // sun.java2d.pipe.SpanIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextSpan(int[] r11) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.pipe.RegionClipSpanIterator.nextSpan(int[]):boolean");
    }

    @Override // sun.java2d.pipe.SpanIterator
    public void skipDownTo(int i) {
        this.spanIter.skipDownTo(i);
    }
}
