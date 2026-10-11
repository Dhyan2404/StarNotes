package org.apache.poi.poifs.crypt.binaryrc4;

import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.CipherProvider;
import org.apache.poi.poifs.crypt.EncryptionHeader;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.crypt.standard.EncryptionRecord;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;

/* loaded from: classes12.dex */
public class BinaryRC4EncryptionHeader extends EncryptionHeader implements EncryptionRecord {
    public BinaryRC4EncryptionHeader() {
        setCipherAlgorithm(CipherAlgorithm.rc4);
        setKeySize(40);
        setBlockSize(-1);
        setCipherProvider(CipherProvider.rc4);
        setHashAlgorithm(HashAlgorithm.md5);
        setSizeExtra(0);
        setFlags(0);
        setCspName("");
        setChainingMode(null);
    }

    @Override // org.apache.poi.poifs.crypt.standard.EncryptionRecord
    public void write(LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream) {
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionHeader, org.apache.poi.common.Duplicatable
    public BinaryRC4EncryptionHeader copy() {
        return new BinaryRC4EncryptionHeader(this);
    }

    public BinaryRC4EncryptionHeader(BinaryRC4EncryptionHeader binaryRC4EncryptionHeader) {
        super(binaryRC4EncryptionHeader);
    }
}
