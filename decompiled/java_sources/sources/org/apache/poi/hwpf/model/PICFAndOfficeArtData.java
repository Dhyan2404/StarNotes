package org.apache.poi.hwpf.model;

import java.util.LinkedList;
import java.util.List;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.types.PICFAbstractType;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class PICFAndOfficeArtData {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final List<EscherRecord> _blipRecords = new LinkedList();
    private final PICF _picf;
    private final EscherContainerRecord _shape;
    private byte[] _stPicName;

    public PICFAndOfficeArtData(byte[] bArr, int i) {
        EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
        this._shape = escherContainerRecord;
        PICF picf = new PICF(bArr, i);
        this._picf = picf;
        int size = PICFAbstractType.getSize() + i;
        if (picf.getMm() == 102) {
            short uByte = LittleEndian.getUByte(bArr, size);
            int i2 = size + 1;
            this._stPicName = IOUtils.safelyClone(bArr, i2, uByte, HWPFDocument.getMaxRecordLength());
            size = i2 + uByte;
        }
        DefaultEscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
        int fillFields = size + escherContainerRecord.fillFields(bArr, size, defaultEscherRecordFactory);
        while (fillFields - i < this._picf.getLcb()) {
            EscherRecord createRecord = defaultEscherRecordFactory.createRecord(bArr, fillFields);
            if (createRecord.getRecordId() != -4089 && (createRecord.getRecordId() < -4072 || createRecord.getRecordId() > -3817)) {
                return;
            }
            fillFields += createRecord.fillFields(bArr, fillFields, defaultEscherRecordFactory);
            this._blipRecords.add(createRecord);
        }
    }

    public List<EscherRecord> getBlipRecords() {
        return this._blipRecords;
    }

    public PICF getPicf() {
        return this._picf;
    }

    public EscherContainerRecord getShape() {
        return this._shape;
    }

    public byte[] getStPicName() {
        return this._stPicName;
    }
}
