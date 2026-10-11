package org.apache.poi.poifs.crypt.cryptoapi;

import java.io.ByteArrayInputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.ShortBufferException;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class CryptoAPIDocumentInputStream extends ByteArrayInputStream {
    private Cipher cipher;
    private final CryptoAPIDecryptor decryptor;
    private byte[] oneByte;

    public CryptoAPIDocumentInputStream(CryptoAPIDecryptor cryptoAPIDecryptor, byte[] bArr) throws GeneralSecurityException {
        super(bArr);
        this.oneByte = new byte[]{0};
        this.decryptor = cryptoAPIDecryptor;
        this.cipher = cryptoAPIDecryptor.initCipherForBlock(null, 0);
    }

    @Override // java.io.ByteArrayInputStream, java.io.InputStream
    public synchronized int read() {
        int read = super.read();
        if (read == -1) {
            return -1;
        }
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) read;
        try {
            this.cipher.update(bArr, 0, 1, bArr);
            return this.oneByte[0] & 255;
        } catch (ShortBufferException e) {
            throw new EncryptedDocumentException(e);
        }
    }

    public void seek(int i) {
        if (i > ((ByteArrayInputStream) this).count) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        ((ByteArrayInputStream) this).pos = i;
        ((ByteArrayInputStream) this).mark = i;
    }

    public void setBlock(int i) throws GeneralSecurityException {
        this.cipher = this.decryptor.initCipherForBlock(this.cipher, i);
    }

    @Override // java.io.ByteArrayInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        try {
            this.cipher.update(bArr, i, read, bArr, i);
            return read;
        } catch (ShortBufferException e) {
            throw new EncryptedDocumentException(e);
        }
    }
}
