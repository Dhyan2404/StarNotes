package org.apache.poi.hdgf.chunks;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes12.dex */
public final class ChunkHeaderV11 extends ChunkHeaderV6 {
    @Override // org.apache.poi.hdgf.chunks.ChunkHeaderV6, org.apache.poi.hdgf.chunks.ChunkHeader
    public Charset getChunkCharset() {
        return StandardCharsets.UTF_16LE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r2 != 170) goto L21;
     */
    @Override // org.apache.poi.hdgf.chunks.ChunkHeaderV6, org.apache.poi.hdgf.chunks.ChunkHeader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hasSeparator() {
        /*
            r6 = this;
            short r0 = r6.getUnknown2()
            short r1 = r6.getUnknown3()
            int r2 = r6.getType()
            r3 = 31
            if (r2 == r3) goto L46
            r3 = 105(0x69, float:1.47E-43)
            r4 = 1
            if (r2 == r3) goto L45
            r3 = 180(0xb4, float:2.52E-43)
            r5 = 2
            if (r2 == r3) goto L2b
            r3 = 182(0xb6, float:2.55E-43)
            if (r2 == r3) goto L2b
            r3 = 201(0xc9, float:2.82E-43)
            if (r2 == r3) goto L46
            r3 = 169(0xa9, float:2.37E-43)
            if (r2 == r3) goto L2b
            r3 = 170(0xaa, float:2.38E-43)
            if (r2 == r3) goto L2b
            goto L32
        L2b:
            if (r0 != r5) goto L32
            r2 = 84
            if (r1 != r2) goto L32
            return r4
        L32:
            if (r0 != r5) goto L38
            r2 = 85
            if (r1 == r2) goto L3f
        L38:
            r2 = 3
            if (r0 != r2) goto L40
            r0 = 80
            if (r1 == r0) goto L40
        L3f:
            return r4
        L40:
            boolean r6 = r6.hasTrailer()
            return r6
        L45:
            return r4
        L46:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hdgf.chunks.ChunkHeaderV11.hasSeparator():boolean");
    }
}
