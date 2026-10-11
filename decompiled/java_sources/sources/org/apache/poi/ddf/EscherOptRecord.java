package org.apache.poi.ddf;

import org.apache.poi.util.Internal;

/* loaded from: classes12.dex */
public class EscherOptRecord extends AbstractEscherOptRecord {
    public static final String RECORD_DESCRIPTION;
    public static final short RECORD_ID;

    static {
        EscherRecordTypes escherRecordTypes = EscherRecordTypes.OPT;
        RECORD_ID = escherRecordTypes.typeID;
        RECORD_DESCRIPTION = escherRecordTypes.description;
    }

    public EscherOptRecord() {
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.OPT;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getInstance() {
        setInstance((short) getEscherProperties().size());
        return super.getInstance();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    @Internal
    public short getOptions() {
        getInstance();
        getVersion();
        return super.getOptions();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.OPT.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getVersion() {
        setVersion((short) 3);
        return super.getVersion();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public void setVersion(short s) {
        if (s == 3) {
            super.setVersion(s);
            return;
        }
        throw new IllegalArgumentException(RECORD_DESCRIPTION + " can have only '0x3' version");
    }

    public EscherOptRecord(EscherOptRecord escherOptRecord) {
        super(escherOptRecord);
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherOptRecord copy() {
        return new EscherOptRecord(this);
    }
}
