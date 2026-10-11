package org.apache.poi.hwmf.record;

import java.awt.geom.Rectangle2D;
import java.io.IOException;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfPlaceableHeader {
    public static final int WMF_HEADER_MAGIC = -1698247209;
    final Rectangle2D bounds;
    final int unitsPerInch;

    public HwmfPlaceableHeader(LittleEndianInputStream littleEndianInputStream) throws IOException {
        littleEndianInputStream.readShort();
        short readShort = littleEndianInputStream.readShort();
        short readShort2 = littleEndianInputStream.readShort();
        short readShort3 = littleEndianInputStream.readShort();
        short readShort4 = littleEndianInputStream.readShort();
        this.bounds = new Rectangle2D.Double(Math.min((int) readShort, (int) readShort3), Math.min((int) readShort2, (int) readShort4), Math.abs(readShort3 - readShort), Math.abs(readShort4 - readShort2));
        this.unitsPerInch = littleEndianInputStream.readShort();
        littleEndianInputStream.readInt();
        littleEndianInputStream.readShort();
        littleEndianInputStream.mark(4);
        if (littleEndianInputStream.readShort() != 0) {
            littleEndianInputStream.reset();
        }
    }

    public static HwmfPlaceableHeader readHeader(LittleEndianInputStream littleEndianInputStream) throws IOException {
        littleEndianInputStream.mark(4);
        if (littleEndianInputStream.readInt() == -1698247209) {
            return new HwmfPlaceableHeader(littleEndianInputStream);
        }
        littleEndianInputStream.reset();
        return null;
    }

    public Rectangle2D getBounds() {
        return this.bounds;
    }

    public int getUnitsPerInch() {
        return this.unitsPerInch;
    }
}
