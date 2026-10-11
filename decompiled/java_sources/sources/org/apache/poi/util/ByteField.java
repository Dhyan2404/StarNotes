package org.apache.poi.util;

import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;

/* loaded from: classes13.dex */
public class ByteField implements FixedField {
    private static final byte _default_value = 0;
    private final int _offset;
    private byte _value;

    public ByteField(int i) throws ArrayIndexOutOfBoundsException {
        this(i, (byte) 0);
    }

    public byte get() {
        return this._value;
    }

    @Override // org.apache.poi.util.FixedField
    public void readFromBytes(byte[] bArr) throws ArrayIndexOutOfBoundsException {
        this._value = bArr[this._offset];
    }

    @Override // org.apache.poi.util.FixedField
    public void readFromStream(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read < 0) {
            throw new BufferUnderflowException();
        }
        this._value = (byte) read;
    }

    public void set(byte b) {
        this._value = b;
    }

    @Override // org.apache.poi.util.FixedField
    public String toString() {
        return String.valueOf((int) this._value);
    }

    @Override // org.apache.poi.util.FixedField
    public void writeToBytes(byte[] bArr) throws ArrayIndexOutOfBoundsException {
        bArr[this._offset] = this._value;
    }

    public ByteField(int i, byte b) throws ArrayIndexOutOfBoundsException {
        if (i >= 0) {
            this._offset = i;
            set(b);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("offset cannot be negative");
    }

    public void set(byte b, byte[] bArr) throws ArrayIndexOutOfBoundsException {
        set(b);
        writeToBytes(bArr);
    }

    public ByteField(int i, byte[] bArr) throws ArrayIndexOutOfBoundsException {
        this(i);
        readFromBytes(bArr);
    }

    public ByteField(int i, byte b, byte[] bArr) throws ArrayIndexOutOfBoundsException {
        this(i, b);
        writeToBytes(bArr);
    }
}
