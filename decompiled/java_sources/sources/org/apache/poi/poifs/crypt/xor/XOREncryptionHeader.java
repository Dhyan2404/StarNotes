package org.apache.poi.poifs.crypt.xor;

import org.apache.poi.poifs.crypt.EncryptionHeader;
import org.apache.poi.poifs.crypt.standard.EncryptionRecord;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;

/* loaded from: classes12.dex */
public class XOREncryptionHeader extends EncryptionHeader implements EncryptionRecord {
    public XOREncryptionHeader() {
    }

    @Override // org.apache.poi.poifs.crypt.standard.EncryptionRecord
    public void write(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
    }

    public XOREncryptionHeader(XOREncryptionHeader xOREncryptionHeader) {
        super(xOREncryptionHeader);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionHeader, org.apache.poi.common.Duplicatable
    public XOREncryptionHeader copy() {
        return new XOREncryptionHeader(this);
    }
}
