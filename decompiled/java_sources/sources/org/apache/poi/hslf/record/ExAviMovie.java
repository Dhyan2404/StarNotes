package org.apache.poi.hslf.record;

/* loaded from: classes12.dex */
public final class ExAviMovie extends ExMCIMovie {
    public ExAviMovie(byte[] bArr, int i, int i2) {
        super(bArr, i, i2);
    }

    @Override // org.apache.poi.hslf.record.ExMCIMovie, org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExAviMovie.typeID;
    }

    public ExAviMovie() {
    }
}
