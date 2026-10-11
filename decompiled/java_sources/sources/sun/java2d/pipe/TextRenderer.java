package sun.java2d.pipe;

import java.awt.Rectangle;
import sun.font.GlyphList;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public class TextRenderer extends GlyphListPipe {
    CompositePipe outpipe;

    public TextRenderer(CompositePipe compositePipe) {
        this.outpipe = compositePipe;
    }

    @Override // sun.java2d.pipe.GlyphListPipe
    public void drawGlyphList(SunGraphics2D sunGraphics2D, GlyphList glyphList) {
        Object obj;
        int i;
        int i2;
        int numGlyphs = glyphList.getNumGlyphs();
        Region compClip = sunGraphics2D.getCompClip();
        int loX = compClip.getLoX();
        int loY = compClip.getLoY();
        int hiX = compClip.getHiX();
        int hiY = compClip.getHiY();
        try {
            int[] bounds = glyphList.getBounds();
            char c = 0;
            int i3 = bounds[0];
            char c2 = 1;
            int i4 = bounds[1];
            char c3 = 2;
            Rectangle rectangle = new Rectangle(i3, i4, bounds[2] - i3, bounds[3] - i4);
            obj = this.outpipe.startSequence(sunGraphics2D, sunGraphics2D.untransformShape(rectangle), rectangle, bounds);
            int i5 = 0;
            while (i5 < numGlyphs) {
                try {
                    glyphList.setGlyphIndex(i5);
                    int[] metrics = glyphList.getMetrics();
                    int i6 = metrics[c];
                    int i7 = metrics[c2];
                    int i8 = metrics[c3];
                    int i9 = i6 + i8;
                    int i10 = metrics[3] + i7;
                    if (i6 < loX) {
                        i2 = loX - i6;
                        i = loX;
                    } else {
                        i = i6;
                        i2 = 0;
                    }
                    if (i7 < loY) {
                        i2 += (loY - i7) * i8;
                        i7 = loY;
                    }
                    if (i9 > hiX) {
                        i9 = hiX;
                    }
                    if (i10 > hiY) {
                        i10 = hiY;
                    }
                    if (i9 > i && i10 > i7) {
                        int i11 = i9 - i;
                        int i12 = i10 - i7;
                        if (this.outpipe.needTile(obj, i, i7, i11, i12)) {
                            this.outpipe.renderPathTile(obj, glyphList.getGrayBits(), i2, i8, i, i7, i11, i12);
                            i5++;
                            c = 0;
                            c2 = 1;
                            c3 = 2;
                        }
                    }
                    this.outpipe.skipTile(obj, i, i7);
                    i5++;
                    c = 0;
                    c2 = 1;
                    c3 = 2;
                } catch (Throwable th) {
                    th = th;
                    if (obj != null) {
                        this.outpipe.endSequence(obj);
                    }
                    throw th;
                }
            }
            if (obj != null) {
                this.outpipe.endSequence(obj);
            }
        } catch (Throwable th2) {
            th = th2;
            obj = null;
        }
    }
}
