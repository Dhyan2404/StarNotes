package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public abstract class StdfBaseAbstractType {
    protected short field_1_info1;
    protected short field_2_info2;
    protected short field_3_info3;
    protected int field_4_bchUpe;
    protected short field_5_grfstd;
    private static final BitField sti = new BitField(4095);
    private static final BitField fScratch = new BitField(4096);
    private static final BitField fInvalHeight = new BitField(8192);
    private static final BitField fHasUpe = new BitField(16384);
    private static final BitField fMassCopy = new BitField(32768);
    private static final BitField stk = new BitField(15);
    private static final BitField istdBase = new BitField(65520);
    private static final BitField cupx = new BitField(15);
    private static final BitField istdNext = new BitField(65520);
    private static final BitField fAutoRedef = new BitField(1);
    private static final BitField fHidden = new BitField(2);
    private static final BitField f97LidsSet = new BitField(4);
    private static final BitField fCopyLang = new BitField(8);
    private static final BitField fPersonalCompose = new BitField(16);
    private static final BitField fPersonalReply = new BitField(32);
    private static final BitField fPersonal = new BitField(64);
    private static final BitField fNoHtmlExport = new BitField(128);
    private static final BitField fSemiHidden = new BitField(256);
    private static final BitField fLocked = new BitField(512);
    private static final BitField fInternalUse = new BitField(1024);
    private static final BitField fUnhideWhenUsed = new BitField(2048);
    private static final BitField fQFormat = new BitField(4096);
    private static final BitField fReserved = new BitField(57344);

    public static int getSize() {
        return 10;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_info1 = LittleEndian.getShort(bArr, i + 0);
        this.field_2_info2 = LittleEndian.getShort(bArr, i + 2);
        this.field_3_info3 = LittleEndian.getShort(bArr, i + 4);
        this.field_4_bchUpe = LittleEndian.getShort(bArr, i + 6);
        this.field_5_grfstd = LittleEndian.getShort(bArr, i + 8);
    }

    @Internal
    public int getBchUpe() {
        return this.field_4_bchUpe;
    }

    @Internal
    public byte getCupx() {
        return (byte) cupx.getValue(this.field_3_info3);
    }

    @Internal
    public byte getFReserved() {
        return (byte) fReserved.getValue(this.field_5_grfstd);
    }

    @Internal
    public short getGrfstd() {
        return this.field_5_grfstd;
    }

    @Internal
    public short getInfo1() {
        return this.field_1_info1;
    }

    @Internal
    public short getInfo2() {
        return this.field_2_info2;
    }

    @Internal
    public short getInfo3() {
        return this.field_3_info3;
    }

    @Internal
    public short getIstdBase() {
        return (short) istdBase.getValue(this.field_2_info2);
    }

    @Internal
    public short getIstdNext() {
        return (short) istdNext.getValue(this.field_3_info3);
    }

    @Internal
    public short getSti() {
        return (short) sti.getValue(this.field_1_info1);
    }

    @Internal
    public byte getStk() {
        return (byte) stk.getValue(this.field_2_info2);
    }

    @Internal
    public boolean isF97LidsSet() {
        return f97LidsSet.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFAutoRedef() {
        return fAutoRedef.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFCopyLang() {
        return fCopyLang.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFHasUpe() {
        return fHasUpe.isSet(this.field_1_info1);
    }

    @Internal
    public boolean isFHidden() {
        return fHidden.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFInternalUse() {
        return fInternalUse.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFInvalHeight() {
        return fInvalHeight.isSet(this.field_1_info1);
    }

    @Internal
    public boolean isFLocked() {
        return fLocked.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFMassCopy() {
        return fMassCopy.isSet(this.field_1_info1);
    }

    @Internal
    public boolean isFNoHtmlExport() {
        return fNoHtmlExport.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFPersonal() {
        return fPersonal.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFPersonalCompose() {
        return fPersonalCompose.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFPersonalReply() {
        return fPersonalReply.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFQFormat() {
        return fQFormat.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFScratch() {
        return fScratch.isSet(this.field_1_info1);
    }

    @Internal
    public boolean isFSemiHidden() {
        return fSemiHidden.isSet(this.field_5_grfstd);
    }

    @Internal
    public boolean isFUnhideWhenUsed() {
        return fUnhideWhenUsed.isSet(this.field_5_grfstd);
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_info1);
        LittleEndian.putShort(bArr, i + 2, this.field_2_info2);
        LittleEndian.putShort(bArr, i + 4, this.field_3_info3);
        LittleEndian.putUShort(bArr, i + 6, this.field_4_bchUpe);
        LittleEndian.putShort(bArr, i + 8, this.field_5_grfstd);
    }

    @Internal
    public void setBchUpe(int i) {
        this.field_4_bchUpe = i;
    }

    @Internal
    public void setCupx(byte b) {
        this.field_3_info3 = (short) cupx.setValue(this.field_3_info3, b);
    }

    @Internal
    public void setF97LidsSet(boolean z) {
        this.field_5_grfstd = (short) f97LidsSet.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFAutoRedef(boolean z) {
        this.field_5_grfstd = (short) fAutoRedef.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFCopyLang(boolean z) {
        this.field_5_grfstd = (short) fCopyLang.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFHasUpe(boolean z) {
        this.field_1_info1 = (short) fHasUpe.setBoolean(this.field_1_info1, z);
    }

    @Internal
    public void setFHidden(boolean z) {
        this.field_5_grfstd = (short) fHidden.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFInternalUse(boolean z) {
        this.field_5_grfstd = (short) fInternalUse.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFInvalHeight(boolean z) {
        this.field_1_info1 = (short) fInvalHeight.setBoolean(this.field_1_info1, z);
    }

    @Internal
    public void setFLocked(boolean z) {
        this.field_5_grfstd = (short) fLocked.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFMassCopy(boolean z) {
        this.field_1_info1 = (short) fMassCopy.setBoolean(this.field_1_info1, z);
    }

    @Internal
    public void setFNoHtmlExport(boolean z) {
        this.field_5_grfstd = (short) fNoHtmlExport.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFPersonal(boolean z) {
        this.field_5_grfstd = (short) fPersonal.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFPersonalCompose(boolean z) {
        this.field_5_grfstd = (short) fPersonalCompose.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFPersonalReply(boolean z) {
        this.field_5_grfstd = (short) fPersonalReply.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFQFormat(boolean z) {
        this.field_5_grfstd = (short) fQFormat.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFReserved(byte b) {
        this.field_5_grfstd = (short) fReserved.setValue(this.field_5_grfstd, b);
    }

    @Internal
    public void setFScratch(boolean z) {
        this.field_1_info1 = (short) fScratch.setBoolean(this.field_1_info1, z);
    }

    @Internal
    public void setFSemiHidden(boolean z) {
        this.field_5_grfstd = (short) fSemiHidden.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setFUnhideWhenUsed(boolean z) {
        this.field_5_grfstd = (short) fUnhideWhenUsed.setBoolean(this.field_5_grfstd, z);
    }

    @Internal
    public void setGrfstd(short s) {
        this.field_5_grfstd = s;
    }

    @Internal
    public void setInfo1(short s) {
        this.field_1_info1 = s;
    }

    @Internal
    public void setInfo2(short s) {
        this.field_2_info2 = s;
    }

    @Internal
    public void setInfo3(short s) {
        this.field_3_info3 = s;
    }

    @Internal
    public void setIstdBase(short s) {
        this.field_2_info2 = (short) istdBase.setValue(this.field_2_info2, s);
    }

    @Internal
    public void setIstdNext(short s) {
        this.field_3_info3 = (short) istdNext.setValue(this.field_3_info3, s);
    }

    @Internal
    public void setSti(short s) {
        this.field_1_info1 = (short) sti.setValue(this.field_1_info1, s);
    }

    @Internal
    public void setStk(byte b) {
        this.field_2_info2 = (short) stk.setValue(this.field_2_info2, b);
    }

    public String toString() {
        return "[StdfBase]\n    .info1                =  (" + ((int) getInfo1()) + " )\n         .sti                      = " + ((int) getSti()) + "\n         .fScratch                 = " + isFScratch() + "\n         .fInvalHeight             = " + isFInvalHeight() + "\n         .fHasUpe                  = " + isFHasUpe() + "\n         .fMassCopy                = " + isFMassCopy() + "\n    .info2                =  (" + ((int) getInfo2()) + " )\n         .stk                      = " + ((int) getStk()) + "\n         .istdBase                 = " + ((int) getIstdBase()) + "\n    .info3                =  (" + ((int) getInfo3()) + " )\n         .cupx                     = " + ((int) getCupx()) + "\n         .istdNext                 = " + ((int) getIstdNext()) + "\n    .bchUpe               =  (" + getBchUpe() + " )\n    .grfstd               =  (" + ((int) getGrfstd()) + " )\n         .fAutoRedef               = " + isFAutoRedef() + "\n         .fHidden                  = " + isFHidden() + "\n         .f97LidsSet               = " + isF97LidsSet() + "\n         .fCopyLang                = " + isFCopyLang() + "\n         .fPersonalCompose         = " + isFPersonalCompose() + "\n         .fPersonalReply           = " + isFPersonalReply() + "\n         .fPersonal                = " + isFPersonal() + "\n         .fNoHtmlExport            = " + isFNoHtmlExport() + "\n         .fSemiHidden              = " + isFSemiHidden() + "\n         .fLocked                  = " + isFLocked() + "\n         .fInternalUse             = " + isFInternalUse() + "\n         .fUnhideWhenUsed          = " + isFUnhideWhenUsed() + "\n         .fQFormat                 = " + isFQFormat() + "\n         .fReserved                = " + ((int) getFReserved()) + "\n[/StdfBase]\n";
    }
}
