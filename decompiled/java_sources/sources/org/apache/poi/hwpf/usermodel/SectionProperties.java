package org.apache.poi.hwpf.usermodel;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.SEPAbstractType;

/* loaded from: classes12.dex */
public final class SectionProperties extends SEPAbstractType implements Duplicatable {
    private short field_60_rncftn;
    private short field_61_rncedn;
    private int field_62_nftn;
    private int field_63_nfcftnref;
    private int field_64_nedn;
    private int field_65_nfcednref;

    public SectionProperties() {
        this.field_63_nfcftnref = 0;
        this.field_65_nfcednref = 2;
        this.field_20_brcTop = new BorderCode();
        this.field_21_brcLeft = new BorderCode();
        this.field_22_brcBottom = new BorderCode();
        this.field_23_brcRight = new BorderCode();
        this.field_26_dttmPropRMark = new DateAndTime();
    }

    public int getNEdn() {
        return this.field_64_nedn;
    }

    public int getNFtn() {
        return this.field_62_nftn;
    }

    public int getNfcEdnRef() {
        return this.field_65_nfcednref;
    }

    public int getNfcFtnRef() {
        return this.field_63_nfcftnref;
    }

    public short getRncEdn() {
        return this.field_61_rncedn;
    }

    public short getRncFtn() {
        return this.field_60_rncftn;
    }

    public void setNEdn(int i) {
        this.field_64_nedn = i;
    }

    public void setNFtn(int i) {
        this.field_62_nftn = i;
    }

    public void setNfcEdnRef(int i) {
        this.field_65_nfcednref = i;
    }

    public void setNfcFtnRef(int i) {
        this.field_63_nfcftnref = i;
    }

    public void setRncEdn(short s) {
        this.field_61_rncedn = s;
    }

    public void setRncFtn(short s) {
        this.field_60_rncftn = s;
    }

    @Override // org.apache.poi.common.Duplicatable
    public SectionProperties copy() {
        return new SectionProperties(this);
    }

    public SectionProperties(SectionProperties sectionProperties) {
        super(sectionProperties);
        this.field_63_nfcftnref = 0;
        this.field_65_nfcednref = 2;
        this.field_60_rncftn = sectionProperties.field_60_rncftn;
        this.field_61_rncedn = sectionProperties.field_61_rncedn;
        this.field_62_nftn = sectionProperties.field_62_nftn;
        this.field_63_nfcftnref = sectionProperties.field_63_nfcftnref;
        this.field_64_nedn = sectionProperties.field_64_nedn;
        this.field_65_nfcednref = sectionProperties.field_65_nfcednref;
    }
}
