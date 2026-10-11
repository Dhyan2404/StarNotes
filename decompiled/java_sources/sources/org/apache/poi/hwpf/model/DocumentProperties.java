package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.types.DOPAbstractType;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class DocumentProperties extends DOPAbstractType {
    private byte[] _preserved;

    public DocumentProperties(byte[] bArr, int i) {
        this(bArr, i, DOPAbstractType.getSize());
    }

    @Override // org.apache.poi.hwpf.model.types.DOPAbstractType
    public void serialize(byte[] bArr, int i) {
        super.serialize(bArr, i);
    }

    public void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        byte[] bArr = new byte[DOPAbstractType.getSize()];
        serialize(bArr, 0);
        byteArrayOutputStream.write(bArr);
        byteArrayOutputStream.write(this._preserved);
    }

    public DocumentProperties(byte[] bArr, int i, int i2) {
        super.fillFields(bArr, i);
        int size = DOPAbstractType.getSize();
        if (i2 != size) {
            this._preserved = IOUtils.safelyClone(bArr, i + size, i2 - size, HWPFDocument.getMaxRecordLength());
        } else {
            this._preserved = new byte[0];
        }
    }
}
