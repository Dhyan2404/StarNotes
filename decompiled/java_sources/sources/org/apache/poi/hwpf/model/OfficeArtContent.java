package org.apache.poi.hwpf.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class OfficeArtContent {
    protected static final Logger LOG = LogManager.getLogger((Class<?>) OfficeArtContent.class);
    private final EscherContainerRecord drawingGroupData = new EscherContainerRecord();
    private EscherContainerRecord headerDocumentDgContainer;
    private EscherContainerRecord mainDocumentDgContainer;

    public OfficeArtContent(byte[] bArr, int i, int i2) {
        fillEscherRecords(bArr, i, i2);
    }

    private void fillEscherRecords(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        DefaultEscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
        int fillFields = this.drawingGroupData.fillFields(bArr, i, defaultEscherRecordFactory) + i;
        if (this.drawingGroupData.getRecordId() == EscherRecordTypes.DGG_CONTAINER.typeID) {
            LOG.atDebug().log("Invalid record-id for filling Escher records: " + ((int) this.drawingGroupData.getRecordId()));
        }
        while (true) {
            int i3 = i + i2;
            if (fillFields >= i3) {
                if (fillFields == i3) {
                    return;
                }
                throw new IllegalStateException("Did not read all data when filling Escher records: pos: " + fillFields + ", offset: " + i + ", size: " + i2);
            }
            byte b = bArr[fillFields];
            if (b != 0 && b != 1) {
                throw new IllegalArgumentException("Invalid dgglbl when filling Escher records: " + ((int) b));
            }
            int i4 = fillFields + 1;
            EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
            fillFields = i4 + escherContainerRecord.fillFields(bArr, i4, defaultEscherRecordFactory);
            if (escherContainerRecord.getRecordId() != EscherRecordTypes.DG_CONTAINER.typeID) {
                throw new IllegalArgumentException("Did have an invalid record-type: " + ((int) escherContainerRecord.getRecordId()) + " when filling Escher records");
            }
            if (b == 0) {
                this.mainDocumentDgContainer = escherContainerRecord;
            } else if (b != 1) {
                LogManager.getLogger((Class<?>) OfficeArtContent.class).atWarn().log("dgglbl {} for OfficeArtWordDrawing is out of bounds [0, 1]", Unbox.box(b));
            } else {
                this.headerDocumentDgContainer = escherContainerRecord;
            }
        }
    }

    private List<? extends EscherContainerRecord> getDgContainers() {
        ArrayList arrayList = new ArrayList(2);
        EscherContainerRecord escherContainerRecord = this.mainDocumentDgContainer;
        if (escherContainerRecord != null) {
            arrayList.add(escherContainerRecord);
        }
        EscherContainerRecord escherContainerRecord2 = this.headerDocumentDgContainer;
        if (escherContainerRecord2 != null) {
            arrayList.add(escherContainerRecord2);
        }
        return arrayList;
    }

    public EscherContainerRecord getBStoreContainer() {
        return (EscherContainerRecord) this.drawingGroupData.getChildById(EscherRecordTypes.BSTORE_CONTAINER.typeID);
    }

    public List<? extends EscherContainerRecord> getSpContainers() {
        ArrayList arrayList = new ArrayList(1);
        Iterator<? extends EscherContainerRecord> it2 = getSpgrContainers().iterator();
        while (it2.hasNext()) {
            Iterator<EscherRecord> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                EscherRecord next = it3.next();
                if (next.getRecordId() == -4092) {
                    arrayList.add((EscherContainerRecord) next);
                }
            }
        }
        return arrayList;
    }

    public List<? extends EscherContainerRecord> getSpgrContainers() {
        ArrayList arrayList = new ArrayList(1);
        Iterator<? extends EscherContainerRecord> it2 = getDgContainers().iterator();
        while (it2.hasNext()) {
            Iterator<EscherRecord> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                EscherRecord next = it3.next();
                if (next.getRecordId() == -4093) {
                    arrayList.add((EscherContainerRecord) next);
                }
            }
        }
        return arrayList;
    }

    public String toString() {
        return "OfficeArtContent{drawingGroupData=" + this.drawingGroupData + ", mainDocumentDgContainer=" + this.mainDocumentDgContainer + ", headerDocumentDgContainer=" + this.headerDocumentDgContainer + '}';
    }
}
