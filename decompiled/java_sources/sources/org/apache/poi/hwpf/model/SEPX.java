package org.apache.poi.hwpf.model;

import org.apache.poi.hwpf.sprm.SectionSprmCompressor;
import org.apache.poi.hwpf.sprm.SectionSprmUncompressor;
import org.apache.poi.hwpf.sprm.SprmBuffer;
import org.apache.poi.hwpf.usermodel.SectionProperties;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class SEPX extends PropertyNode<SEPX> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    SectionDescriptor _sed;
    SectionProperties sectionProperties;

    public SEPX(SEPX sepx) {
        super(sepx);
        SectionProperties sectionProperties = sepx.sectionProperties;
        this.sectionProperties = sectionProperties == null ? null : sectionProperties.copy();
        SectionDescriptor sectionDescriptor = sepx._sed;
        this._sed = sectionDescriptor != null ? sectionDescriptor.copy() : null;
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public boolean equals(Object obj) {
        if (!(obj instanceof SEPX)) {
            return false;
        }
        SEPX sepx = (SEPX) obj;
        if (super.equals(obj)) {
            return sepx._sed.equals(this._sed);
        }
        return false;
    }

    public byte[] getGrpprl() {
        SectionProperties sectionProperties = this.sectionProperties;
        if (sectionProperties != null) {
            this._buf = new SprmBuffer(SectionSprmCompressor.compressSectionProperty(sectionProperties), 0);
        }
        return ((SprmBuffer) this._buf).toByteArray();
    }

    public SectionDescriptor getSectionDescriptor() {
        return this._sed;
    }

    public SectionProperties getSectionProperties() {
        if (this.sectionProperties == null) {
            this.sectionProperties = SectionSprmUncompressor.uncompressSEP(((SprmBuffer) this._buf).toByteArray(), 0);
        }
        return this.sectionProperties;
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public int hashCode() {
        return 42;
    }

    public String toString() {
        return "SEPX from " + getStart() + " to " + getEnd();
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode, org.apache.poi.common.Duplicatable
    public SEPX copy() {
        return new SEPX(this);
    }

    public SEPX(SectionDescriptor sectionDescriptor, int i, int i2, byte[] bArr) {
        super(i, i2, new SprmBuffer(bArr, 0));
        this._sed = sectionDescriptor;
    }
}
