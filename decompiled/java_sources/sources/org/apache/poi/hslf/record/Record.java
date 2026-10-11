package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.message.Message;
import org.apache.logging.log4j.message.StringFormattedMessage;
import org.apache.logging.log4j.util.Supplier;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hslf.exceptions.CorruptPowerPointFileException;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public abstract class Record implements GenericRecord {
    protected static final Logger LOG = LogManager.getLogger((Class<?>) Record.class);

    public static Record buildRecordAtOffset(byte[] bArr, int i) {
        long uShort = LittleEndian.getUShort(bArr, i + 2);
        int uInt = (int) LittleEndian.getUInt(bArr, i + 4);
        if (uInt < 0) {
            uInt = 0;
        }
        return createRecordForType(uShort, bArr, i, uInt + 8);
    }

    /* JADX WARN: Type inference failed for: r7v8, types: [org.apache.poi.hslf.record.Record] */
    public static Record createRecordForType(final long j, byte[] bArr, final int i, int i2) {
        RecordTypes forTypeID = RecordTypes.forTypeID((short) j);
        RecordTypes.RecordConstructor<?> recordConstructor = forTypeID.recordConstructor;
        if (recordConstructor == null) {
            LOG.atDebug().log(new Supplier() { // from class: com.sunia.HTREnginev2.oel
                @Override // org.apache.logging.log4j.util.Supplier
                public final Object get() {
                    Message lambda$createRecordForType$0;
                    lambda$createRecordForType$0 = Record.lambda$createRecordForType$0(j, i);
                    return lambda$createRecordForType$0;
                }
            });
            recordConstructor = RecordTypes.UnknownRecordPlaceholder.recordConstructor;
        } else if (forTypeID == RecordTypes.UnknownRecordPlaceholder) {
            LOG.atDebug().log(new Supplier() { // from class: com.sunia.HTREnginev2.pel
                @Override // org.apache.logging.log4j.util.Supplier
                public final Object get() {
                    Message lambda$createRecordForType$1;
                    lambda$createRecordForType$1 = Record.lambda$createRecordForType$1(j, i);
                    return lambda$createRecordForType$1;
                }
            });
        }
        try {
            ?? apply = recordConstructor.apply(bArr, i, i2);
            if (apply instanceof PositionDependentRecord) {
                ((PositionDependentRecord) apply).setLastOnDiskOffset(i);
            }
            return apply;
        } catch (RuntimeException e) {
            if (i + i2 > bArr.length) {
                LOG.atWarn().log("Warning: Skipping record of type {} at position {} which claims to be longer than the file! ({} vs {})", Long.valueOf(j), Unbox.box(i), Unbox.box(i2), Unbox.box(bArr.length - i));
                return null;
            }
            throw new HSLFException("Couldn't instantiate the class for type with id " + j + " on class " + recordConstructor + " : " + e, e);
        }
    }

    public static Record[] findChildRecords(byte[] bArr, int i, int i2) {
        ArrayList arrayList = new ArrayList(5);
        int i3 = i;
        while (true) {
            if (i3 > (i + i2) - 8) {
                return (Record[]) arrayList.toArray(new Record[0]);
            }
            long uShort = LittleEndian.getUShort(bArr, i3 + 2);
            int uInt = (int) LittleEndian.getUInt(bArr, i3 + 4);
            int i4 = uInt >= 0 ? uInt : 0;
            if (i3 == 0 && uShort == 0 && i4 == 65535) {
                throw new CorruptPowerPointFileException("Corrupt document - starts with record of type 0000 and length 0xFFFF");
            }
            Record createRecordForType = createRecordForType(uShort, bArr, i3, i4 + 8);
            if (createRecordForType != null) {
                arrayList.add(createRecordForType);
            }
            i3 = i3 + 8 + i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Message lambda$createRecordForType$0(long j, int i) {
        return new StringFormattedMessage("Known but unhandled record type %d (0x%04x) at offset %d", Long.valueOf(j), Long.valueOf(j), Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Message lambda$createRecordForType$1(long j, int i) {
        return new StringFormattedMessage("Unknown placeholder type %d (0x%04x) at offset %d", Long.valueOf(j), Long.valueOf(j), Integer.valueOf(i));
    }

    public static void writeLittleEndian(int i, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4];
        LittleEndian.putInt(bArr, 0, i);
        outputStream.write(bArr);
    }

    public abstract Record[] getChildRecords();

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<Record> getGenericChildren() {
        Record[] childRecords = getChildRecords();
        if (childRecords == null) {
            return null;
        }
        return Arrays.asList(childRecords);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Enum getGenericRecordType() {
        return RecordTypes.forTypeID((int) getRecordType());
    }

    public abstract long getRecordType();

    public abstract boolean isAnAtom();

    public abstract void writeOut(OutputStream outputStream) throws IOException;

    public static void writeLittleEndian(short s, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[2];
        LittleEndian.putShort(bArr, 0, s);
        outputStream.write(bArr);
    }
}
