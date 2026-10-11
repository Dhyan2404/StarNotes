package org.apache.poi.hwpf.model;

import java.io.IOException;
import java.nio.charset.Charset;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class OldComplexFileTable extends ComplexFileTable {
    public OldComplexFileTable(byte[] bArr, byte[] bArr2, int i, int i2, Charset charset) throws IOException {
        super(bArr, bArr2, i, i2, charset);
    }

    @Override // org.apache.poi.hwpf.model.ComplexFileTable
    public TextPieceTable newTextPieceTable(byte[] bArr, byte[] bArr2, int i, int i2, int i3, Charset charset) {
        return new OldTextPieceTable(bArr, bArr2, i, i2, i3, charset);
    }
}
