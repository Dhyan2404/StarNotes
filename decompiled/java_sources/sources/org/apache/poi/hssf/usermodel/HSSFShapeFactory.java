package org.apache.poi.hssf.usermodel;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import org.apache.poi.ddf.EscherClientDataRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.hssf.record.CommonObjectDataSubRecord;
import org.apache.poi.hssf.record.EmbeddedObjectRefSubRecord;
import org.apache.poi.hssf.record.EscherAggregate;
import org.apache.poi.hssf.record.ObjRecord;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.hssf.record.TextObjectRecord;
import org.apache.poi.hssf.usermodel.HSSFShapeFactory;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public class HSSFShapeFactory {

    /* renamed from: org.apache.poi.hssf.usermodel.HSSFShapeFactory$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195421 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ddf$EscherRecordTypes;

        static {
            int[] iArr = new int[EscherRecordTypes.values().length];
            $SwitchMap$org$apache$poi$ddf$EscherRecordTypes = iArr;
            try {
                iArr[EscherRecordTypes.CLIENT_DATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.CLIENT_TEXTBOX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static void createShapeTree(EscherContainerRecord escherContainerRecord, final EscherAggregate escherAggregate, HSSFShapeContainer hSSFShapeContainer, final DirectoryNode directoryNode) {
        HSSFShape hSSFSimpleShape;
        if (escherContainerRecord.getRecordId() == EscherContainerRecord.SPGR_CONTAINER) {
            EscherClientDataRecord escherClientDataRecord = (EscherClientDataRecord) ((EscherContainerRecord) escherContainerRecord.getChild(0)).getChildById(EscherClientDataRecord.RECORD_ID);
            final HSSFShapeGroup hSSFShapeGroup = new HSSFShapeGroup(escherContainerRecord, escherClientDataRecord != null ? (ObjRecord) escherAggregate.getShapeToObjMapping().get(escherClientDataRecord) : null);
            List<EscherContainerRecord> childContainers = escherContainerRecord.getChildContainers();
            if (childContainers.size() > 1) {
                childContainers.subList(1, childContainers.size()).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.weh
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        HSSFShapeFactory.createShapeTree((EscherContainerRecord) obj, EscherAggregate.this, hSSFShapeGroup, directoryNode);
                    }
                });
            }
            hSSFShapeContainer.addShape(hSSFShapeGroup);
            return;
        }
        if (escherContainerRecord.getRecordId() == EscherContainerRecord.SP_CONTAINER) {
            Map<EscherRecord, Record> shapeToObjMapping = escherAggregate.getShapeToObjMapping();
            Iterator<EscherRecord> it2 = escherContainerRecord.iterator();
            TextObjectRecord textObjectRecord = null;
            while (it2.hasNext()) {
                EscherRecord next = it2.next();
                int i = C195421.$SwitchMap$org$apache$poi$ddf$EscherRecordTypes[EscherRecordTypes.forTypeID(next.getRecordId()).ordinal()];
                if (i == 1) {
                    Record record = shapeToObjMapping.get(next);
                    if (!(record instanceof ObjRecord)) {
                        throw new RecordFormatException("Did not have a ObjRecord: " + record);
                    }
                    r3 = (ObjRecord) record;
                } else if (i != 2) {
                    continue;
                } else {
                    Record record2 = shapeToObjMapping.get(next);
                    if (!(record2 instanceof TextObjectRecord)) {
                        throw new RecordFormatException("Did not have a TextObjRecord: " + record2);
                    }
                    textObjectRecord = (TextObjectRecord) record2;
                }
            }
            if (r3 == null) {
                throw new RecordFormatException("EscherClientDataRecord can't be found.");
            }
            if (isEmbeddedObject(r3)) {
                hSSFShapeContainer.addShape(new HSSFObjectData(escherContainerRecord, r3, directoryNode));
                return;
            }
            short objectType = ((CommonObjectDataSubRecord) r3.getSubRecords().get(0)).getObjectType();
            if (objectType == 1) {
                hSSFSimpleShape = new HSSFSimpleShape(escherContainerRecord, r3);
            } else if (objectType == 2) {
                hSSFSimpleShape = new HSSFSimpleShape(escherContainerRecord, r3, textObjectRecord);
            } else if (objectType == 6) {
                hSSFSimpleShape = new HSSFTextbox(escherContainerRecord, r3, textObjectRecord);
            } else if (objectType == 8) {
                hSSFSimpleShape = new HSSFPicture(escherContainerRecord, r3);
            } else if (objectType == 20) {
                hSSFSimpleShape = new HSSFCombobox(escherContainerRecord, r3);
            } else if (objectType == 25) {
                hSSFSimpleShape = new HSSFComment(escherContainerRecord, r3, textObjectRecord, escherAggregate.getNoteRecordByObj(r3));
            } else if (objectType != 30) {
                hSSFSimpleShape = new HSSFSimpleShape(escherContainerRecord, r3, textObjectRecord);
            } else {
                EscherOptRecord escherOptRecord = (EscherOptRecord) escherContainerRecord.getChildById(EscherOptRecord.RECORD_ID);
                hSSFSimpleShape = escherOptRecord == null ? new HSSFSimpleShape(escherContainerRecord, r3, textObjectRecord) : escherOptRecord.lookup(EscherPropertyTypes.GEOMETRY__VERTICES) != null ? new HSSFPolygon(escherContainerRecord, r3, textObjectRecord) : new HSSFSimpleShape(escherContainerRecord, r3, textObjectRecord);
            }
            hSSFShapeContainer.addShape(hSSFSimpleShape);
        }
    }

    private static boolean isEmbeddedObject(ObjRecord objRecord) {
        Iterator<SubRecord> it2 = objRecord.getSubRecords().iterator();
        while (it2.hasNext()) {
            if (it2.next() instanceof EmbeddedObjectRefSubRecord) {
                return true;
            }
        }
        return false;
    }
}
