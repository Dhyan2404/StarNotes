package com.twelvemonkeys.io.enc;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public class Base64Encoder implements Encoder {
    @Override // com.twelvemonkeys.io.enc.Encoder
    public void encode(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException {
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            if (min == 1) {
                byte b = byteBuffer.get();
                byte[] bArr = Base64Decoder.f94269b;
                outputStream.write(bArr[(b >>> 2) & 63]);
                outputStream.write(bArr[((b << 4) & 48) + 0]);
                outputStream.write(61);
                outputStream.write(61);
            } else if (min != 2) {
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byte[] bArr2 = Base64Decoder.f94269b;
                outputStream.write(bArr2[(b2 >>> 2) & 63]);
                outputStream.write(bArr2[((b2 << 4) & 48) + ((b3 >>> 4) & 15)]);
                outputStream.write(bArr2[((b3 << 2) & 60) + (3 & (b4 >>> 6))]);
                outputStream.write(bArr2[b4 & 63]);
            } else {
                byte b5 = byteBuffer.get();
                byte b6 = byteBuffer.get();
                byte[] bArr3 = Base64Decoder.f94269b;
                outputStream.write(bArr3[(b5 >>> 2) & 63]);
                outputStream.write(bArr3[((b5 << 4) & 48) + ((b6 >>> 4) & 15)]);
                outputStream.write(bArr3[((b6 << 2) & 60) + 0]);
                outputStream.write(61);
            }
        }
    }
}
