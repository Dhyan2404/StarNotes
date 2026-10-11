package org.apache.poi.poifs.crypt.standard;

import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChainingMode;
import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.EncryptionVerifier;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.LittleEndianInput;

/* loaded from: classes12.dex */
public class StandardEncryptionVerifier extends EncryptionVerifier implements EncryptionRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int SPIN_COUNT = 50000;
    private final int verifierHashSize;

    public StandardEncryptionVerifier(LittleEndianInput littleEndianInput, StandardEncryptionHeader standardEncryptionHeader) {
        int readInt = littleEndianInput.readInt();
        if (readInt == 16) {
            byte[] bArr = new byte[16];
            littleEndianInput.readFully(bArr);
            setSalt(bArr);
            byte[] bArr2 = new byte[16];
            littleEndianInput.readFully(bArr2);
            setEncryptedVerifier(bArr2);
            this.verifierHashSize = littleEndianInput.readInt();
            byte[] bArr3 = new byte[standardEncryptionHeader.getCipherAlgorithm().encryptedVerifierHashLength];
            littleEndianInput.readFully(bArr3);
            setEncryptedVerifierHash(bArr3);
            setSpinCount(50000);
            setCipherAlgorithm(standardEncryptionHeader.getCipherAlgorithm());
            setChainingMode(standardEncryptionHeader.getChainingMode());
            setEncryptedKey(null);
            setHashAlgorithm(standardEncryptionHeader.getHashAlgorithm());
            return;
        }
        throw new IllegalArgumentException("Salt size != 16: " + readInt);
    }

    public int getVerifierHashSize() {
        return this.verifierHashSize;
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public void setEncryptedVerifier(byte[] bArr) {
        super.setEncryptedVerifier(bArr);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public void setEncryptedVerifierHash(byte[] bArr) {
        super.setEncryptedVerifierHash(bArr);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public void setSalt(byte[] bArr) {
        if (bArr == null || bArr.length != 16) {
            throw new EncryptedDocumentException("invalid verifier salt");
        }
        super.setSalt(bArr);
    }

    @Override // org.apache.poi.poifs.crypt.standard.EncryptionRecord
    public void write(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
        byte[] salt = getSalt();
        littleEndianByteArrayOutputStream.writeInt(salt.length);
        littleEndianByteArrayOutputStream.write(salt);
        littleEndianByteArrayOutputStream.write(getEncryptedVerifier());
        littleEndianByteArrayOutputStream.writeInt(20);
        littleEndianByteArrayOutputStream.write(getEncryptedVerifierHash());
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier, org.apache.poi.common.Duplicatable
    public StandardEncryptionVerifier copy() {
        return new StandardEncryptionVerifier(this);
    }

    public StandardEncryptionVerifier(CipherAlgorithm cipherAlgorithm, HashAlgorithm hashAlgorithm, int i, int i2, ChainingMode chainingMode) {
        setCipherAlgorithm(cipherAlgorithm);
        setHashAlgorithm(hashAlgorithm);
        setChainingMode(chainingMode);
        setSpinCount(50000);
        this.verifierHashSize = hashAlgorithm.hashSize;
    }

    public StandardEncryptionVerifier(StandardEncryptionVerifier standardEncryptionVerifier) {
        super(standardEncryptionVerifier);
        this.verifierHashSize = standardEncryptionVerifier.verifierHashSize;
    }
}
