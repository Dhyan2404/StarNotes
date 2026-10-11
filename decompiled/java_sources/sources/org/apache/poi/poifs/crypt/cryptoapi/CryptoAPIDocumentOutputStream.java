package org.apache.poi.poifs.crypt.cryptoapi;

import java.io.InputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.apache.commons.io.input.BoundedInputStream;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.util.Internal;

/* JADX INFO: Access modifiers changed from: package-private */
@Internal
/* loaded from: classes12.dex */
public class CryptoAPIDocumentOutputStream extends ByteArrayOutputStream {
    private final Cipher cipher;
    private final CryptoAPIEncryptor encryptor;
    private final byte[] oneByte = {0};

    public CryptoAPIDocumentOutputStream(CryptoAPIEncryptor cryptoAPIEncryptor) throws GeneralSecurityException {
        this.encryptor = cryptoAPIEncryptor;
        this.cipher = cryptoAPIEncryptor.initCipherForBlock(null, 0);
    }

    public void setBlock(int i) throws GeneralSecurityException {
        this.encryptor.initCipherForBlock(this.cipher, i);
    }

    public void setSize(int i) {
        this.count = i;
    }

    public InputStream toInputStream(long j) {
        return new BoundedInputStream(toInputStream(), j);
    }

    @Override // org.apache.commons.io.output.ByteArrayOutputStream, org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        try {
            byte[] bArr = this.oneByte;
            bArr[0] = (byte) i;
            this.cipher.update(bArr, 0, 1, bArr, 0);
            super.write(this.oneByte);
        } catch (Exception e) {
            throw new EncryptedDocumentException(e);
        }
    }

    @Override // org.apache.commons.io.output.ByteArrayOutputStream, org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        try {
            this.cipher.update(bArr, i, i2, bArr, i);
            super.write(bArr, i, i2);
        } catch (Exception e) {
            throw new EncryptedDocumentException(e);
        }
    }
}
