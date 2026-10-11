package com.twelvemonkeys.io.enc;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: classes10.dex */
public final class PackBitsEncoder implements Encoder {

    /* renamed from: a */
    public final byte[] f94278a = new byte[128];

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (r3 <= 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
    
        if (r3 >= 128) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
    
        r8.f94278a[r3] = r10[r11];
        r3 = r3 + 1;
        r11 = r11 + 1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m60700a(java.io.OutputStream r9, byte[] r10, int r11, int r12) throws java.io.IOException {
        /*
            r8 = this;
            int r12 = r12 + r11
            r0 = 1
            int r12 = r12 - r0
            int r1 = r12 + (-1)
        L5:
            if (r11 > r12) goto L80
            r2 = r10[r11]
            r3 = r0
        La:
            r4 = 127(0x7f, float:1.78E-43)
            if (r3 >= r4) goto L1c
            if (r11 >= r12) goto L1c
            r4 = r10[r11]
            int r5 = r11 + 1
            r6 = r10[r5]
            if (r4 != r6) goto L1c
            int r3 = r3 + 1
            r11 = r5
            goto La
        L1c:
            if (r3 <= r0) goto L29
            int r11 = r11 + 1
            int r3 = r3 + (-1)
            int r3 = -r3
            r9.write(r3)
            r9.write(r2)
        L29:
            r2 = 0
            r3 = r2
        L2b:
            r4 = 128(0x80, float:1.794E-43)
            if (r3 >= r4) goto L50
            if (r11 >= r12) goto L39
            r5 = r10[r11]
            int r6 = r11 + 1
            r6 = r10[r6]
            if (r5 != r6) goto L43
        L39:
            if (r11 >= r1) goto L50
            r5 = r10[r11]
            int r6 = r11 + 2
            r6 = r10[r6]
            if (r5 == r6) goto L50
        L43:
            byte[] r4 = r8.f94278a
            int r5 = r3 + 1
            int r6 = r11 + 1
            r11 = r10[r11]
            r4[r3] = r11
            r3 = r5
            r11 = r6
            goto L2b
        L50:
            if (r11 != r12) goto L62
            if (r3 <= 0) goto L62
            if (r3 >= r4) goto L62
            byte[] r5 = r8.f94278a
            int r6 = r3 + 1
            int r7 = r11 + 1
            r11 = r10[r11]
            r5[r3] = r11
            r3 = r6
            r11 = r7
        L62:
            if (r3 <= 0) goto L6e
            int r5 = r3 + (-1)
            r9.write(r5)
            byte[] r5 = r8.f94278a
            r9.write(r5, r2, r3)
        L6e:
            if (r11 != r12) goto L5
            if (r3 <= 0) goto L74
            if (r3 < r4) goto L5
        L74:
            r9.write(r2)
            int r2 = r11 + 1
            r11 = r10[r11]
            r9.write(r11)
            r11 = r2
            goto L5
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.io.enc.PackBitsEncoder.m60700a(java.io.OutputStream, byte[], int, int):void");
    }

    @Override // com.twelvemonkeys.io.enc.Encoder
    public void encode(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException {
        m60700a(outputStream, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
        byteBuffer.position(byteBuffer.remaining());
    }
}
