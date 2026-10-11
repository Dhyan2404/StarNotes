package org.apache.poi.hemf.record.emfplus;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hemf.draw.HemfGraphics;
import org.apache.poi.hemf.record.emfplus.HemfPlusBrush;
import org.apache.poi.hemf.record.emfplus.HemfPlusFont;
import org.apache.poi.hemf.record.emfplus.HemfPlusHeader;
import org.apache.poi.hemf.record.emfplus.HemfPlusImage;
import org.apache.poi.hemf.record.emfplus.HemfPlusMisc;
import org.apache.poi.hemf.record.emfplus.HemfPlusObject;
import org.apache.poi.hemf.record.emfplus.HemfPlusPath;
import org.apache.poi.hemf.record.emfplus.HemfPlusPen;
import org.apache.poi.hemf.record.emfplus.HemfPlusRegion;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfObjectTableEntry;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HemfPlusObject {
    private static final int MAX_OBJECT_SIZE = 50000000;

    /* loaded from: classes12.dex */
    public static class EmfPlusObject implements HemfPlusRecord, HemfPlusMisc.EmfPlusObjectId, HwmfObjectTableEntry {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private List<EmfPlusObjectData> continuedObjectData;
        private int flags;
        private EmfPlusObjectData objectData;
        private int objectId;
        private int totalObjectSize;
        private static final BitField CONTINUABLE = BitFieldFactory.getInstance(32768);
        private static final BitField OBJECT_TYPE = BitFieldFactory.getInstance(32512);
        private static final int[] FLAGS_MASKS = {32512, 32768};
        private static final String[] FLAGS_NAMES = {"OBJECT_TYPE", "CONTINUABLE"};

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            if (this.objectData.isContinuedRecord()) {
                return null;
            }
            return getObjectData();
        }

        @Override // org.apache.poi.hwmf.record.HwmfObjectTableEntry
        public void applyObject(HwmfGraphics hwmfGraphics) {
            this.objectData.applyObject((HemfGraphics) hwmfGraphics, this.continuedObjectData);
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public void draw(HemfGraphics hemfGraphics) {
            if (!this.objectData.isContinuedRecord()) {
                hemfGraphics.addPlusObjectTableEntry(this, getObjectId());
                return;
            }
            HwmfObjectTableEntry plusObjectTableEntry = hemfGraphics.getPlusObjectTableEntry(getObjectId());
            if (plusObjectTableEntry instanceof EmfPlusObject) {
                EmfPlusObject emfPlusObject = (EmfPlusObject) plusObjectTableEntry;
                if (this.objectData.getClass().isInstance(emfPlusObject.getObjectData())) {
                    emfPlusObject.linkContinuedObject(this.objectData);
                    return;
                }
            }
            throw new IllegalStateException("can't find previous record for continued record");
        }

        public List<EmfPlusObjectData> getContinuedObject() {
            return this.continuedObjectData;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public HemfPlusRecordType getEmfPlusRecordType() {
            return HemfPlusRecordType.object;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord, org.apache.poi.hemf.record.emfplus.HemfPlusMisc.EmfPlusObjectId, org.apache.poi.hemf.record.emfplus.HemfPlusDraw.EmfPlusSolidColor
        public int getFlags() {
            return this.flags;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            Supplier<GenericRecordUtil.AnnotatedFlag> bitsAsString = GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.xqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusObject.EmfPlusObject.this.getFlags());
                }
            }, FLAGS_MASKS, FLAGS_NAMES);
            Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.yqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusObject.EmfPlusObject.this.getObjectId());
                }
            };
            Supplier supplier2 = new Supplier() { // from class: com.sunia.HTREnginev2.zqh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusObject.EmfPlusObject.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            };
            final EmfPlusObjectData emfPlusObjectData = this.objectData;
            emfPlusObjectData.getClass();
            return GenericRecordUtil.getGenericProperties("flags", bitsAsString, "objectId", supplier, "objectData", supplier2, "continuedObject", new Supplier() { // from class: com.sunia.HTREnginev2.arh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Boolean.valueOf(HemfPlusObject.EmfPlusObjectData.this.isContinuedRecord());
                }
            }, "totalObjectSize", new Supplier() { // from class: com.sunia.HTREnginev2.brh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(HemfPlusObject.EmfPlusObject.this.getTotalObjectSize());
                }
            });
        }

        public <T extends EmfPlusObjectData> T getObjectData() {
            return (T) this.objectData;
        }

        public EmfPlusObjectType getObjectType() {
            return EmfPlusObjectType.valueOf(OBJECT_TYPE.getValue(this.flags));
        }

        public int getTotalObjectSize() {
            return this.totalObjectSize;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusRecord
        public long init(LittleEndianInputStream littleEndianInputStream, long j, long j2, int i) throws IOException {
            long j3;
            this.flags = i;
            this.objectId = getObjectId();
            EmfPlusObjectType objectType = getObjectType();
            this.totalObjectSize = 0;
            int i2 = (int) j;
            if (CONTINUABLE.isSet(i)) {
                this.totalObjectSize = littleEndianInputStream.readInt();
                i2 -= 4;
                j3 = 4;
            } else {
                j3 = 0;
            }
            this.objectData = objectType.constructor.get();
            return Math.toIntExact(j3 + r0.init(littleEndianInputStream, i2, objectType, i));
        }

        public void linkContinuedObject(EmfPlusObjectData emfPlusObjectData) {
            if (this.continuedObjectData == null) {
                this.continuedObjectData = new ArrayList();
            }
            this.continuedObjectData.add(emfPlusObjectData);
        }
    }

    /* loaded from: classes12.dex */
    public interface EmfPlusObjectData extends GenericRecord {
        void applyObject(HemfGraphics hemfGraphics, List<? extends EmfPlusObjectData> list);

        HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion();

        long init(LittleEndianInputStream littleEndianInputStream, long j, EmfPlusObjectType emfPlusObjectType, int i) throws IOException;

        default boolean isContinuedRecord() {
            HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = getGraphicsVersion();
            return graphicsVersion.getGraphicsVersion() == null || graphicsVersion.getMetafileSignature() != 900097;
        }
    }

    /* loaded from: classes12.dex */
    public enum EmfPlusObjectType {
        INVALID(0, new Supplier() { // from class: com.sunia.HTREnginev2.crh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusObject.EmfPlusUnknownData();
            }
        }),
        BRUSH(1, new Supplier() { // from class: com.sunia.HTREnginev2.drh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusBrush.EmfPlusBrush();
            }
        }),
        PEN(2, new Supplier() { // from class: com.sunia.HTREnginev2.erh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusPen.EmfPlusPen();
            }
        }),
        PATH(3, new Supplier() { // from class: com.sunia.HTREnginev2.frh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusPath.EmfPlusPath();
            }
        }),
        REGION(4, new Supplier() { // from class: com.sunia.HTREnginev2.grh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusRegion.EmfPlusRegion();
            }
        }),
        IMAGE(5, new Supplier() { // from class: com.sunia.HTREnginev2.hrh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusImage.EmfPlusImage();
            }
        }),
        FONT(6, new Supplier() { // from class: com.sunia.HTREnginev2.irh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusFont.EmfPlusFont();
            }
        }),
        STRING_FORMAT(7, new Supplier() { // from class: com.sunia.HTREnginev2.crh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusObject.EmfPlusUnknownData();
            }
        }),
        IMAGE_ATTRIBUTES(8, new Supplier() { // from class: com.sunia.HTREnginev2.jrh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusImage.EmfPlusImageAttributes();
            }
        }),
        CUSTOM_LINE_CAP(9, new Supplier() { // from class: com.sunia.HTREnginev2.crh
            @Override // java.util.function.Supplier
            public final Object get() {
                return new HemfPlusObject.EmfPlusUnknownData();
            }
        });

        public final Supplier<? extends EmfPlusObjectData> constructor;

        /* renamed from: id */
        public final int f111358id;

        EmfPlusObjectType(int i, Supplier supplier) {
            this.f111358id = i;
            this.constructor = supplier;
        }

        public static EmfPlusObjectType valueOf(int i) {
            for (EmfPlusObjectType emfPlusObjectType : values()) {
                if (emfPlusObjectType.f111358id == i) {
                    return emfPlusObjectType;
                }
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static class EmfPlusUnknownData implements EmfPlusObjectData {
        private final HemfPlusHeader.EmfPlusGraphicsVersion graphicsVersion = new HemfPlusHeader.EmfPlusGraphicsVersion();
        private byte[] objectDataBytes;
        private EmfPlusObjectType objectType;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$getGenericProperties$0() {
            return this.objectDataBytes;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public void applyObject(HemfGraphics hemfGraphics, List<? extends EmfPlusObjectData> list) {
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("graphicsVersion", new Supplier() { // from class: com.sunia.HTREnginev2.krh
                @Override // java.util.function.Supplier
                public final Object get() {
                    return HemfPlusObject.EmfPlusUnknownData.this.getGraphicsVersion();
                }
            }, "objectDataBytes", new Supplier() { // from class: com.sunia.HTREnginev2.lrh
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = HemfPlusObject.EmfPlusUnknownData.this.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            });
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public HemfPlusHeader.EmfPlusGraphicsVersion getGraphicsVersion() {
            return this.graphicsVersion;
        }

        @Override // org.apache.poi.hemf.record.emfplus.HemfPlusObject.EmfPlusObjectData
        public long init(LittleEndianInputStream littleEndianInputStream, long j, EmfPlusObjectType emfPlusObjectType, int i) throws IOException {
            this.objectType = emfPlusObjectType;
            this.objectDataBytes = IOUtils.toByteArray(littleEndianInputStream, (int) (j - this.graphicsVersion.init(littleEndianInputStream)), 50000000);
            return j;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public EmfPlusObjectType getGenericRecordType() {
            return this.objectType;
        }
    }
}
