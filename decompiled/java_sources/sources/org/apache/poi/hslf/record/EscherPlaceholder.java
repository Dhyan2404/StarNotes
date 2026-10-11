package org.apache.poi.hslf.record;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.ddf.EscherSerializationListener;
import org.apache.poi.hslf.record.EscherPlaceholder;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class EscherPlaceholder extends EscherRecord {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String RECORD_DESCRIPTION = "msofbtClientTextboxPlaceholder";
    public static final short RECORD_ID = RecordTypes.OEPlaceholderAtom.typeID;
    private byte placementId;
    private int position;
    private byte size;
    private short unused;

    public EscherPlaceholder() {
        this.position = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        this.position = LittleEndian.getInt(bArr, i + 8);
        this.placementId = bArr[i + 12];
        this.size = bArr[i + 13];
        this.unused = LittleEndian.getShort(bArr, i + 14);
        return readHeader + 8;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.puf
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = EscherPlaceholder.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "position", new Supplier() { // from class: com.sunia.HTREnginev2.quf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EscherPlaceholder.this.getPosition());
            }
        }, "placementId", new Supplier() { // from class: com.sunia.HTREnginev2.ruf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(EscherPlaceholder.this.getPlacementId());
            }
        }, "size", new Supplier() { // from class: com.sunia.HTREnginev2.suf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(EscherPlaceholder.this.getSize());
            }
        });
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return RecordTypes.OEPlaceholderAtom;
    }

    public byte getPlacementId() {
        return this.placementId;
    }

    public int getPosition() {
        return this.position;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return "ClientTextboxPlaceholder";
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return 16;
    }

    public byte getSize() {
        return this.size;
    }

    @Override // org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        LittleEndian.putInt(bArr, i + 4, 8);
        LittleEndian.putInt(bArr, i + 8, this.position);
        LittleEndian.putByte(bArr, i + 12, this.placementId);
        LittleEndian.putByte(bArr, i + 13, this.size);
        LittleEndian.putShort(bArr, i + 14, this.unused);
        escherSerializationListener.afterRecordSerialize(i + getRecordSize(), getRecordId(), getRecordSize(), this);
        return getRecordSize();
    }

    public EscherPlaceholder(EscherPlaceholder escherPlaceholder) {
        super(escherPlaceholder);
        this.position = -1;
        this.position = escherPlaceholder.position;
        this.placementId = escherPlaceholder.placementId;
        this.size = escherPlaceholder.size;
        this.unused = escherPlaceholder.unused;
    }

    @Override // org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public EscherPlaceholder copy() {
        return new EscherPlaceholder(this);
    }
}
