package net.lingala.zip4j.io.inputstream;

import java.io.IOException;
import net.lingala.zip4j.crypto.Decrypter;
import net.lingala.zip4j.model.LocalFileHeader;

/* loaded from: classes11.dex */
class NoCipherInputStream extends CipherInputStream<NoDecrypter> {

    /* loaded from: classes11.dex */
    public static class NoDecrypter implements Decrypter {
        @Override // net.lingala.zip4j.crypto.Decrypter
        public int decryptData(byte[] bArr, int i, int i2) {
            return i2;
        }
    }

    public NoCipherInputStream(ZipEntryInputStream zipEntryInputStream, LocalFileHeader localFileHeader, char[] cArr, int i) throws IOException {
        super(zipEntryInputStream, localFileHeader, cArr, i, true);
    }

    @Override // net.lingala.zip4j.io.inputstream.CipherInputStream
    public NoDecrypter initializeDecrypter(LocalFileHeader localFileHeader, char[] cArr, boolean z) {
        return new NoDecrypter();
    }
}
