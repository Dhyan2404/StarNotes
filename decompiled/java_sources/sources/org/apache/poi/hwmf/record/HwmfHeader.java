package org.apache.poi.hwmf.record;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.record.HwmfHeader;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfHeader implements GenericRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int filesize;
    private long maxRecord;
    private int numberOfMembers;
    private int numberOfObjects;
    private int recordSize;
    private HwmfHeaderMetaType type;
    private int version;

    /* loaded from: classes12.dex */
    public enum HwmfHeaderMetaType {
        MEMORY_METAFILE,
        DISK_METAFILE
    }

    public HwmfHeader(LittleEndianInputStream littleEndianInputStream) throws IOException {
        this.type = HwmfHeaderMetaType.values()[littleEndianInputStream.readUShort() - 1];
        this.recordSize = littleEndianInputStream.readUShort();
        this.version = littleEndianInputStream.readUShort();
        this.filesize = littleEndianInputStream.readInt();
        this.numberOfObjects = littleEndianInputStream.readUShort();
        this.maxRecord = littleEndianInputStream.readUInt();
        this.numberOfMembers = littleEndianInputStream.readUShort();
        int i = ((((((r0 * 2) - 4) - 2) - 4) - 2) - 4) - 2;
        if (i > 0) {
            littleEndianInputStream.skip(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.recordSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.version);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this.filesize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Integer.valueOf(this.numberOfObjects);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return Long.valueOf(this.maxRecord);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$6() {
        return Integer.valueOf(this.numberOfMembers);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("type", new Supplier() { // from class: com.sunia.HTREnginev2.i5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = HwmfHeader.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("recordSize", new Supplier() { // from class: com.sunia.HTREnginev2.j5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = HwmfHeader.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
        linkedHashMap.put("version", new Supplier() { // from class: com.sunia.HTREnginev2.k5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = HwmfHeader.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
        linkedHashMap.put("filesize", new Supplier() { // from class: com.sunia.HTREnginev2.l5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = HwmfHeader.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
        linkedHashMap.put("numberOfObjects", new Supplier() { // from class: com.sunia.HTREnginev2.m5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = HwmfHeader.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        });
        linkedHashMap.put("maxRecord", new Supplier() { // from class: com.sunia.HTREnginev2.n5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = HwmfHeader.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
        linkedHashMap.put("numberOfMembers", new Supplier() { // from class: com.sunia.HTREnginev2.o5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$6;
                lambda$getGenericProperties$6 = HwmfHeader.this.lambda$getGenericProperties$6();
                return lambda$getGenericProperties$6;
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
