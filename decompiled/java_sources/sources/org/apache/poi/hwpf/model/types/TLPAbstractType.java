package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class TLPAbstractType {
    protected short field_1_itl;
    protected byte field_2_tlp_flags;
    private static final BitField fBorders = new BitField(1);
    private static final BitField fShading = new BitField(2);
    private static final BitField fFont = new BitField(4);
    private static final BitField fColor = new BitField(8);
    private static final BitField fBestFit = new BitField(16);
    private static final BitField fHdrRows = new BitField(32);
    private static final BitField fLastRow = new BitField(64);

    public TLPAbstractType() {
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_itl = LittleEndian.getShort(bArr, i + 0);
        this.field_2_tlp_flags = bArr[i + 2];
    }

    public short getItl() {
        return this.field_1_itl;
    }

    public int getSize() {
        return 7;
    }

    public byte getTlp_flags() {
        return this.field_2_tlp_flags;
    }

    public boolean isFBestFit() {
        return fBestFit.isSet(this.field_2_tlp_flags);
    }

    public boolean isFBorders() {
        return fBorders.isSet(this.field_2_tlp_flags);
    }

    public boolean isFColor() {
        return fColor.isSet(this.field_2_tlp_flags);
    }

    public boolean isFFont() {
        return fFont.isSet(this.field_2_tlp_flags);
    }

    public boolean isFHdrRows() {
        return fHdrRows.isSet(this.field_2_tlp_flags);
    }

    public boolean isFLastRow() {
        return fLastRow.isSet(this.field_2_tlp_flags);
    }

    public boolean isFShading() {
        return fShading.isSet(this.field_2_tlp_flags);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_itl);
        bArr[i + 2] = this.field_2_tlp_flags;
    }

    public void setFBestFit(boolean z) {
        this.field_2_tlp_flags = (byte) fBestFit.setBoolean(this.field_2_tlp_flags, z);
    }

    public void setFBorders(boolean z) {
        this.field_2_tlp_flags = (byte) fBorders.setBoolean(this.field_2_tlp_flags, z);
    }

    public void setFColor(boolean z) {
        this.field_2_tlp_flags = (byte) fColor.setBoolean(this.field_2_tlp_flags, z);
    }

    public void setFFont(boolean z) {
        this.field_2_tlp_flags = (byte) fFont.setBoolean(this.field_2_tlp_flags, z);
    }

    public void setFHdrRows(boolean z) {
        this.field_2_tlp_flags = (byte) fHdrRows.setBoolean(this.field_2_tlp_flags, z);
    }

    public void setFLastRow(boolean z) {
        this.field_2_tlp_flags = (byte) fLastRow.setBoolean(this.field_2_tlp_flags, z);
    }

    public void setFShading(boolean z) {
        this.field_2_tlp_flags = (byte) fShading.setBoolean(this.field_2_tlp_flags, z);
    }

    public void setItl(short s) {
        this.field_1_itl = s;
    }

    public void setTlp_flags(byte b) {
        this.field_2_tlp_flags = b;
    }

    public String toString() {
        return "[TLP]\n    .itl                  = (" + ((int) getItl()) + " )\n    .tlp_flags            = (" + ((int) getTlp_flags()) + " )\n         .fBorders                 = " + isFBorders() + "\n         .fShading                 = " + isFShading() + "\n         .fFont                    = " + isFFont() + "\n         .fColor                   = " + isFColor() + "\n         .fBestFit                 = " + isFBestFit() + "\n         .fHdrRows                 = " + isFHdrRows() + "\n         .fLastRow                 = " + isFLastRow() + "\n[/TLP]\n";
    }

    public TLPAbstractType(TLPAbstractType tLPAbstractType) {
        this.field_1_itl = tLPAbstractType.field_1_itl;
        this.field_2_tlp_flags = tLPAbstractType.field_2_tlp_flags;
    }
}
