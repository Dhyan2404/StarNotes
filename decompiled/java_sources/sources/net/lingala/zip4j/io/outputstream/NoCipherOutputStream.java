package net.lingala.zip4j.io.outputstream;

import java.io.IOException;
import java.io.OutputStream;
import net.lingala.zip4j.crypto.Encrypter;
import net.lingala.zip4j.model.ZipParameters;

/* loaded from: classes11.dex */
class NoCipherOutputStream extends CipherOutputStream<NoEncrypter> {

    /* loaded from: classes11.dex */
    public static class NoEncrypter implements Encrypter {
        @Override // net.lingala.zip4j.crypto.Encrypter
        public int encryptData(byte[] bArr, int i, int i2) {
            return i2;
        }

        @Override // net.lingala.zip4j.crypto.Encrypter
        public int encryptData(byte[] bArr) {
            return encryptData(bArr, 0, bArr.length);
        }
    }

    public NoCipherOutputStream(ZipEntryOutputStream zipEntryOutputStream, ZipParameters zipParameters, char[] cArr) throws IOException {
        super(zipEntryOutputStream, zipParameters, cArr, true);
    }

    @Override // net.lingala.zip4j.io.outputstream.CipherOutputStream
    public NoEncrypter initializeEncrypter(OutputStream outputStream, ZipParameters zipParameters, char[] cArr, boolean z) {
        return new NoEncrypter();
    }
}
