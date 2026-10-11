package sun.java2d.pipe;

import java.awt.Rectangle;
import java.awt.Shape;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class SpanClipRenderer implements CompositePipe {
    static Class RegionClass = Region.class;
    static Class RegionIteratorClass = RegionIterator.class;
    CompositePipe outpipe;

    /* loaded from: classes16.dex */
    public class SCRcontext {
        int[] band = new int[4];
        RegionIterator iterator;
        Object outcontext;
        byte[] tile;

        public SCRcontext(RegionIterator regionIterator, Object obj) {
            this.iterator = regionIterator;
            this.outcontext = obj;
        }
    }

    static {
        initIDs(Region.class, RegionIterator.class);
    }

    public SpanClipRenderer(CompositePipe compositePipe) {
        this.outpipe = compositePipe;
    }

    public static void initIDs(Class cls, Class cls2) {
    }

    @Override // sun.java2d.pipe.CompositePipe
    public void endSequence(Object obj) {
        this.outpipe.endSequence(((SCRcontext) obj).outcontext);
    }

    public native void eraseTile(RegionIterator regionIterator, byte[] bArr, int i, int i2, int[] iArr);

    public native void fillTile(RegionIterator regionIterator, byte[] bArr, int i, int i2, int[] iArr);

    @Override // sun.java2d.pipe.CompositePipe
    public boolean needTile(Object obj, int i, int i2, int i3, int i4) {
        return this.outpipe.needTile(((SCRcontext) obj).outcontext, i, i2, i3, i4);
    }

    public void renderPathTile(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, ShapeSpanIterator shapeSpanIterator) {
        renderPathTile(obj, bArr, i, i2, i3, i4, i5, i6);
    }

    @Override // sun.java2d.pipe.CompositePipe
    public void skipTile(Object obj, int i, int i2) {
        this.outpipe.skipTile(((SCRcontext) obj).outcontext, i, i2);
    }

    @Override // sun.java2d.pipe.CompositePipe
    public Object startSequence(SunGraphics2D sunGraphics2D, Shape shape, Rectangle rectangle, int[] iArr) {
        return new SCRcontext(sunGraphics2D.clipRegion.getIterator(), this.outpipe.startSequence(sunGraphics2D, shape, rectangle, iArr));
    }

    @Override // sun.java2d.pipe.CompositePipe
    public void renderPathTile(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        byte[] bArr2;
        int i7;
        int i8;
        int i9;
        int i10;
        SCRcontext sCRcontext = (SCRcontext) obj;
        RegionIterator createCopy = sCRcontext.iterator.createCopy();
        int[] iArr = sCRcontext.band;
        iArr[0] = i3;
        iArr[1] = i4;
        iArr[2] = i3 + i5;
        iArr[3] = i4 + i6;
        if (bArr == null) {
            int i11 = i5 * i6;
            byte[] bArr3 = sCRcontext.tile;
            if (bArr3 != null && bArr3.length < i11) {
                bArr3 = null;
            }
            if (bArr3 == null) {
                byte[] bArr4 = new byte[i11];
                sCRcontext.tile = bArr4;
                bArr2 = bArr4;
            } else {
                bArr2 = bArr3;
            }
            i7 = 0;
            fillTile(createCopy, bArr2, 0, i5, iArr);
            i8 = i5;
        } else {
            eraseTile(createCopy, bArr, i, i2, iArr);
            bArr2 = bArr;
            i7 = i;
            i8 = i2;
        }
        int i12 = iArr[2];
        int i13 = iArr[0];
        if (i12 <= i13 || (i9 = iArr[3]) <= (i10 = iArr[1])) {
            return;
        }
        this.outpipe.renderPathTile(sCRcontext.outcontext, bArr2, ((i10 - i4) * i8) + (i13 - i3) + i7, i8, i13, i10, i12 - i13, i9 - i10);
    }
}
