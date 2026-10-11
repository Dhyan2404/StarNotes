package org.apache.poi.poifs.crypt.xor;

import org.apache.poi.poifs.crypt.EncryptionVerifier;
import org.apache.poi.poifs.crypt.standard.EncryptionRecord;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.LittleEndianInput;

/* loaded from: classes12.dex */
public class XOREncryptionVerifier extends EncryptionVerifier implements EncryptionRecord {
    public XOREncryptionVerifier() {
        setEncryptedKey(new byte[2]);
        setEncryptedVerifier(new byte[2]);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public final void setEncryptedKey(byte[] bArr) {
        super.setEncryptedKey(bArr);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public final void setEncryptedVerifier(byte[] bArr) {
        super.setEncryptedVerifier(bArr);
    }

    @Override // org.apache.poi.poifs.crypt.standard.EncryptionRecord
    public void write(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
        littleEndianByteArrayOutputStream.write(getEncryptedKey());
        littleEndianByteArrayOutputStream.write(getEncryptedVerifier());
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier, org.apache.poi.common.Duplicatable
    public XOREncryptionVerifier copy() {
        return new XOREncryptionVerifier(this);
    }

    public XOREncryptionVerifier(LittleEndianInput littleEndianInput) {
        byte[] bArr = new byte[2];
        littleEndianInput.readFully(bArr);
        setEncryptedKey(bArr);
        byte[] bArr2 = new byte[2];
        littleEndianInput.readFully(bArr2);
        setEncryptedVerifier(bArr2);
    }

    public XOREncryptionVerifier(XOREncryptionVerifier xOREncryptionVerifier) {
        super(xOREncryptionVerifier);
    }
}
