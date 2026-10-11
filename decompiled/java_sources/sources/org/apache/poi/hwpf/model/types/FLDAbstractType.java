package org.apache.poi.hwpf.model.types;

import org.apache.poi.util.BitField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public abstract class FLDAbstractType {
    protected byte field_1_chHolder;
    protected byte field_2_flt;

    /* renamed from: ch */
    private static final BitField f111446ch = new BitField(31);
    private static final BitField reserved = new BitField(224);
    private static final BitField fDiffer = new BitField(1);
    private static final BitField fZombieEmbed = new BitField(2);
    private static final BitField fResultDirty = new BitField(4);
    private static final BitField fResultEdited = new BitField(8);
    private static final BitField fLocked = new BitField(16);
    private static final BitField fPrivateResult = new BitField(32);
    private static final BitField fNested = new BitField(64);
    private static final BitField fHasSep = new BitField(64);

    public static int getSize() {
        return 6;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_chHolder = bArr[i + 0];
        this.field_2_flt = bArr[i + 1];
    }

    public byte getCh() {
        return (byte) f111446ch.getValue(this.field_1_chHolder);
    }

    public byte getChHolder() {
        return this.field_1_chHolder;
    }

    public byte getFlt() {
        return this.field_2_flt;
    }

    public byte getReserved() {
        return (byte) reserved.getValue(this.field_1_chHolder);
    }

    public boolean isFDiffer() {
        return fDiffer.isSet(this.field_2_flt);
    }

    public boolean isFHasSep() {
        return fHasSep.isSet(this.field_2_flt);
    }

    public boolean isFLocked() {
        return fLocked.isSet(this.field_2_flt);
    }

    public boolean isFNested() {
        return fNested.isSet(this.field_2_flt);
    }

    public boolean isFPrivateResult() {
        return fPrivateResult.isSet(this.field_2_flt);
    }

    public boolean isFResultDirty() {
        return fResultDirty.isSet(this.field_2_flt);
    }

    public boolean isFResultEdited() {
        return fResultEdited.isSet(this.field_2_flt);
    }

    public boolean isFZombieEmbed() {
        return fZombieEmbed.isSet(this.field_2_flt);
    }

    public void serialize(byte[] bArr, int i) {
        bArr[i + 0] = this.field_1_chHolder;
        bArr[i + 1] = this.field_2_flt;
    }

    public void setCh(byte b) {
        this.field_1_chHolder = (byte) f111446ch.setValue(this.field_1_chHolder, b);
    }

    public void setChHolder(byte b) {
        this.field_1_chHolder = b;
    }

    public void setFDiffer(boolean z) {
        this.field_2_flt = (byte) fDiffer.setBoolean(this.field_2_flt, z);
    }

    public void setFHasSep(boolean z) {
        this.field_2_flt = (byte) fHasSep.setBoolean(this.field_2_flt, z);
    }

    public void setFLocked(boolean z) {
        this.field_2_flt = (byte) fLocked.setBoolean(this.field_2_flt, z);
    }

    public void setFNested(boolean z) {
        this.field_2_flt = (byte) fNested.setBoolean(this.field_2_flt, z);
    }

    public void setFPrivateResult(boolean z) {
        this.field_2_flt = (byte) fPrivateResult.setBoolean(this.field_2_flt, z);
    }

    public void setFResultDirty(boolean z) {
        this.field_2_flt = (byte) fResultDirty.setBoolean(this.field_2_flt, z);
    }

    public void setFResultEdited(boolean z) {
        this.field_2_flt = (byte) fResultEdited.setBoolean(this.field_2_flt, z);
    }

    public void setFZombieEmbed(boolean z) {
        this.field_2_flt = (byte) fZombieEmbed.setBoolean(this.field_2_flt, z);
    }

    public void setFlt(byte b) {
        this.field_2_flt = b;
    }

    public void setReserved(byte b) {
        this.field_1_chHolder = (byte) reserved.setValue(this.field_1_chHolder, b);
    }

    public String toString() {
        return "[FLD]\n    .chHolder             =  (" + ((int) getChHolder()) + " )\n         .ch                       = " + ((int) getCh()) + "\n         .reserved                 = " + ((int) getReserved()) + "\n    .flt                  =  (" + ((int) getFlt()) + " )\n         .fDiffer                  = " + isFDiffer() + "\n         .fZombieEmbed             = " + isFZombieEmbed() + "\n         .fResultDirty             = " + isFResultDirty() + "\n         .fResultEdited            = " + isFResultEdited() + "\n         .fLocked                  = " + isFLocked() + "\n         .fPrivateResult           = " + isFPrivateResult() + "\n         .fNested                  = " + isFNested() + "\n         .fHasSep                  = " + isFHasSep() + "\n[/FLD]\n";
    }
}
