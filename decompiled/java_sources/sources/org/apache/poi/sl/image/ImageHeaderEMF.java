package org.apache.poi.sl.image;

import java.awt.Dimension;
import java.awt.Rectangle;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LocaleUtil;

@Internal
/* loaded from: classes12.dex */
public class ImageHeaderEMF {
    private static final String EMF_SIGNATURE = " EMF";
    private static final Logger LOG = LogManager.getLogger((Class<?>) ImageHeaderEMF.class);
    private final Rectangle deviceBounds;

    public ImageHeaderEMF(byte[] bArr, int i) {
        int uInt = (int) LittleEndian.getUInt(bArr, i);
        int i2 = i + 4;
        if (uInt != 1) {
            LOG.atWarn().log("Invalid EMF picture - invalid type");
            this.deviceBounds = new Rectangle(0, 0, 200, 200);
            return;
        }
        int i3 = i2 + 4;
        int i4 = LittleEndian.getInt(bArr, i3);
        int i5 = i3 + 4;
        int i6 = LittleEndian.getInt(bArr, i5);
        int i7 = i5 + 4;
        int i8 = LittleEndian.getInt(bArr, i7);
        int i9 = i7 + 4;
        int i10 = LittleEndian.getInt(bArr, i9);
        int i11 = i9 + 4;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        this.deviceBounds = new Rectangle(i4, i6, i12 == -1 ? 0 : i12, i13 != -1 ? i13 : 0);
        if (EMF_SIGNATURE.equals(new String(bArr, i11 + 16, 4, LocaleUtil.CHARSET_1252))) {
            return;
        }
        LOG.atWarn().log("Invalid EMF picture - invalid signature");
    }

    public Rectangle getBounds() {
        return this.deviceBounds;
    }

    public Dimension getSize() {
        return this.deviceBounds.getSize();
    }
}
