package org.apache.poi.hmef.attribute;

import java.io.IOException;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.hmef.CompressedRTF;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class MAPIRtfAttribute extends MAPIAttribute {
    private static final int MAX_RECORD_LENGTH = 50000000;
    private final String data;
    private final byte[] decompressed;

    public MAPIRtfAttribute(MAPIProperty mAPIProperty, int i, byte[] bArr) throws IOException {
        super(mAPIProperty, i, bArr);
        CompressedRTF compressedRTF = new CompressedRTF();
        UnsynchronizedByteArrayInputStream unsynchronizedByteArrayInputStream = new UnsynchronizedByteArrayInputStream(bArr);
        try {
            byte[] decompress = compressedRTF.decompress(unsynchronizedByteArrayInputStream);
            unsynchronizedByteArrayInputStream.close();
            if (decompress.length > compressedRTF.getDeCompressedSize()) {
                this.decompressed = IOUtils.safelyClone(decompress, 0, compressedRTF.getDeCompressedSize(), 50000000);
            } else {
                this.decompressed = decompress;
            }
            byte[] bArr2 = this.decompressed;
            this.data = StringUtil.getFromCompressedUnicode(bArr2, 0, bArr2.length);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.hmef.attribute.MAPIAttribute
    public byte[] getData() {
        return this.decompressed;
    }

    public String getDataString() {
        return this.data;
    }

    public byte[] getRawData() {
        return super.getData();
    }

    @Override // org.apache.poi.hmef.attribute.MAPIAttribute
    public String toString() {
        return getProperty() + " " + this.data;
    }
}
