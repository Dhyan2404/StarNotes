package org.apache.poi.ddf;

import com.sunia.HTREnginev2.gon;
import com.zaxxer.sparsebits.SparseBitSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.ddf.EscherDggRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class EscherDggRecord extends EscherRecord {
    public static final short RECORD_ID = EscherRecordTypes.DGG.typeID;
    private int field_1_shapeIdMax;
    private int field_3_numShapesSaved;
    private int field_4_drawingsSaved;
    private final List<FileIdCluster> field_5_fileIdClusters;
    private int maxDgId;

    public EscherDggRecord() {
        this.field_5_fileIdClusters = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return super.getGenericProperties();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return this.field_5_fileIdClusters;
    }

    private void sortCluster() {
        this.field_5_fileIdClusters.sort(new Comparator() { // from class: com.sunia.HTREnginev2.xtf
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int access$100;
                access$100 = EscherDggRecord.FileIdCluster.access$100((EscherDggRecord.FileIdCluster) obj, (EscherDggRecord.FileIdCluster) obj2);
                return access$100;
            }
        });
    }

    public FileIdCluster addCluster(int i, int i2) {
        return addCluster(i, i2, true);
    }

    public int allocateShapeId(EscherDgRecord escherDgRecord, boolean z) {
        FileIdCluster fileIdCluster;
        short drawingGroupId = escherDgRecord.getDrawingGroupId();
        this.field_3_numShapesSaved++;
        Iterator<FileIdCluster> it2 = this.field_5_fileIdClusters.iterator();
        int i = 1;
        while (true) {
            if (!it2.hasNext()) {
                fileIdCluster = null;
                break;
            }
            fileIdCluster = it2.next();
            if (fileIdCluster.getDrawingGroupId() == drawingGroupId && fileIdCluster.getNumShapeIdsUsed() < 1024) {
                break;
            }
            i++;
        }
        if (fileIdCluster == null) {
            fileIdCluster = addCluster(drawingGroupId, 0, z);
            this.maxDgId = Math.max(this.maxDgId, (int) drawingGroupId);
        }
        int numShapeIdsUsed = (i * 1024) + fileIdCluster.getNumShapeIdsUsed();
        fileIdCluster.incrementUsedShapeId();
        escherDgRecord.setNumShapes(escherDgRecord.getNumShapes() + 1);
        escherDgRecord.setLastMSOSPID(numShapeIdsUsed);
        this.field_1_shapeIdMax = Math.max(this.field_1_shapeIdMax, numShapeIdsUsed + 1);
        return numShapeIdsUsed;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        int i2 = i + 8;
        this.field_1_shapeIdMax = LittleEndian.getInt(bArr, i2 + 0);
        this.field_3_numShapesSaved = LittleEndian.getInt(bArr, i2 + 8);
        this.field_4_drawingsSaved = LittleEndian.getInt(bArr, i2 + 12);
        this.field_5_fileIdClusters.clear();
        int i3 = (readHeader - 16) / 8;
        int i4 = 16;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i2 + i4;
            int i7 = LittleEndian.getInt(bArr, i6);
            this.field_5_fileIdClusters.add(new FileIdCluster(i7, LittleEndian.getInt(bArr, i6 + 4)));
            this.maxDgId = Math.max(this.maxDgId, i7);
            i4 += 8;
        }
        int i8 = readHeader - i4;
        if (i8 == 0) {
            return i4 + 8;
        }
        throw new RecordFormatException("Expecting no remaining data but got " + i8 + " byte(s).");
    }

    public short findNewDrawingGroupId() {
        SparseBitSet sparseBitSet = new SparseBitSet();
        sparseBitSet.set(0);
        Iterator<FileIdCluster> it2 = this.field_5_fileIdClusters.iterator();
        while (it2.hasNext()) {
            sparseBitSet.set(it2.next().getDrawingGroupId());
        }
        return (short) sparseBitSet.nextClearBit(0);
    }

    public int getDrawingsSaved() {
        return this.field_4_drawingsSaved;
    }

    public FileIdCluster[] getFileIdClusters() {
        return (FileIdCluster[]) this.field_5_fileIdClusters.toArray(new FileIdCluster[0]);
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.auf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = EscherDggRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "fileIdClusters", new Supplier() { // from class: com.sunia.HTREnginev2.buf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = EscherDggRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "shapeIdMax", new Supplier() { // from class: com.sunia.HTREnginev2.cuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherDggRecord.this.getShapeIdMax());
            }
        }, "numIdClusters", new Supplier() { // from class: com.sunia.HTREnginev2.duf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherDggRecord.this.getNumIdClusters());
            }
        }, "numShapesSaved", new Supplier() { // from class: com.sunia.HTREnginev2.euf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherDggRecord.this.getNumShapesSaved());
            }
        }, "drawingsSaved", new Supplier() { // from class: com.sunia.HTREnginev2.fuf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherDggRecord.this.getDrawingsSaved());
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return EscherRecordTypes.DGG;
    }

    public int getMaxDrawingGroupId() {
        return this.maxDgId;
    }

    public int getNumIdClusters() {
        if (this.field_5_fileIdClusters.isEmpty()) {
            return 0;
        }
        return this.field_5_fileIdClusters.size() + 1;
    }

    public int getNumShapesSaved() {
        return this.field_3_numShapesSaved;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public short getRecordId() {
        return RECORD_ID;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return EscherRecordTypes.DGG.recordName;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return (this.field_5_fileIdClusters.size() * 8) + 24;
    }

    public int getShapeIdMax() {
        return this.field_1_shapeIdMax;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        int i2 = i + 2;
        LittleEndian.putShort(bArr, i2, getRecordId());
        int i3 = i2 + 2;
        LittleEndian.putInt(bArr, i3, getRecordSize() - 8);
        int i4 = i3 + 4;
        LittleEndian.putInt(bArr, i4, this.field_1_shapeIdMax);
        int i5 = i4 + 4;
        LittleEndian.putInt(bArr, i5, getNumIdClusters());
        int i6 = i5 + 4;
        LittleEndian.putInt(bArr, i6, this.field_3_numShapesSaved);
        int i7 = i6 + 4;
        LittleEndian.putInt(bArr, i7, this.field_4_drawingsSaved);
        int i8 = i7 + 4;
        for (FileIdCluster fileIdCluster : this.field_5_fileIdClusters) {
            LittleEndian.putInt(bArr, i8, fileIdCluster.getDrawingGroupId());
            int i9 = i8 + 4;
            LittleEndian.putInt(bArr, i9, fileIdCluster.getNumShapeIdsUsed());
            i8 = i9 + 4;
        }
        escherSerializationListener.afterRecordSerialize(i8, getRecordId(), getRecordSize(), this);
        return getRecordSize();
    }

    public void setDrawingsSaved(int i) {
        this.field_4_drawingsSaved = i;
    }

    public void setFileIdClusters(FileIdCluster[] fileIdClusterArr) {
        this.field_5_fileIdClusters.clear();
        if (fileIdClusterArr != null) {
            this.field_5_fileIdClusters.addAll(Arrays.asList(fileIdClusterArr));
        }
    }

    public void setNumShapesSaved(int i) {
        this.field_3_numShapesSaved = i;
    }

    public void setShapeIdMax(int i) {
        this.field_1_shapeIdMax = i;
    }

    public FileIdCluster addCluster(int i, int i2, boolean z) {
        FileIdCluster fileIdCluster = new FileIdCluster(i, i2);
        this.field_5_fileIdClusters.add(fileIdCluster);
        this.maxDgId = Math.min(this.maxDgId, i);
        if (z) {
            sortCluster();
        }
        return fileIdCluster;
    }

    /* loaded from: classes12.dex */
    public static class FileIdCluster implements GenericRecord {
        private int field_1_drawingGroupId;
        private int field_2_numShapeIdsUsed;

        public FileIdCluster(FileIdCluster fileIdCluster) {
            this.field_1_drawingGroupId = fileIdCluster.field_1_drawingGroupId;
            this.field_2_numShapeIdsUsed = fileIdCluster.field_2_numShapeIdsUsed;
        }

        public static /* synthetic */ int access$100(FileIdCluster fileIdCluster, FileIdCluster fileIdCluster2) {
            return compareFileIdCluster(fileIdCluster, fileIdCluster2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int compareFileIdCluster(FileIdCluster fileIdCluster, FileIdCluster fileIdCluster2) {
            int drawingGroupId = fileIdCluster.getDrawingGroupId() - fileIdCluster2.getDrawingGroupId();
            return drawingGroupId != 0 ? drawingGroupId : fileIdCluster2.getNumShapeIdsUsed() - fileIdCluster.getNumShapeIdsUsed();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void incrementUsedShapeId() {
            this.field_2_numShapeIdsUsed++;
        }

        public int getDrawingGroupId() {
            return this.field_1_drawingGroupId;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("drawingGroupId", new Supplier() { // from class: com.sunia.HTREnginev2.guf
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(EscherDggRecord.FileIdCluster.this.getDrawingGroupId());
                }
            }, "numShapeIdUsed", new Supplier() { // from class: com.sunia.HTREnginev2.huf
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(EscherDggRecord.FileIdCluster.this.getNumShapeIdsUsed());
                }
            });
        }

        public int getNumShapeIdsUsed() {
            return this.field_2_numShapeIdsUsed;
        }

        public FileIdCluster(int i, int i2) {
            this.field_1_drawingGroupId = i;
            this.field_2_numShapeIdsUsed = i2;
        }
    }

    public EscherDggRecord(EscherDggRecord escherDggRecord) {
        super(escherDggRecord);
        final ArrayList arrayList = new ArrayList();
        this.field_5_fileIdClusters = arrayList;
        this.field_1_shapeIdMax = escherDggRecord.field_1_shapeIdMax;
        this.field_3_numShapesSaved = escherDggRecord.field_3_numShapesSaved;
        this.field_4_drawingsSaved = escherDggRecord.field_4_drawingsSaved;
        escherDggRecord.field_5_fileIdClusters.stream().map(new Function() { // from class: com.sunia.HTREnginev2.ytf
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new EscherDggRecord.FileIdCluster((EscherDggRecord.FileIdCluster) obj);
            }
        }).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.ztf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((EscherDggRecord.FileIdCluster) obj);
            }
        });
        this.maxDgId = escherDggRecord.maxDgId;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherDggRecord copy() {
        return new EscherDggRecord(this);
    }
}
