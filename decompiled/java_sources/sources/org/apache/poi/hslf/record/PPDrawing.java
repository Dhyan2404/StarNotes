package org.apache.poi.hslf.record;

import com.sunia.HTREnginev2.dyo;
import com.sunia.HTREnginev2.sym;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.poi.ddf.EscherBoolProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherDgRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRGBProperty;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.ddf.EscherSpgrRecord;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;
import org.apache.poi.hslf.record.PPDrawing;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.StyleTextProp9Atom;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PPDrawing extends RecordAtom implements Iterable<EscherRecord> {
    private final byte[] _header;
    private long _type;

    /* renamed from: dg */
    private EscherDgRecord f111381dg;
    private final EscherContainerRecord dgContainer;
    private EscherTextboxWrapper[] textboxWrappers;

    public PPDrawing() {
        this.dgContainer = new EscherContainerRecord();
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 15);
        LittleEndian.putUShort(bArr, 2, RecordTypes.PPDrawing.typeID);
        LittleEndian.putInt(bArr, 4, 0);
        this.textboxWrappers = new EscherTextboxWrapper[0];
        create();
    }

    private void create() {
        this.dgContainer.setRecordId(EscherContainerRecord.DG_CONTAINER);
        this.dgContainer.setOptions((short) 15);
        EscherDgRecord escherDgRecord = new EscherDgRecord();
        this.f111381dg = escherDgRecord;
        escherDgRecord.setOptions((short) 16);
        this.f111381dg.setNumShapes(1);
        this.dgContainer.addChildRecord(this.f111381dg);
        EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
        escherContainerRecord.setOptions((short) 15);
        escherContainerRecord.setRecordId(EscherContainerRecord.SPGR_CONTAINER);
        EscherContainerRecord escherContainerRecord2 = new EscherContainerRecord();
        escherContainerRecord2.setOptions((short) 15);
        short s = EscherContainerRecord.SP_CONTAINER;
        escherContainerRecord2.setRecordId(s);
        EscherSpgrRecord escherSpgrRecord = new EscherSpgrRecord();
        escherSpgrRecord.setOptions((short) 1);
        escherContainerRecord2.addChildRecord(escherSpgrRecord);
        EscherSpRecord escherSpRecord = new EscherSpRecord();
        escherSpRecord.setOptions((short) ((ShapeType.NOT_PRIMITIVE.nativeId << 4) + 2));
        escherSpRecord.setFlags(5);
        escherContainerRecord2.addChildRecord(escherSpRecord);
        escherContainerRecord.addChildRecord(escherContainerRecord2);
        this.dgContainer.addChildRecord(escherContainerRecord);
        EscherContainerRecord escherContainerRecord3 = new EscherContainerRecord();
        escherContainerRecord3.setOptions((short) 15);
        escherContainerRecord3.setRecordId(s);
        EscherSpRecord escherSpRecord2 = new EscherSpRecord();
        escherSpRecord2.setOptions((short) ((ShapeType.RECT.nativeId << 4) + 2));
        escherSpRecord2.setFlags(3072);
        escherContainerRecord3.addChildRecord(escherSpRecord2);
        EscherOptRecord escherOptRecord = new EscherOptRecord();
        escherOptRecord.setRecordId(EscherOptRecord.RECORD_ID);
        escherOptRecord.addEscherProperty(new EscherRGBProperty(EscherPropertyTypes.FILL__FILLCOLOR, 134217728));
        escherOptRecord.addEscherProperty(new EscherRGBProperty(EscherPropertyTypes.FILL__FILLBACKCOLOR, 134217733));
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.FILL__RECTRIGHT, 10064750));
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.FILL__RECTBOTTOM, 7778750));
        escherOptRecord.addEscherProperty(new EscherBoolProperty(EscherPropertyTypes.FILL__NOFILLHITTEST, 1179666));
        escherOptRecord.addEscherProperty(new EscherBoolProperty(EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 524288));
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.SHAPE__BLACKANDWHITESETTINGS, 9));
        escherOptRecord.addEscherProperty(new EscherSimpleProperty(EscherPropertyTypes.SHAPE__BACKGROUNDSHAPE, 65537));
        escherContainerRecord3.addChildRecord(escherOptRecord);
        this.dgContainer.addChildRecord(escherContainerRecord3);
    }

    private static Function<EscherContainerRecord, Stream<EscherContainerRecord>> findEscherContainer(final EscherRecordTypes escherRecordTypes) {
        return new Function() { // from class: com.sunia.HTREnginev2.mkk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream lambda$findEscherContainer$6;
                lambda$findEscherContainer$6 = PPDrawing.lambda$findEscherContainer$6(EscherRecordTypes.this, (EscherContainerRecord) obj);
                return lambda$findEscherContainer$6;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Stream<StyleTextProp9Atom> findInProgBinaryTag(Record record) {
        StyleTextProp9Atom styleTextProp9Atom;
        Record[] childRecords = record.getChildRecords();
        if (childRecords != null && childRecords.length == 2) {
            Record record2 = childRecords[0];
            if ((record2 instanceof CString) && (childRecords[1] instanceof BinaryTagDataBlob) && "___PPT9".equals(((CString) record2).getText()) && (styleTextProp9Atom = (StyleTextProp9Atom) ((BinaryTagDataBlob) childRecords[1]).findFirstOfType(RecordTypes.StyleTextProp9Atom.typeID)) != null) {
                return Stream.of(styleTextProp9Atom);
            }
        }
        return Stream.empty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Optional<StyleTextProp9Atom> findInSpContainer(EscherContainerRecord escherContainerRecord) {
        return ((Stream) firstEscherRecord(escherContainerRecord, EscherRecordTypes.CLIENT_DATA).map(new Function() { // from class: com.sunia.HTREnginev2.pkk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((HSLFEscherClientDataRecord) obj).getHSLFChildRecords();
            }
        }).map(new dyo()).orElseGet(new sym())).filter(sameHSLF(RecordTypes.ProgTags)).flatMap(new Function() { // from class: com.sunia.HTREnginev2.qkk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream lambda$findInSpContainer$1;
                lambda$findInSpContainer$1 = PPDrawing.lambda$findInSpContainer$1((Record) obj);
                return lambda$findInSpContainer$1;
            }
        }).filter(sameHSLF(RecordTypes.ProgBinaryTag)).flatMap(new Function() { // from class: com.sunia.HTREnginev2.rkk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream findInProgBinaryTag;
                findInProgBinaryTag = PPDrawing.findInProgBinaryTag((Record) obj);
                return findInProgBinaryTag;
            }
        }).findFirst();
    }

    private static <T extends EscherRecord> Optional<T> firstEscherRecord(Iterable<EscherRecord> iterable, EscherRecordTypes escherRecordTypes) {
        return StreamSupport.stream(iterable.spliterator(), false).filter(sameEscher(escherRecordTypes)).map(new Function() { // from class: com.sunia.HTREnginev2.okk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                EscherRecord lambda$firstEscherRecord$5;
                lambda$firstEscherRecord$5 = PPDrawing.lambda$firstEscherRecord$5((EscherRecord) obj);
                return lambda$firstEscherRecord$5;
            }
        }).findFirst();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Stream<EscherTextboxWrapper> getTextboxHelper(EscherContainerRecord escherContainerRecord) {
        Optional firstEscherRecord = firstEscherRecord(escherContainerRecord, EscherRecordTypes.CLIENT_TEXTBOX);
        if (!firstEscherRecord.isPresent()) {
            return Stream.empty();
        }
        final EscherTextboxWrapper escherTextboxWrapper = new EscherTextboxWrapper((EscherTextboxRecord) firstEscherRecord.get());
        findInSpContainer(escherContainerRecord).ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.xkk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                EscherTextboxWrapper.this.setStyleTextProp9Atom((StyleTextProp9Atom) obj);
            }
        });
        firstEscherRecord(escherContainerRecord, EscherRecordTypes.SP).map(new Function() { // from class: com.sunia.HTREnginev2.ykk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((EscherSpRecord) obj).getShapeId());
            }
        }).ifPresent(new Consumer() { // from class: com.sunia.HTREnginev2.zkk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                EscherTextboxWrapper.this.setShapeId(((Integer) obj).intValue());
            }
        });
        return Stream.of(escherTextboxWrapper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$findEscherContainer$6(EscherRecordTypes escherRecordTypes, EscherContainerRecord escherContainerRecord) {
        return escherContainerRecord.getChildContainers().stream().filter(sameEscher(escherRecordTypes));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Stream lambda$findInSpContainer$1(Record record) {
        return Stream.of((Object[]) record.getChildRecords());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ EscherRecord lambda$firstEscherRecord$5(EscherRecord escherRecord) {
        return escherRecord;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StyleTextProp9Atom[] lambda$getNumberedListInfo$2(int i) {
        return new StyleTextProp9Atom[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ EscherTextboxWrapper[] lambda$new$0(int i) {
        return new EscherTextboxWrapper[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$sameEscher$4(EscherRecordTypes escherRecordTypes, EscherRecord escherRecord) {
        return escherRecord.getRecordId() == escherRecordTypes.typeID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$sameHSLF$3(RecordTypes recordTypes, Record record) {
        return record.getRecordType() == ((long) recordTypes.typeID);
    }

    private static Predicate<EscherRecord> sameEscher(final EscherRecordTypes escherRecordTypes) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.alk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$sameEscher$4;
                lambda$sameEscher$4 = PPDrawing.lambda$sameEscher$4(EscherRecordTypes.this, (EscherRecord) obj);
                return lambda$sameEscher$4;
            }
        };
    }

    private static Predicate<Record> sameHSLF(final RecordTypes recordTypes) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.nkk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$sameHSLF$3;
                lambda$sameHSLF$3 = PPDrawing.lambda$sameHSLF$3(RecordTypes.this, (Record) obj);
                return lambda$sameHSLF$3;
            }
        };
    }

    public void addTextboxWrapper(EscherTextboxWrapper escherTextboxWrapper) {
        EscherTextboxWrapper[] escherTextboxWrapperArr = this.textboxWrappers;
        EscherTextboxWrapper[] escherTextboxWrapperArr2 = new EscherTextboxWrapper[escherTextboxWrapperArr.length + 1];
        System.arraycopy(escherTextboxWrapperArr, 0, escherTextboxWrapperArr2, 0, escherTextboxWrapperArr.length);
        escherTextboxWrapperArr2[this.textboxWrappers.length] = escherTextboxWrapper;
        this.textboxWrappers = escherTextboxWrapperArr2;
    }

    @Override // org.apache.poi.hslf.record.RecordAtom, org.apache.poi.hslf.record.Record
    public Record[] getChildRecords() {
        return null;
    }

    public EscherContainerRecord getDgContainer() {
        return this.dgContainer;
    }

    public EscherDgRecord getEscherDgRecord() {
        return this.f111381dg;
    }

    public List<EscherRecord> getEscherRecords() {
        return Collections.singletonList(this.dgContainer);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("escherRecords", new Supplier() { // from class: com.sunia.HTREnginev2.lkk
            @Override // java.util.function.Supplier
            public final Object get() {
                return PPDrawing.this.getEscherRecords();
            }
        });
    }

    public StyleTextProp9Atom[] getNumberedListInfo() {
        return (StyleTextProp9Atom[]) Stream.of(this.dgContainer).flatMap(findEscherContainer(EscherRecordTypes.SPGR_CONTAINER)).flatMap(findEscherContainer(EscherRecordTypes.SP_CONTAINER)).map(new Function() { // from class: com.sunia.HTREnginev2.kkk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Optional findInSpContainer;
                findInSpContainer = PPDrawing.findInSpContainer((EscherContainerRecord) obj);
                return findInSpContainer;
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.skk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((Optional) obj).isPresent();
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.tkk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (StyleTextProp9Atom) ((Optional) obj).get();
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.ukk
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                StyleTextProp9Atom[] lambda$getNumberedListInfo$2;
                lambda$getNumberedListInfo$2 = PPDrawing.lambda$getNumberedListInfo$2(i);
                return lambda$getNumberedListInfo$2;
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return this._type;
    }

    public EscherTextboxWrapper[] getTextboxWrappers() {
        return this.textboxWrappers;
    }

    @Override // java.lang.Iterable
    public Iterator<EscherRecord> iterator() {
        return getEscherRecords().iterator();
    }

    @Override // java.lang.Iterable
    public Spliterator<EscherRecord> spliterator() {
        return getEscherRecords().spliterator();
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        for (EscherTextboxWrapper escherTextboxWrapper : this.textboxWrappers) {
            escherTextboxWrapper.writeOut(null);
        }
        int recordSize = this.dgContainer.getRecordSize() + 0;
        LittleEndian.putInt(this._header, 4, recordSize);
        outputStream.write(this._header);
        byte[] bArr = new byte[recordSize];
        this.dgContainer.serialize(0, bArr);
        outputStream.write(bArr);
    }

    public PPDrawing(byte[] bArr, int i, int i2) {
        EscherContainerRecord escherContainerRecord = new EscherContainerRecord();
        this.dgContainer = escherContainerRecord;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._type = LittleEndian.getUShort(r5, 2);
        escherContainerRecord.fillFields(bArr, i3, new HSLFEscherRecordFactory());
        if (escherContainerRecord.getRecordId() == EscherRecordTypes.DG_CONTAINER.typeID) {
            this.f111381dg = (EscherDgRecord) escherContainerRecord.getChildById(EscherRecordTypes.DG.typeID);
            this.textboxWrappers = (EscherTextboxWrapper[]) Stream.of(escherContainerRecord).flatMap(findEscherContainer(EscherRecordTypes.SPGR_CONTAINER)).flatMap(findEscherContainer(EscherRecordTypes.SP_CONTAINER)).flatMap(new Function() { // from class: com.sunia.HTREnginev2.vkk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Stream textboxHelper;
                    textboxHelper = PPDrawing.getTextboxHelper((EscherContainerRecord) obj);
                    return textboxHelper;
                }
            }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.wkk
                @Override // java.util.function.IntFunction
                public final Object apply(int i4) {
                    EscherTextboxWrapper[] lambda$new$0;
                    lambda$new$0 = PPDrawing.lambda$new$0(i4);
                    return lambda$new$0;
                }
            });
        } else {
            throw new IllegalArgumentException("Unexpected record type: " + ((int) escherContainerRecord.getRecordId()));
        }
    }
}
