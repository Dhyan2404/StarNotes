package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hssf.record.crypto.Biff8DecryptingStream;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class RecordInputStream implements LittleEndianInput {
    private static final int DATA_LEN_NEEDS_TO_BE_READ = -1;
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private static final int INVALID_SID_VALUE = -1;
    public static final short MAX_RECORD_DATA_SIZE = 8224;
    private final BiffHeaderInput _bhi;
    private int _currentDataLength;
    private int _currentDataOffset;
    private int _currentSid;
    private final LittleEndianInput _dataInput;
    private int _markedDataOffset;
    private int _nextSid;

    /* loaded from: classes12.dex */
    public static final class LeftoverDataException extends RuntimeException {
        public LeftoverDataException(int i, int i2) {
            super("Initialisation of record 0x" + Integer.toHexString(i).toUpperCase(Locale.ROOT) + MotionUtils.f31761c + getRecordName(i) + ") left " + i2 + " bytes remaining still to be read.");
        }

        private static String getRecordName(int i) {
            Class<? extends Record> recordClass = RecordFactory.getRecordClass(i);
            if (recordClass == null) {
                return null;
            }
            return recordClass.getSimpleName();
        }
    }

    /* loaded from: classes12.dex */
    public static final class SimpleHeaderInput implements BiffHeaderInput {
        private final LittleEndianInput _lei;

        @Override // org.apache.poi.hssf.record.BiffHeaderInput
        public int available() {
            return this._lei.available();
        }

        @Override // org.apache.poi.hssf.record.BiffHeaderInput
        public int readDataSize() {
            return this._lei.readUShort();
        }

        @Override // org.apache.poi.hssf.record.BiffHeaderInput
        public int readRecordSID() {
            return this._lei.readUShort();
        }

        private SimpleHeaderInput(LittleEndianInput littleEndianInput) {
            this._lei = littleEndianInput;
        }
    }

    public RecordInputStream(InputStream inputStream) throws RecordFormatException {
        this(inputStream, null, 0);
    }

    private void checkRecordPosition(int i) {
        int remaining = remaining();
        if (remaining >= i) {
            return;
        }
        if (remaining == 0 && isContinueNext()) {
            nextRecord();
            return;
        }
        throw new RecordFormatException("Not enough data (" + remaining + ") to read requested (" + i + ") bytes");
    }

    private boolean isContinueNext() {
        int i = this._currentDataLength;
        if (i == -1 || this._currentDataOffset == i) {
            return hasNextRecord() && this._nextSid == 60;
        }
        throw new IllegalStateException("Should never be called before end of current record");
    }

    private int readNextSid() {
        if (this._bhi.available() < 4) {
            return -1;
        }
        int readRecordSID = this._bhi.readRecordSID();
        if (readRecordSID != -1) {
            this._currentDataLength = -1;
            return readRecordSID;
        }
        throw new RecordFormatException("Found invalid sid (" + readRecordSID + MotionUtils.f31762d);
    }

    private String readStringCommon(int i, boolean z) {
        if (i < 0 || i > 1048576) {
            throw new IllegalArgumentException("Bad requested string length (" + i + MotionUtils.f31762d);
        }
        char[] cArr = new char[i];
        int i2 = 0;
        while (true) {
            int remaining = remaining();
            if (!z) {
                remaining /= 2;
            }
            if (i - i2 <= remaining) {
                while (i2 < i) {
                    cArr[i2] = (char) (z ? readUByte() : readShort());
                    i2++;
                }
                return new String(cArr);
            }
            while (remaining > 0) {
                cArr[i2] = (char) (z ? readUByte() : readShort());
                i2++;
                remaining--;
            }
            if (!isContinueNext()) {
                throw new RecordFormatException("Expected to find a ContinueRecord in order to read remaining " + (i - i2) + " of " + i + " chars");
            }
            if (remaining() != 0) {
                throw new RecordFormatException("Odd number of bytes(" + remaining() + ") left behind");
            }
            nextRecord();
            byte readByte = readByte();
            if (readByte != 0 && readByte != 1) {
                throw new RecordFormatException("Invalid compressFlag: " + ((int) readByte));
            }
            z = readByte == 0;
        }
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public int available() {
        return remaining();
    }

    public int getNextSid() {
        return this._nextSid;
    }

    public short getSid() {
        return (short) this._currentSid;
    }

    public boolean hasNextRecord() throws LeftoverDataException {
        int i = this._currentDataLength;
        if (i != -1 && i != this._currentDataOffset) {
            throw new LeftoverDataException(this._currentSid, remaining());
        }
        if (i != -1) {
            this._nextSid = readNextSid();
        }
        return this._nextSid != -1;
    }

    @Internal
    public boolean isEncrypted() {
        LittleEndianInput littleEndianInput = this._dataInput;
        return (littleEndianInput instanceof Biff8DecryptingStream) && ((Biff8DecryptingStream) littleEndianInput).isCurrentRecordEncrypted();
    }

    @Internal
    public void mark(int i) {
        ((InputStream) this._dataInput).mark(i);
        this._markedDataOffset = this._currentDataOffset;
    }

    public void nextRecord() throws RecordFormatException {
        int i = this._nextSid;
        if (i == -1) {
            throw new IllegalStateException("EOF - next record not available");
        }
        if (this._currentDataLength != -1) {
            throw new IllegalStateException("Cannot call nextRecord() without checking hasNextRecord() first");
        }
        this._currentSid = i;
        this._currentDataOffset = 0;
        int readDataSize = this._bhi.readDataSize();
        this._currentDataLength = readDataSize;
        if (readDataSize > 8224) {
            throw new RecordFormatException("The content of an excel record cannot exceed 8224 bytes");
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, remaining());
        if (min == 0) {
            return 0;
        }
        readFully(bArr, i, min);
        return min;
    }

    @Deprecated
    public byte[] readAllContinuedRemainder() {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream(16448);
            while (true) {
                try {
                    byte[] readRemainder = readRemainder();
                    unsynchronizedByteArrayOutputStream.write(readRemainder, 0, readRemainder.length);
                    if (!isContinueNext()) {
                        byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                        unsynchronizedByteArrayOutputStream.close();
                        return byteArray;
                    }
                    nextRecord();
                } finally {
                }
            }
        } catch (IOException e) {
            throw new RecordFormatException(e);
        }
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public byte readByte() {
        checkRecordPosition(1);
        this._currentDataOffset++;
        return this._dataInput.readByte();
    }

    public String readCompressedUnicode(int i) {
        return readStringCommon(i, true);
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public void readFully(byte[] bArr) {
        readFully(bArr, 0, bArr.length, false);
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public int readInt() {
        checkRecordPosition(4);
        this._currentDataOffset += 4;
        return this._dataInput.readInt();
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public long readLong() {
        checkRecordPosition(8);
        this._currentDataOffset += 8;
        return this._dataInput.readLong();
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public void readPlain(byte[] bArr, int i, int i2) {
        readFully(bArr, 0, bArr.length, true);
    }

    public byte[] readRemainder() {
        int remaining = remaining();
        if (remaining == 0) {
            return EMPTY_BYTE_ARRAY;
        }
        byte[] safelyAllocate = IOUtils.safelyAllocate(remaining, HSSFWorkbook.getMaxRecordLength());
        readFully(safelyAllocate);
        return safelyAllocate;
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public short readShort() {
        checkRecordPosition(2);
        this._currentDataOffset += 2;
        return this._dataInput.readShort();
    }

    public String readString() {
        return readStringCommon(readUShort(), readByte() == 0);
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public int readUByte() {
        return readByte() & 255;
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public int readUShort() {
        checkRecordPosition(2);
        this._currentDataOffset += 2;
        return this._dataInput.readUShort();
    }

    public String readUnicodeLEString(int i) {
        return readStringCommon(i, false);
    }

    public int remaining() {
        int i = this._currentDataLength;
        if (i == -1) {
            return 0;
        }
        return i - this._currentDataOffset;
    }

    @Internal
    public void reset() throws IOException {
        ((InputStream) this._dataInput).reset();
        this._currentDataOffset = this._markedDataOffset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RecordInputStream(InputStream inputStream, EncryptionInfo encryptionInfo, int i) throws RecordFormatException {
        if (encryptionInfo == null) {
            LittleEndianInput littleEndianInputStream = inputStream instanceof LittleEndianInput ? (LittleEndianInput) inputStream : new LittleEndianInputStream(inputStream);
            this._dataInput = littleEndianInputStream;
            this._bhi = new SimpleHeaderInput(littleEndianInputStream);
        } else {
            Biff8DecryptingStream biff8DecryptingStream = new Biff8DecryptingStream(inputStream, i, encryptionInfo);
            this._dataInput = biff8DecryptingStream;
            this._bhi = biff8DecryptingStream;
        }
        this._nextSid = readNextSid();
    }

    @Override // org.apache.poi.util.LittleEndianInput
    public void readFully(byte[] bArr, int i, int i2) {
        readFully(bArr, i, i2, false);
    }

    private void readFully(byte[] bArr, int i, int i2, boolean z) {
        bArr.getClass();
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = i2;
        while (i3 > 0) {
            int min = Math.min(available(), i3);
            if (min == 0) {
                if (hasNextRecord()) {
                    nextRecord();
                    min = Math.min(available(), i3);
                    if (min <= 0) {
                        throw new RecordFormatException("Need to have a valid next chunk, but had: " + min + " with len: " + i3 + " and available: " + available());
                    }
                } else {
                    throw new RecordFormatException("Can't read the remaining " + i3 + " bytes of the requested " + i2 + " bytes. No further record exists.");
                }
            }
            checkRecordPosition(min);
            if (z) {
                this._dataInput.readPlain(bArr, i, min);
            } else {
                this._dataInput.readFully(bArr, i, min);
            }
            this._currentDataOffset += min;
            i += min;
            i3 -= min;
        }
    }
}
