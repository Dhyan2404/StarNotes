package org.apache.poi.hwpf.model;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class ParagraphHeight implements Duplicatable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int dxaCol;
    private int dymLineOrHeight;
    private short infoField;
    private short reserved;
    private static final BitField fSpare = BitFieldFactory.getInstance(1);
    private static final BitField fUnk = BitFieldFactory.getInstance(2);
    private static final BitField fDiffLines = BitFieldFactory.getInstance(4);
    private static final BitField clMac = BitFieldFactory.getInstance(65280);

    public ParagraphHeight() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ParagraphHeight)) {
            return false;
        }
        ParagraphHeight paragraphHeight = (ParagraphHeight) obj;
        return this.infoField == paragraphHeight.infoField && this.reserved == paragraphHeight.reserved && this.dxaCol == paragraphHeight.dxaCol && this.dymLineOrHeight == paragraphHeight.dymLineOrHeight;
    }

    public int hashCode() {
        return 42;
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[12];
        LittleEndian.putShort(bArr, 0, this.infoField);
        LittleEndian.putShort(bArr, 2, this.reserved);
        LittleEndian.putInt(bArr, 4, this.dxaCol);
        LittleEndian.putInt(bArr, 8, this.dymLineOrHeight);
        return bArr;
    }

    public void write(OutputStream outputStream) throws IOException {
        outputStream.write(toByteArray());
    }

    public ParagraphHeight(ParagraphHeight paragraphHeight) {
        this.infoField = paragraphHeight.infoField;
        this.reserved = paragraphHeight.reserved;
        this.dxaCol = paragraphHeight.dxaCol;
        this.dymLineOrHeight = paragraphHeight.dymLineOrHeight;
    }

    @Override // org.apache.poi.common.Duplicatable
    public ParagraphHeight copy() {
        return new ParagraphHeight(this);
    }

    public ParagraphHeight(byte[] bArr, int i) {
        this.infoField = LittleEndian.getShort(bArr, i);
        int i2 = i + 2;
        this.reserved = LittleEndian.getShort(bArr, i2);
        int i3 = i2 + 2;
        this.dxaCol = LittleEndian.getInt(bArr, i3);
        this.dymLineOrHeight = LittleEndian.getInt(bArr, i3 + 4);
    }
}
