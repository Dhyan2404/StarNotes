package com.evernote.thrift.protocol;

import com.evernote.thrift.TException;
import com.evernote.thrift.transport.TTransport;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* loaded from: classes4.dex */
public class TBinaryProtocol extends TProtocol {
    protected static final int VERSION_1 = -2147418112;
    protected static final int VERSION_MASK = -65536;

    /* renamed from: i */
    public static final TStruct f21193i = new TStruct();

    /* renamed from: j */
    public static final Charset f21194j = Charset.forName("UTF-8");

    /* renamed from: a */
    public byte[] f21195a;

    /* renamed from: b */
    public byte[] f21196b;

    /* renamed from: c */
    public byte[] f21197c;
    protected boolean checkReadLength_;

    /* renamed from: d */
    public byte[] f21198d;

    /* renamed from: e */
    public byte[] f21199e;

    /* renamed from: f */
    public byte[] f21200f;

    /* renamed from: g */
    public byte[] f21201g;

    /* renamed from: h */
    public byte[] f21202h;
    protected int readLength_;
    protected boolean strictRead_;
    protected boolean strictWrite_;

    /* loaded from: classes4.dex */
    public static class Factory implements TProtocolFactory {
        protected int readLength_;
        protected boolean strictRead_;
        protected boolean strictWrite_;

        public Factory() {
            this(false, true);
        }

        @Override // com.evernote.thrift.protocol.TProtocolFactory
        public TProtocol getProtocol(TTransport tTransport) {
            TBinaryProtocol tBinaryProtocol = new TBinaryProtocol(tTransport, this.strictRead_, this.strictWrite_);
            int i = this.readLength_;
            if (i != 0) {
                tBinaryProtocol.setReadLength(i);
            }
            return tBinaryProtocol;
        }

        public Factory(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public Factory(boolean z, boolean z2, int i) {
            this.strictRead_ = z;
            this.strictWrite_ = z2;
            this.readLength_ = i;
        }
    }

    public TBinaryProtocol(TTransport tTransport) {
        this(tTransport, false, true);
    }

    /* renamed from: a */
    public final int m17120a(byte[] bArr, int i, int i2) throws TException {
        checkReadLength(i2);
        return this.trans_.readAll(bArr, i, i2);
    }

    public void checkReadLength(int i) throws TException {
        if (i < 0) {
            throw new TException("Negative length: " + i);
        }
        if (this.checkReadLength_) {
            int i2 = this.readLength_ - i;
            this.readLength_ = i2;
            if (i2 >= 0) {
                return;
            }
            throw new TException("Message length exceeded: " + i);
        }
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public ByteBuffer readBinary() throws TException {
        int readI32 = readI32();
        checkReadLength(readI32);
        if (this.trans_.getBytesRemainingInBuffer() >= readI32) {
            ByteBuffer wrap = ByteBuffer.wrap(this.trans_.getBuffer(), this.trans_.getBufferPosition(), readI32);
            this.trans_.consumeBuffer(readI32);
            return wrap;
        }
        byte[] bArr = new byte[readI32];
        this.trans_.readAll(bArr, 0, readI32);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public boolean readBool() throws TException {
        return readByte() == 1;
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public byte readByte() throws TException {
        if (this.trans_.getBytesRemainingInBuffer() < 1) {
            m17120a(this.f21199e, 0, 1);
            return this.f21199e[0];
        }
        byte b = this.trans_.getBuffer()[this.trans_.getBufferPosition()];
        this.trans_.consumeBuffer(1);
        return b;
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public byte[] readBytes() throws TException {
        int readI32 = readI32();
        byte[] bArr = new byte[readI32];
        this.trans_.readAll(bArr, 0, readI32);
        return bArr;
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public double readDouble() throws TException {
        return Double.longBitsToDouble(readI64());
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public TField readFieldBegin() throws TException {
        byte readByte = readByte();
        return new TField("", readByte, readByte == 0 ? (short) 0 : readI16());
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void readFieldEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public short readI16() throws TException {
        int i;
        byte[] bArr = this.f21200f;
        if (this.trans_.getBytesRemainingInBuffer() >= 2) {
            bArr = this.trans_.getBuffer();
            i = this.trans_.getBufferPosition();
            this.trans_.consumeBuffer(2);
        } else {
            m17120a(this.f21200f, 0, 2);
            i = 0;
        }
        return (short) (((bArr[i] & 255) << 8) | (bArr[i + 1] & 255));
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public int readI32() throws TException {
        int i;
        byte[] bArr = this.f21201g;
        if (this.trans_.getBytesRemainingInBuffer() >= 4) {
            bArr = this.trans_.getBuffer();
            i = this.trans_.getBufferPosition();
            this.trans_.consumeBuffer(4);
        } else {
            m17120a(this.f21201g, 0, 4);
            i = 0;
        }
        return ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public long readI64() throws TException {
        int i;
        byte[] bArr = this.f21202h;
        if (this.trans_.getBytesRemainingInBuffer() >= 8) {
            bArr = this.trans_.getBuffer();
            i = this.trans_.getBufferPosition();
            this.trans_.consumeBuffer(8);
        } else {
            m17120a(this.f21202h, 0, 8);
            i = 0;
        }
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public TList readListBegin() throws TException {
        return new TList(readByte(), readI32());
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void readListEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public TMap readMapBegin() throws TException {
        return new TMap(readByte(), readByte(), readI32());
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void readMapEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public TMessage readMessageBegin() throws TException {
        int readI32 = readI32();
        if (readI32 < 0) {
            if (((-65536) & readI32) == VERSION_1) {
                return new TMessage(readString(), (byte) (readI32 & 255), readI32());
            }
            throw new TProtocolException(4, "Bad version in readMessageBegin");
        }
        if (this.strictRead_) {
            throw new TProtocolException(4, "Missing version in readMessageBegin, old client?");
        }
        return new TMessage(readStringBody(readI32), readByte(), readI32());
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void readMessageEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public TSet readSetBegin() throws TException {
        return new TSet(readByte(), readI32());
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void readSetEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public String readString() throws TException {
        int readI32 = readI32();
        if (this.trans_.getBytesRemainingInBuffer() < readI32) {
            return readStringBody(readI32);
        }
        String charBuffer = f21194j.decode(ByteBuffer.wrap(this.trans_.getBuffer(), this.trans_.getBufferPosition(), readI32)).toString();
        this.trans_.consumeBuffer(readI32);
        return charBuffer;
    }

    public String readStringBody(int i) throws TException {
        checkReadLength(i);
        byte[] bArr = new byte[i];
        this.trans_.readAll(bArr, 0, i);
        return f21194j.decode(ByteBuffer.wrap(bArr)).toString();
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public TStruct readStructBegin() {
        return f21193i;
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void readStructEnd() {
    }

    public void setReadLength(int i) {
        this.readLength_ = i;
        this.checkReadLength_ = true;
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeBinary(byte[] bArr, int i, int i2) throws TException {
        writeI32(i2);
        this.trans_.write(bArr, i, i2);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeBool(boolean z) throws TException {
        writeByte(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeByte(byte b) throws TException {
        byte[] bArr = this.f21195a;
        bArr[0] = b;
        this.trans_.write(bArr, 0, 1);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeDouble(double d) throws TException {
        writeI64(Double.doubleToLongBits(d));
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeFieldBegin(TField tField) throws TException {
        writeByte(tField.type);
        writeI16(tField.f21203id);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeFieldEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeFieldStop() throws TException {
        writeByte((byte) 0);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeI16(short s) throws TException {
        byte[] bArr = this.f21196b;
        bArr[0] = (byte) ((s >> 8) & 255);
        bArr[1] = (byte) (s & 255);
        this.trans_.write(bArr, 0, 2);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeI32(int i) throws TException {
        byte[] bArr = this.f21197c;
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        this.trans_.write(bArr, 0, 4);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeI64(long j) throws TException {
        byte[] bArr = this.f21198d;
        bArr[0] = (byte) ((j >> 56) & 255);
        bArr[1] = (byte) ((j >> 48) & 255);
        bArr[2] = (byte) ((j >> 40) & 255);
        bArr[3] = (byte) ((j >> 32) & 255);
        bArr[4] = (byte) ((j >> 24) & 255);
        bArr[5] = (byte) ((j >> 16) & 255);
        bArr[6] = (byte) ((j >> 8) & 255);
        bArr[7] = (byte) (j & 255);
        this.trans_.write(bArr, 0, 8);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeListBegin(TList tList) throws TException {
        writeByte(tList.elemType);
        writeI32(tList.size);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeListEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeMapBegin(TMap tMap) throws TException {
        writeByte(tMap.keyType);
        writeByte(tMap.valueType);
        writeI32(tMap.size);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeMapEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeMessageBegin(TMessage tMessage) throws TException {
        if (this.strictWrite_) {
            writeI32(tMessage.type | VERSION_1);
            writeString(tMessage.name);
            writeI32(tMessage.seqid);
        } else {
            writeString(tMessage.name);
            writeByte(tMessage.type);
            writeI32(tMessage.seqid);
        }
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeMessageEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeSetBegin(TSet tSet) throws TException {
        writeByte(tSet.elemType);
        writeI32(tSet.size);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeSetEnd() {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeString(String str) throws TException {
        ByteBuffer encode = f21194j.encode(str);
        int remaining = encode.remaining();
        byte[] bArr = new byte[remaining];
        encode.get(bArr, 0, remaining);
        writeI32(remaining);
        this.trans_.write(bArr, 0, remaining);
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeStructBegin(TStruct tStruct) {
    }

    @Override // com.evernote.thrift.protocol.TProtocol
    public void writeStructEnd() {
    }

    public TBinaryProtocol(TTransport tTransport, boolean z, boolean z2) {
        super(tTransport);
        this.checkReadLength_ = false;
        this.f21195a = new byte[1];
        this.f21196b = new byte[2];
        this.f21197c = new byte[4];
        this.f21198d = new byte[8];
        this.f21199e = new byte[1];
        this.f21200f = new byte[2];
        this.f21201g = new byte[4];
        this.f21202h = new byte[8];
        this.strictRead_ = z;
        this.strictWrite_ = z2;
    }
}
