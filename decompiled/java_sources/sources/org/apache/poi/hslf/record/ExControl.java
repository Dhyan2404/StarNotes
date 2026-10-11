package org.apache.poi.hslf.record;

/* loaded from: classes12.dex */
public final class ExControl extends ExEmbed {
    public ExControl(byte[] bArr, int i, int i2) {
        super(bArr, i, i2);
    }

    public ExControlAtom getExControlAtom() {
        return (ExControlAtom) this._children[0];
    }

    @Override // org.apache.poi.hslf.record.ExEmbed, org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExControl.typeID;
    }

    public ExControl() {
        super(new ExControlAtom());
    }
}
