package org.apache.poi.hssf.record;

import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.hssf.record.DConRefRecord;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class DConRefRecord extends StandardRecord {
    public static final short sid = 81;
    private byte[] _unused;
    private final int charCount;
    private final int charType;
    private final int firstCol;
    private final int firstRow;
    private final int lastCol;
    private final int lastRow;
    private final byte[] path;

    public DConRefRecord(DConRefRecord dConRefRecord) {
        super(dConRefRecord);
        this.firstCol = dConRefRecord.firstCol;
        this.firstRow = dConRefRecord.firstRow;
        this.lastCol = dConRefRecord.lastCol;
        this.lastRow = dConRefRecord.lastRow;
        this.charCount = dConRefRecord.charCount;
        this.charType = dConRefRecord.charType;
        byte[] bArr = dConRefRecord.path;
        this.path = bArr == null ? null : (byte[]) bArr.clone();
        byte[] bArr2 = dConRefRecord._unused;
        this._unused = bArr2 != null ? (byte[]) bArr2.clone() : null;
    }

    private static RecordInputStream bytesToRIStream(byte[] bArr) {
        RecordInputStream recordInputStream = new RecordInputStream(new UnsynchronizedByteArrayInputStream(bArr));
        recordInputStream.nextRecord();
        return recordInputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.charCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.charType);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        byte[] bArr = this.path;
        int length = bArr.length + 9;
        return bArr[0] == 2 ? length + this._unused.length : length;
    }

    public int getFirstColumn() {
        return this.firstCol;
    }

    public int getFirstRow() {
        return this.firstRow;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("firstRow", new Supplier() { // from class: com.sunia.HTREnginev2.gqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DConRefRecord.this.getFirstRow());
            }
        }, "lastRow", new Supplier() { // from class: com.sunia.HTREnginev2.hqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DConRefRecord.this.getLastRow());
            }
        }, "firstColumn", new Supplier() { // from class: com.sunia.HTREnginev2.iqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DConRefRecord.this.getFirstColumn());
            }
        }, "lastColumn", new Supplier() { // from class: com.sunia.HTREnginev2.jqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DConRefRecord.this.getLastColumn());
            }
        }, "charCount", new Supplier() { // from class: com.sunia.HTREnginev2.kqe
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = DConRefRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "charType", new Supplier() { // from class: com.sunia.HTREnginev2.lqe
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = DConRefRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "path", new Supplier() { // from class: com.sunia.HTREnginev2.mqe
            @Override // java.util.function.Supplier
            public final Object get() {
                return DConRefRecord.this.getReadablePath();
            }
        });
    }

    public int getLastColumn() {
        return this.lastCol;
    }

    public int getLastRow() {
        return this.lastRow;
    }

    public byte[] getPath() {
        byte[] bArr = this.path;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public String getReadablePath() {
        byte[] bArr;
        if (this.path == null) {
            return null;
        }
        int i = 1;
        while (true) {
            bArr = this.path;
            if (i >= bArr.length || bArr[i] >= 32) {
                break;
            }
            i++;
        }
        return new String(Arrays.copyOfRange(bArr, i, bArr.length), StringUtil.UTF8).replace("\u0003", "/");
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 81;
    }

    public boolean isExternalRef() {
        return this.path[0] == 1;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.firstRow);
        littleEndianOutput.writeShort(this.lastRow);
        littleEndianOutput.writeByte(this.firstCol);
        littleEndianOutput.writeByte(this.lastCol);
        littleEndianOutput.writeShort(this.charCount);
        littleEndianOutput.writeByte(this.charType);
        littleEndianOutput.write(this.path);
        if (this.path[0] == 2) {
            littleEndianOutput.write(this._unused);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DCON_REF;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DConRefRecord copy() {
        return new DConRefRecord(this);
    }

    public DConRefRecord(byte[] bArr) {
        this(bytesToRIStream(bArr));
    }

    public DConRefRecord(RecordInputStream recordInputStream) {
        if (recordInputStream.getSid() == 81) {
            this.firstRow = recordInputStream.readUShort();
            this.lastRow = recordInputStream.readUShort();
            this.firstCol = recordInputStream.readUByte();
            this.lastCol = recordInputStream.readUByte();
            this.charCount = recordInputStream.readUShort();
            this.charType = recordInputStream.readUByte() & 1;
            byte[] safelyAllocate = IOUtils.safelyAllocate(r0 * (r1 + 1), HSSFWorkbook.getMaxRecordLength());
            this.path = safelyAllocate;
            recordInputStream.readFully(safelyAllocate);
            if (safelyAllocate[0] == 2) {
                this._unused = recordInputStream.readRemainder();
                return;
            }
            return;
        }
        throw new RecordFormatException("Wrong sid: " + ((int) recordInputStream.getSid()));
    }
}
