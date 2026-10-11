package org.apache.poi.hdgf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.util.LZWDecompresser;

/* loaded from: classes12.dex */
public class HDGFLZW extends LZWDecompresser {
    public HDGFLZW() {
        super(false, 3, false);
    }

    @Override // org.apache.poi.util.LZWDecompresser
    public int adjustDictionaryOffset(int i) {
        return i > 4078 ? i - 4078 : i + 18;
    }

    public byte[] compress(InputStream inputStream) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        compress(inputStream, unsynchronizedByteArrayOutputStream);
        return unsynchronizedByteArrayOutputStream.toByteArray();
    }

    @Override // org.apache.poi.util.LZWDecompresser
    public int populateDictionary(byte[] bArr) {
        return 0;
    }

    public void compress(InputStream inputStream, OutputStream outputStream) throws IOException {
        new HDGFLZWCompressor(outputStream).compress(inputStream);
    }
}
