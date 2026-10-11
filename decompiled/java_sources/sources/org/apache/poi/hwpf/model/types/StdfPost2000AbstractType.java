package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class StdfPost2000AbstractType {
    protected short field_1_info1;
    protected long field_2_rsid;
    protected short field_3_info3;
    private static final BitField istdLink = new BitField(4095);
    private static final BitField fHasOriginalStyle = new BitField(4096);
    private static final BitField fSpare = new BitField(57344);
    private static final BitField iftcHtml = new BitField(7);
    private static final BitField unused = new BitField(8);
    private static final BitField iPriority = new BitField(65520);

    public static int getSize() {
        return 8;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_info1 = LittleEndian.getShort(bArr, i + 0);
        this.field_2_rsid = LittleEndian.getUInt(bArr, i + 2);
        this.field_3_info3 = LittleEndian.getShort(bArr, i + 6);
    }

    @Internal
    public byte getFSpare() {
        return (byte) fSpare.getValue(this.field_1_info1);
    }

    @Internal
    public short getIPriority() {
        return (short) iPriority.getValue(this.field_3_info3);
    }

    @Internal
    public byte getIftcHtml() {
        return (byte) iftcHtml.getValue(this.field_3_info3);
    }

    @Internal
    public short getInfo1() {
        return this.field_1_info1;
    }

    @Internal
    public short getInfo3() {
        return this.field_3_info3;
    }

    @Internal
    public short getIstdLink() {
        return (short) istdLink.getValue(this.field_1_info1);
    }

    @Internal
    public long getRsid() {
        return this.field_2_rsid;
    }

    @Internal
    public boolean isFHasOriginalStyle() {
        return fHasOriginalStyle.isSet(this.field_1_info1);
    }

    @Internal
    public boolean isUnused() {
        return unused.isSet(this.field_3_info3);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_info1);
        LittleEndian.putUInt(bArr, i + 2, this.field_2_rsid);
        LittleEndian.putShort(bArr, i + 6, this.field_3_info3);
    }

    @Internal
    public void setFHasOriginalStyle(boolean z) {
        this.field_1_info1 = (short) fHasOriginalStyle.setBoolean(this.field_1_info1, z);
    }

    @Internal
    public void setFSpare(byte b) {
        this.field_1_info1 = (short) fSpare.setValue(this.field_1_info1, b);
    }

    @Internal
    public void setIPriority(short s) {
        this.field_3_info3 = (short) iPriority.setValue(this.field_3_info3, s);
    }

    @Internal
    public void setIftcHtml(byte b) {
        this.field_3_info3 = (short) iftcHtml.setValue(this.field_3_info3, b);
    }

    @Internal
    public void setInfo1(short s) {
        this.field_1_info1 = s;
    }

    @Internal
    public void setInfo3(short s) {
        this.field_3_info3 = s;
    }

    @Internal
    public void setIstdLink(short s) {
        this.field_1_info1 = (short) istdLink.setValue(this.field_1_info1, s);
    }

    @Internal
    public void setRsid(long j) {
        this.field_2_rsid = j;
    }

    @Internal
    public void setUnused(boolean z) {
        this.field_3_info3 = (short) unused.setBoolean(this.field_3_info3, z);
    }

    public String toString() {
        return "[StdfPost2000]\n    .info1                =  (" + ((int) getInfo1()) + " )\n         .istdLink                 = " + ((int) getIstdLink()) + "\n         .fHasOriginalStyle        = " + isFHasOriginalStyle() + "\n         .fSpare                   = " + ((int) getFSpare()) + "\n    .rsid                 =  (" + getRsid() + " )\n    .info3                =  (" + ((int) getInfo3()) + " )\n         .iftcHtml                 = " + ((int) getIftcHtml()) + "\n         .unused                   = " + isUnused() + "\n         .iPriority                = " + ((int) getIPriority()) + "\n[/StdfPost2000]\n";
    }
}
