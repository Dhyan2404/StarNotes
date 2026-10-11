package com.google.protobuf;

import com.google.protobuf.MessageLite;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.fqi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public abstract class CodedInputStream {

    /* renamed from: f */
    public static final int f36904f = 4096;

    /* renamed from: g */
    public static final int f36905g = Integer.MAX_VALUE;

    /* renamed from: h */
    public static volatile int f36906h = 100;

    /* renamed from: a */
    public int f36907a;

    /* renamed from: b */
    public int f36908b;

    /* renamed from: c */
    public int f36909c;

    /* renamed from: d */
    public C6869f f36910d;

    /* renamed from: e */
    public boolean f36911e;

    /* renamed from: com.google.protobuf.CodedInputStream$b */
    /* loaded from: classes6.dex */
    public static final class C6655b extends CodedInputStream {

        /* renamed from: i */
        public final byte[] f36912i;

        /* renamed from: j */
        public final boolean f36913j;

        /* renamed from: k */
        public int f36914k;

        /* renamed from: l */
        public int f36915l;

        /* renamed from: m */
        public int f36916m;

        /* renamed from: n */
        public int f36917n;

        /* renamed from: o */
        public int f36918o;

        /* renamed from: p */
        public boolean f36919p;

        /* renamed from: q */
        public int f36920q;

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(final int value) throws InvalidProtocolBufferException {
            if (this.f36918o != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean enabled) {
            this.f36919p = enabled;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: f */
        public long mo28641f() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i = this.f36920q;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.f36918o;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return this.f36916m - this.f36917n;
        }

        /* renamed from: i */
        public final void m28644i() {
            int i = this.f36914k + this.f36915l;
            this.f36914k = i;
            int i2 = i - this.f36917n;
            int i3 = this.f36920q;
            if (i2 <= i3) {
                this.f36915l = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f36915l = i4;
            this.f36914k = i - i4;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return this.f36916m == this.f36914k;
        }

        /* renamed from: j */
        public final void m28645j() throws IOException {
            if (this.f36914k - this.f36916m >= 10) {
                m28646k();
            } else {
                m28647l();
            }
        }

        /* renamed from: k */
        public final void m28646k() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f36912i;
                int i2 = this.f36916m;
                this.f36916m = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: l */
        public final void m28647l() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(final int oldLimit) {
            this.f36920q = oldLimit;
            m28644i();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int totalBytesRead = byteLimit + getTotalBytesRead();
            if (totalBytesRead < 0) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            int i = this.f36920q;
            if (totalBytesRead > i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f36920q = totalBytesRead;
            m28644i();
            return i;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.f36914k;
                int i2 = this.f36916m;
                if (readRawVarint32 <= i - i2) {
                    ByteBuffer wrap = (this.f36913j || !this.f36919p) ? ByteBuffer.wrap(Arrays.copyOfRange(this.f36912i, i2, i2 + readRawVarint32)) : ByteBuffer.wrap(this.f36912i, i2, readRawVarint32).slice();
                    this.f36916m += readRawVarint32;
                    return wrap;
                }
            }
            if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            if (readRawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.f36914k;
                int i2 = this.f36916m;
                if (readRawVarint32 <= i - i2) {
                    ByteString wrap = (this.f36913j && this.f36919p) ? ByteString.wrap(this.f36912i, i2, readRawVarint32) : ByteString.copyFrom(this.f36912i, i2, readRawVarint32);
                    this.f36916m += readRawVarint32;
                    return wrap;
                }
            }
            return readRawVarint32 == 0 ? ByteString.EMPTY : ByteString.wrap(readRawBytes(readRawVarint32));
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(final int fieldNumber, final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            int i = this.f36916m;
            if (i == this.f36914k) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f36912i;
            this.f36916m = i + 1;
            return bArr[i];
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(final int length) throws IOException {
            if (length > 0) {
                int i = this.f36914k;
                int i2 = this.f36916m;
                if (length <= i - i2) {
                    int i3 = length + i2;
                    this.f36916m = i3;
                    return Arrays.copyOfRange(this.f36912i, i2, i3);
                }
            }
            if (length > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (length == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            int i = this.f36916m;
            if (this.f36914k - i < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f36912i;
            this.f36916m = i + 4;
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            int i = this.f36916m;
            if (this.f36914k - i < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = this.f36912i;
            this.f36916m = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int readRawVarint32() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.f36916m
                int r1 = r5.f36914k
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f36912i
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f36916m = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.mo28641f()
                int r5 = (int) r0
                return r5
            L70:
                r5.f36916m = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedInputStream.C6655b.readRawVarint32():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L40;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long readRawVarint64() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedInputStream.C6655b.readRawVarint64():long");
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.f36914k;
                int i2 = this.f36916m;
                if (readRawVarint32 <= i - i2) {
                    String str = new String(this.f36912i, i2, readRawVarint32, Internal.f37667b);
                    this.f36916m += readRawVarint32;
                    return str;
                }
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.f36914k;
                int i2 = this.f36916m;
                if (readRawVarint32 <= i - i2) {
                    String m29659h = Utf8.m29659h(this.f36912i, i2, readRawVarint32);
                    this.f36916m += readRawVarint32;
                    return m29659h;
                }
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.f36918o = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.f36918o = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.f36918o;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(final int fieldNumber, final MessageLite.Builder builder) throws IOException {
            readGroup(fieldNumber, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.f36917n = this.f36916m;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                m28645j();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                skipRawBytes(4);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(final int length) throws IOException {
            if (length >= 0) {
                int i = this.f36914k;
                int i2 = this.f36916m;
                if (length <= i - i2) {
                    this.f36916m = i2 + length;
                    return;
                }
            }
            if (length >= 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        public C6655b(final byte[] buffer, final int offset, final int len, boolean immutable) {
            super();
            this.f36920q = Integer.MAX_VALUE;
            this.f36912i = buffer;
            this.f36914k = len + offset;
            this.f36916m = offset;
            this.f36917n = offset;
            this.f36913j = immutable;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream output) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, output));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(final int fieldNumber, final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag, final CodedOutputStream output) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                output.writeUInt32NoTag(tag);
                output.writeUInt64NoTag(readInt64);
                return true;
            }
            if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                output.writeUInt32NoTag(tag);
                output.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                output.writeUInt32NoTag(tag);
                output.writeBytesNoTag(readBytes);
                return true;
            }
            if (tagWireType == 3) {
                output.writeUInt32NoTag(tag);
                skipMessage(output);
                int m29722a = WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4);
                checkLastTagWas(m29722a);
                output.writeUInt32NoTag(m29722a);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int readRawLittleEndian32 = readRawLittleEndian32();
                output.writeUInt32NoTag(tag);
                output.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* renamed from: com.google.protobuf.CodedInputStream$c */
    /* loaded from: classes6.dex */
    public static final class C6656c extends CodedInputStream {

        /* renamed from: i */
        public final Iterable<ByteBuffer> f36921i;

        /* renamed from: j */
        public final Iterator<ByteBuffer> f36922j;

        /* renamed from: k */
        public ByteBuffer f36923k;

        /* renamed from: l */
        public final boolean f36924l;

        /* renamed from: m */
        public boolean f36925m;

        /* renamed from: n */
        public int f36926n;

        /* renamed from: o */
        public int f36927o;

        /* renamed from: p */
        public int f36928p;

        /* renamed from: q */
        public int f36929q;

        /* renamed from: r */
        public int f36930r;

        /* renamed from: s */
        public int f36931s;

        /* renamed from: t */
        public long f36932t;

        /* renamed from: u */
        public long f36933u;

        /* renamed from: v */
        public long f36934v;

        /* renamed from: w */
        public long f36935w;

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(final int value) throws InvalidProtocolBufferException {
            if (this.f36929q != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean enabled) {
            this.f36925m = enabled;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: f */
        public long mo28641f() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i = this.f36928p;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.f36929q;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return (int) (((this.f36930r - this.f36931s) + this.f36932t) - this.f36933u);
        }

        /* renamed from: i */
        public final long m28648i() {
            return this.f36935w - this.f36932t;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return (((long) this.f36930r) + this.f36932t) - this.f36933u == ((long) this.f36926n);
        }

        /* renamed from: j */
        public final void m28649j() throws InvalidProtocolBufferException {
            if (!this.f36922j.hasNext()) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            m28655p();
        }

        /* renamed from: k */
        public final void m28650k(byte[] bytes, int offset, final int length) throws IOException {
            if (length < 0 || length > m28652m()) {
                if (length > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (length != 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                return;
            }
            int i = length;
            while (i > 0) {
                if (m28648i() == 0) {
                    m28649j();
                }
                int min = Math.min(i, (int) m28648i());
                long j = min;
                dun.m53766p(this.f36932t, bytes, (length - i) + offset, j);
                i -= min;
                this.f36932t += j;
            }
        }

        /* renamed from: l */
        public final void m28651l() {
            int i = this.f36926n + this.f36927o;
            this.f36926n = i;
            int i2 = i - this.f36931s;
            int i3 = this.f36928p;
            if (i2 <= i3) {
                this.f36927o = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f36927o = i4;
            this.f36926n = i - i4;
        }

        /* renamed from: m */
        public final int m28652m() {
            return (int) (((this.f36926n - this.f36930r) - this.f36932t) + this.f36933u);
        }

        /* renamed from: n */
        public final void m28653n() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: o */
        public final ByteBuffer m28654o(int begin, int end) throws IOException {
            int position = this.f36923k.position();
            int limit = this.f36923k.limit();
            ByteBuffer byteBuffer = this.f36923k;
            try {
                try {
                    byteBuffer.position(begin);
                    byteBuffer.limit(end);
                    return this.f36923k.slice();
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        /* renamed from: p */
        public final void m28655p() {
            ByteBuffer next = this.f36922j.next();
            this.f36923k = next;
            this.f36930r += (int) (this.f36932t - this.f36933u);
            long position = next.position();
            this.f36932t = position;
            this.f36933u = position;
            this.f36935w = this.f36923k.limit();
            long m53756k = dun.m53756k(this.f36923k);
            this.f36934v = m53756k;
            this.f36932t += m53756k;
            this.f36933u += m53756k;
            this.f36935w += m53756k;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(final int oldLimit) {
            this.f36928p = oldLimit;
            m28651l();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int totalBytesRead = byteLimit + getTotalBytesRead();
            int i = this.f36928p;
            if (totalBytesRead > i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f36928p = totalBytesRead;
            m28651l();
            return i;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                if (j <= m28648i()) {
                    if (this.f36924l || !this.f36925m) {
                        byte[] bArr = new byte[readRawVarint32];
                        dun.m53766p(this.f36932t, bArr, 0L, j);
                        this.f36932t += j;
                        return ByteBuffer.wrap(bArr);
                    }
                    long j2 = this.f36932t + j;
                    this.f36932t = j2;
                    long j3 = this.f36934v;
                    return m28654o((int) ((j2 - j3) - j), (int) (j2 - j3));
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= m28652m()) {
                byte[] bArr2 = new byte[readRawVarint32];
                m28650k(bArr2, 0, readRawVarint32);
                return ByteBuffer.wrap(bArr2);
            }
            if (readRawVarint32 == 0) {
                return Internal.EMPTY_BYTE_BUFFER;
            }
            if (readRawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                long j2 = this.f36935w;
                long j3 = this.f36932t;
                if (j <= j2 - j3) {
                    if (this.f36924l && this.f36925m) {
                        int i = (int) (j3 - this.f36934v);
                        ByteString wrap = ByteString.wrap(m28654o(i, readRawVarint32 + i));
                        this.f36932t += j;
                        return wrap;
                    }
                    byte[] bArr = new byte[readRawVarint32];
                    dun.m53766p(j3, bArr, 0L, j);
                    this.f36932t += j;
                    return ByteString.wrap(bArr);
                }
            }
            if (readRawVarint32 <= 0 || readRawVarint32 > m28652m()) {
                if (readRawVarint32 == 0) {
                    return ByteString.EMPTY;
                }
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (!this.f36924l || !this.f36925m) {
                byte[] bArr2 = new byte[readRawVarint32];
                m28650k(bArr2, 0, readRawVarint32);
                return ByteString.wrap(bArr2);
            }
            ArrayList arrayList = new ArrayList();
            while (readRawVarint32 > 0) {
                if (m28648i() == 0) {
                    m28649j();
                }
                int min = Math.min(readRawVarint32, (int) m28648i());
                int i2 = (int) (this.f36932t - this.f36934v);
                arrayList.add(ByteString.wrap(m28654o(i2, i2 + min)));
                readRawVarint32 -= min;
                this.f36932t += min;
            }
            return ByteString.copyFrom(arrayList);
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(final int fieldNumber, final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            if (m28648i() == 0) {
                m28649j();
            }
            long j = this.f36932t;
            this.f36932t = 1 + j;
            return dun.m53710A(j);
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(final int length) throws IOException {
            if (length >= 0) {
                long j = length;
                if (j <= m28648i()) {
                    byte[] bArr = new byte[length];
                    dun.m53766p(this.f36932t, bArr, 0L, j);
                    this.f36932t += j;
                    return bArr;
                }
            }
            if (length >= 0 && length <= m28652m()) {
                byte[] bArr2 = new byte[length];
                m28650k(bArr2, 0, length);
                return bArr2;
            }
            if (length > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (length == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            if (m28648i() < 4) {
                return ((readRawByte() & 255) << 24) | (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16);
            }
            long j = this.f36932t;
            this.f36932t = 4 + j;
            return (dun.m53710A(j) & 255) | ((dun.m53710A(1 + j) & 255) << 8) | ((dun.m53710A(2 + j) & 255) << 16) | ((dun.m53710A(j + 3) & 255) << 24);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            if (m28648i() < 8) {
                return ((readRawByte() & 255) << 56) | (readRawByte() & 255) | ((readRawByte() & 255) << 8) | ((readRawByte() & 255) << 16) | ((readRawByte() & 255) << 24) | ((readRawByte() & 255) << 32) | ((readRawByte() & 255) << 40) | ((readRawByte() & 255) << 48);
            }
            this.f36932t = 8 + this.f36932t;
            return (dun.m53710A(r13) & 255) | ((dun.m53710A(1 + r13) & 255) << 8) | ((dun.m53710A(2 + r13) & 255) << 16) | ((dun.m53710A(3 + r13) & 255) << 24) | ((dun.m53710A(4 + r13) & 255) << 32) | ((dun.m53710A(5 + r13) & 255) << 40) | ((dun.m53710A(6 + r13) & 255) << 48) | ((dun.m53710A(r13 + 7) & 255) << 56);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0088, code lost:
        
            if (com.sunia.HTREnginev2.dun.m53710A(r4) < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int readRawVarint32() throws java.io.IOException {
            /*
                r10 = this;
                long r0 = r10.f36932t
                long r2 = r10.f36935w
                int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r2 != 0) goto La
                goto L8a
            La:
                r2 = 1
                long r4 = r0 + r2
                byte r0 = com.sunia.HTREnginev2.dun.m53710A(r0)
                if (r0 < 0) goto L1a
                long r4 = r10.f36932t
                long r4 = r4 + r2
                r10.f36932t = r4
                return r0
            L1a:
                long r6 = r10.f36935w
                long r8 = r10.f36932t
                long r6 = r6 - r8
                r8 = 10
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 >= 0) goto L26
                goto L8a
            L26:
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                int r1 = r1 << 7
                r0 = r0 ^ r1
                if (r0 >= 0) goto L34
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L90
            L34:
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L43
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L41:
                r6 = r4
                goto L90
            L43:
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                int r1 = r1 << 21
                r0 = r0 ^ r1
                if (r0 >= 0) goto L53
                r1 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r1
                goto L90
            L53:
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                int r6 = r1 << 28
                r0 = r0 ^ r6
                r6 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r6
                if (r1 >= 0) goto L41
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                if (r1 >= 0) goto L90
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                if (r1 >= 0) goto L41
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                if (r1 >= 0) goto L90
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                if (r1 >= 0) goto L41
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                if (r1 >= 0) goto L90
            L8a:
                long r0 = r10.mo28641f()
                int r10 = (int) r0
                return r10
            L90:
                r10.f36932t = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedInputStream.C6656c.readRawVarint32():int");
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long m53710A;
            long j;
            long j2;
            int i;
            long j3 = this.f36932t;
            if (this.f36935w != j3) {
                long j4 = j3 + 1;
                byte m53710A2 = dun.m53710A(j3);
                if (m53710A2 >= 0) {
                    this.f36932t++;
                    return m53710A2;
                }
                if (this.f36935w - this.f36932t >= 10) {
                    long j5 = j4 + 1;
                    int m53710A3 = m53710A2 ^ (dun.m53710A(j4) << 7);
                    if (m53710A3 >= 0) {
                        long j6 = j5 + 1;
                        int m53710A4 = m53710A3 ^ (dun.m53710A(j5) << 14);
                        if (m53710A4 >= 0) {
                            m53710A = m53710A4 ^ 16256;
                        } else {
                            j5 = j6 + 1;
                            int m53710A5 = m53710A4 ^ (dun.m53710A(j6) << 21);
                            if (m53710A5 < 0) {
                                i = m53710A5 ^ (-2080896);
                            } else {
                                j6 = j5 + 1;
                                long m53710A6 = m53710A5 ^ (dun.m53710A(j5) << 28);
                                if (m53710A6 < 0) {
                                    long j7 = j6 + 1;
                                    long m53710A7 = m53710A6 ^ (dun.m53710A(j6) << 35);
                                    if (m53710A7 < 0) {
                                        j = -34093383808L;
                                    } else {
                                        j6 = j7 + 1;
                                        m53710A6 = m53710A7 ^ (dun.m53710A(j7) << 42);
                                        if (m53710A6 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            j7 = j6 + 1;
                                            m53710A7 = m53710A6 ^ (dun.m53710A(j6) << 49);
                                            if (m53710A7 < 0) {
                                                j = -558586000294016L;
                                            } else {
                                                j6 = j7 + 1;
                                                m53710A = (m53710A7 ^ (dun.m53710A(j7) << 56)) ^ 71499008037633920L;
                                                if (m53710A < 0) {
                                                    long j8 = 1 + j6;
                                                    if (dun.m53710A(j6) >= 0) {
                                                        j5 = j8;
                                                        this.f36932t = j5;
                                                        return m53710A;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    m53710A = m53710A7 ^ j;
                                    j5 = j7;
                                    this.f36932t = j5;
                                    return m53710A;
                                }
                                j2 = 266354560;
                                m53710A = m53710A6 ^ j2;
                            }
                        }
                        j5 = j6;
                        this.f36932t = j5;
                        return m53710A;
                    }
                    i = m53710A3 ^ (-128);
                    m53710A = i;
                    this.f36932t = j5;
                    return m53710A;
                }
            }
            return mo28641f();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                long j2 = this.f36935w;
                long j3 = this.f36932t;
                if (j <= j2 - j3) {
                    byte[] bArr = new byte[readRawVarint32];
                    dun.m53766p(j3, bArr, 0L, j);
                    String str = new String(bArr, Internal.f37667b);
                    this.f36932t += j;
                    return str;
                }
            }
            if (readRawVarint32 > 0 && readRawVarint32 <= m28652m()) {
                byte[] bArr2 = new byte[readRawVarint32];
                m28650k(bArr2, 0, readRawVarint32);
                return new String(bArr2, Internal.f37667b);
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                long j = readRawVarint32;
                long j2 = this.f36935w;
                long j3 = this.f36932t;
                if (j <= j2 - j3) {
                    String m29658g = Utf8.m29658g(this.f36923k, (int) (j3 - this.f36933u), readRawVarint32);
                    this.f36932t += j;
                    return m29658g;
                }
            }
            if (readRawVarint32 >= 0 && readRawVarint32 <= m28652m()) {
                byte[] bArr = new byte[readRawVarint32];
                m28650k(bArr, 0, readRawVarint32);
                return Utf8.m29659h(bArr, 0, readRawVarint32);
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.f36929q = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.f36929q = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.f36929q;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(final int fieldNumber, final MessageLite.Builder builder) throws IOException {
            readGroup(fieldNumber, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.f36931s = (int) ((this.f36930r + this.f36932t) - this.f36933u);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                m28653n();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                skipRawBytes(4);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(final int length) throws IOException {
            if (length < 0 || length > ((this.f36926n - this.f36930r) - this.f36932t) + this.f36933u) {
                if (length >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            while (length > 0) {
                if (m28648i() == 0) {
                    m28649j();
                }
                int min = Math.min(length, (int) m28648i());
                length -= min;
                this.f36932t += min;
            }
        }

        public C6656c(Iterable<ByteBuffer> inputBufs, int size, boolean immutableFlag) {
            super();
            this.f36928p = Integer.MAX_VALUE;
            this.f36926n = size;
            this.f36921i = inputBufs;
            this.f36922j = inputBufs.iterator();
            this.f36924l = immutableFlag;
            this.f36930r = 0;
            this.f36931s = 0;
            if (size == 0) {
                this.f36923k = Internal.EMPTY_BYTE_BUFFER;
                this.f36932t = 0L;
                this.f36933u = 0L;
                this.f36935w = 0L;
                this.f36934v = 0L;
                return;
            }
            m28655p();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream output) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, output));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(final int fieldNumber, final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag, final CodedOutputStream output) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                output.writeUInt32NoTag(tag);
                output.writeUInt64NoTag(readInt64);
                return true;
            }
            if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                output.writeUInt32NoTag(tag);
                output.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                output.writeUInt32NoTag(tag);
                output.writeBytesNoTag(readBytes);
                return true;
            }
            if (tagWireType == 3) {
                output.writeUInt32NoTag(tag);
                skipMessage(output);
                int m29722a = WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4);
                checkLastTagWas(m29722a);
                output.writeUInt32NoTag(m29722a);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int readRawLittleEndian32 = readRawLittleEndian32();
                output.writeUInt32NoTag(tag);
                output.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* renamed from: com.google.protobuf.CodedInputStream$d */
    /* loaded from: classes6.dex */
    public static final class C6657d extends CodedInputStream {

        /* renamed from: i */
        public final InputStream f36936i;

        /* renamed from: j */
        public final byte[] f36937j;

        /* renamed from: k */
        public int f36938k;

        /* renamed from: l */
        public int f36939l;

        /* renamed from: m */
        public int f36940m;

        /* renamed from: n */
        public int f36941n;

        /* renamed from: o */
        public int f36942o;

        /* renamed from: p */
        public int f36943p;

        /* renamed from: q */
        public a f36944q;

        /* renamed from: com.google.protobuf.CodedInputStream$d$a */
        /* loaded from: classes6.dex */
        public interface a {
            void onRefill();
        }

        /* renamed from: com.google.protobuf.CodedInputStream$d$b */
        /* loaded from: classes6.dex */
        public class b implements a {

            /* renamed from: a */
            public int f36945a;

            /* renamed from: b */
            public ByteArrayOutputStream f36946b;

            public b() {
                this.f36945a = C6657d.this.f36940m;
            }

            /* renamed from: a */
            public ByteBuffer m28672a() {
                ByteArrayOutputStream byteArrayOutputStream = this.f36946b;
                if (byteArrayOutputStream == null) {
                    return ByteBuffer.wrap(C6657d.this.f36937j, this.f36945a, C6657d.this.f36940m - this.f36945a);
                }
                byteArrayOutputStream.write(C6657d.this.f36937j, this.f36945a, C6657d.this.f36940m);
                return ByteBuffer.wrap(this.f36946b.toByteArray());
            }

            @Override // com.google.protobuf.CodedInputStream.C6657d.a
            public void onRefill() {
                if (this.f36946b == null) {
                    this.f36946b = new ByteArrayOutputStream();
                }
                this.f36946b.write(C6657d.this.f36937j, this.f36945a, C6657d.this.f36940m - this.f36945a);
                this.f36945a = 0;
            }
        }

        /* renamed from: k */
        public static int m28658k(InputStream input) throws IOException {
            try {
                return input.available();
            } catch (InvalidProtocolBufferException e) {
                e.setThrownFromInputStream();
                throw e;
            }
        }

        /* renamed from: l */
        public static int m28659l(InputStream input, byte[] data, int offset, int length) throws IOException {
            try {
                return input.read(data, offset, length);
            } catch (InvalidProtocolBufferException e) {
                e.setThrownFromInputStream();
                throw e;
            }
        }

        /* renamed from: s */
        public static long m28660s(InputStream input, long length) throws IOException {
            try {
                return input.skip(length);
            } catch (InvalidProtocolBufferException e) {
                e.setThrownFromInputStream();
                throw e;
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(final int value) throws InvalidProtocolBufferException {
            if (this.f36941n != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean enabled) {
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: f */
        public long mo28641f() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i = this.f36943p;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - (this.f36942o + this.f36940m);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.f36941n;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return this.f36942o + this.f36940m;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return this.f36940m == this.f36938k && !m28671x(1);
        }

        /* renamed from: m */
        public final ByteString m28661m(final int size) throws IOException {
            byte[] m28663o = m28663o(size);
            if (m28663o != null) {
                return ByteString.copyFrom(m28663o);
            }
            int i = this.f36940m;
            int i2 = this.f36938k;
            int i3 = i2 - i;
            this.f36942o += i2;
            this.f36940m = 0;
            this.f36938k = 0;
            List<byte[]> m28664p = m28664p(size - i3);
            byte[] bArr = new byte[size];
            System.arraycopy(this.f36937j, i, bArr, 0, i3);
            for (byte[] bArr2 : m28664p) {
                System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
                i3 += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        /* renamed from: n */
        public final byte[] m28662n(final int size, boolean ensureNoLeakedReferences) throws IOException {
            byte[] m28663o = m28663o(size);
            if (m28663o != null) {
                return ensureNoLeakedReferences ? (byte[]) m28663o.clone() : m28663o;
            }
            int i = this.f36940m;
            int i2 = this.f36938k;
            int i3 = i2 - i;
            this.f36942o += i2;
            this.f36940m = 0;
            this.f36938k = 0;
            List<byte[]> m28664p = m28664p(size - i3);
            byte[] bArr = new byte[size];
            System.arraycopy(this.f36937j, i, bArr, 0, i3);
            for (byte[] bArr2 : m28664p) {
                System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
                i3 += bArr2.length;
            }
            return bArr;
        }

        /* renamed from: o */
        public final byte[] m28663o(final int size) throws IOException {
            if (size == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            if (size < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i = this.f36942o;
            int i2 = this.f36940m;
            int i3 = i + i2 + size;
            if (i3 - this.f36909c > 0) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            int i4 = this.f36943p;
            if (i3 > i4) {
                skipRawBytes((i4 - i) - i2);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i5 = this.f36938k - i2;
            int i6 = size - i5;
            if (i6 >= 4096 && i6 > m28658k(this.f36936i)) {
                return null;
            }
            byte[] bArr = new byte[size];
            System.arraycopy(this.f36937j, this.f36940m, bArr, 0, i5);
            this.f36942o += this.f36938k;
            this.f36940m = 0;
            this.f36938k = 0;
            while (i5 < size) {
                int m28659l = m28659l(this.f36936i, bArr, i5, size - i5);
                if (m28659l == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.f36942o += m28659l;
                i5 += m28659l;
            }
            return bArr;
        }

        /* renamed from: p */
        public final List<byte[]> m28664p(int sizeLeft) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (sizeLeft > 0) {
                int min = Math.min(sizeLeft, 4096);
                byte[] bArr = new byte[min];
                int i = 0;
                while (i < min) {
                    int read = this.f36936i.read(bArr, i, min - i);
                    if (read == -1) {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    this.f36942o += read;
                    i += read;
                }
                sizeLeft -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(final int oldLimit) {
            this.f36943p = oldLimit;
            m28665q();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i = byteLimit + this.f36942o + this.f36940m;
            int i2 = this.f36943p;
            if (i > i2) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f36943p = i;
            m28665q();
            return i2;
        }

        /* renamed from: q */
        public final void m28665q() {
            int i = this.f36938k + this.f36939l;
            this.f36938k = i;
            int i2 = this.f36942o + i;
            int i3 = this.f36943p;
            if (i2 <= i3) {
                this.f36939l = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f36939l = i4;
            this.f36938k = i - i4;
        }

        /* renamed from: r */
        public final void m28666r(int n) throws IOException {
            if (m28671x(n)) {
                return;
            }
            if (n <= (this.f36909c - this.f36942o) - this.f36940m) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.sizeLimitExceeded();
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i = this.f36938k;
            int i2 = this.f36940m;
            if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
                return m28662n(readRawVarint32, false);
            }
            byte[] copyOfRange = Arrays.copyOfRange(this.f36937j, i2, i2 + readRawVarint32);
            this.f36940m += readRawVarint32;
            return copyOfRange;
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i = this.f36938k;
            int i2 = this.f36940m;
            if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
                return readRawVarint32 == 0 ? Internal.EMPTY_BYTE_BUFFER : ByteBuffer.wrap(m28662n(readRawVarint32, true));
            }
            ByteBuffer wrap = ByteBuffer.wrap(Arrays.copyOfRange(this.f36937j, i2, i2 + readRawVarint32));
            this.f36940m += readRawVarint32;
            return wrap;
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            int i = this.f36938k;
            int i2 = this.f36940m;
            if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
                return readRawVarint32 == 0 ? ByteString.EMPTY : m28661m(readRawVarint32);
            }
            ByteString copyFrom = ByteString.copyFrom(this.f36937j, i2, readRawVarint32);
            this.f36940m += readRawVarint32;
            return copyFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(final int fieldNumber, final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            if (this.f36940m == this.f36938k) {
                m28666r(1);
            }
            byte[] bArr = this.f36937j;
            int i = this.f36940m;
            this.f36940m = i + 1;
            return bArr[i];
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(final int size) throws IOException {
            int i = this.f36940m;
            if (size > this.f36938k - i || size <= 0) {
                return m28662n(size, false);
            }
            int i2 = size + i;
            this.f36940m = i2;
            return Arrays.copyOfRange(this.f36937j, i, i2);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            int i = this.f36940m;
            if (this.f36938k - i < 4) {
                m28666r(4);
                i = this.f36940m;
            }
            byte[] bArr = this.f36937j;
            this.f36940m = i + 4;
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            int i = this.f36940m;
            if (this.f36938k - i < 8) {
                m28666r(8);
                i = this.f36940m;
            }
            byte[] bArr = this.f36937j;
            this.f36940m = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        
            if (r2[r3] < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int readRawVarint32() throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.f36940m
                int r1 = r5.f36938k
                if (r1 != r0) goto L7
                goto L6a
            L7:
                byte[] r2 = r5.f36937j
                int r3 = r0 + 1
                r0 = r2[r0]
                if (r0 < 0) goto L12
                r5.f36940m = r3
                return r0
            L12:
                int r1 = r1 - r3
                r4 = 9
                if (r1 >= r4) goto L18
                goto L6a
            L18:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 7
                r0 = r0 ^ r3
                if (r0 >= 0) goto L24
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L70
            L24:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L31
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r3
                goto L70
            L31:
                int r1 = r3 + 1
                r3 = r2[r3]
                int r3 = r3 << 21
                r0 = r0 ^ r3
                if (r0 >= 0) goto L3f
                r2 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L70
            L3f:
                int r3 = r1 + 1
                r1 = r2[r1]
                int r4 = r1 << 28
                r0 = r0 ^ r4
                r4 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r4
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r3 = r2[r3]
                if (r3 >= 0) goto L70
                int r3 = r1 + 1
                r1 = r2[r1]
                if (r1 >= 0) goto L2f
                int r1 = r3 + 1
                r2 = r2[r3]
                if (r2 >= 0) goto L70
            L6a:
                long r0 = r5.mo28641f()
                int r5 = (int) r0
                return r5
            L70:
                r5.f36940m = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedInputStream.C6657d.readRawVarint32():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            if (r2[r0] < 0) goto L40;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long readRawVarint64() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedInputStream.C6657d.readRawVarint64():long");
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0) {
                int i = this.f36938k;
                int i2 = this.f36940m;
                if (readRawVarint32 <= i - i2) {
                    String str = new String(this.f36937j, i2, readRawVarint32, Internal.f37667b);
                    this.f36940m += readRawVarint32;
                    return str;
                }
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 > this.f36938k) {
                return new String(m28662n(readRawVarint32, false), Internal.f37667b);
            }
            m28666r(readRawVarint32);
            String str2 = new String(this.f36937j, this.f36940m, readRawVarint32, Internal.f37667b);
            this.f36940m += readRawVarint32;
            return str2;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            byte[] m28662n;
            int readRawVarint32 = readRawVarint32();
            int i = this.f36940m;
            int i2 = this.f36938k;
            if (readRawVarint32 <= i2 - i && readRawVarint32 > 0) {
                m28662n = this.f36937j;
                this.f36940m = i + readRawVarint32;
            } else {
                if (readRawVarint32 == 0) {
                    return "";
                }
                i = 0;
                if (readRawVarint32 <= i2) {
                    m28666r(readRawVarint32);
                    m28662n = this.f36937j;
                    this.f36940m = readRawVarint32 + 0;
                } else {
                    m28662n = m28662n(readRawVarint32, false);
                }
            }
            return Utf8.m29659h(m28662n, i, readRawVarint32);
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.f36941n = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.f36941n = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.f36941n;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(final int fieldNumber, final MessageLite.Builder builder) throws IOException {
            readGroup(fieldNumber, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.f36942o = -this.f36940m;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                m28668u();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                skipRawBytes(4);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(final int size) throws IOException {
            int i = this.f36938k;
            int i2 = this.f36940m;
            if (size > i - i2 || size < 0) {
                m28667t(size);
            } else {
                this.f36940m = i2 + size;
            }
        }

        /* renamed from: t */
        public final void m28667t(final int size) throws IOException {
            if (size < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int i = this.f36942o;
            int i2 = this.f36940m;
            int i3 = i + i2 + size;
            int i4 = this.f36943p;
            if (i3 > i4) {
                skipRawBytes((i4 - i) - i2);
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i5 = 0;
            if (this.f36944q == null) {
                this.f36942o = i + i2;
                int i6 = this.f36938k - i2;
                this.f36938k = 0;
                this.f36940m = 0;
                i5 = i6;
                while (i5 < size) {
                    try {
                        long j = size - i5;
                        long m28660s = m28660s(this.f36936i, j);
                        if (m28660s < 0 || m28660s > j) {
                            throw new IllegalStateException(this.f36936i.getClass() + "#skip returned invalid result: " + m28660s + "\nThe InputStream implementation is buggy.");
                        }
                        if (m28660s == 0) {
                            break;
                        } else {
                            i5 += (int) m28660s;
                        }
                    } finally {
                        this.f36942o += i5;
                        m28665q();
                    }
                }
            }
            if (i5 >= size) {
                return;
            }
            int i7 = this.f36938k;
            int i8 = i7 - this.f36940m;
            this.f36940m = i7;
            m28666r(1);
            while (true) {
                int i9 = size - i8;
                int i10 = this.f36938k;
                if (i9 <= i10) {
                    this.f36940m = i9;
                    return;
                } else {
                    i8 += i10;
                    this.f36940m = i10;
                    m28666r(1);
                }
            }
        }

        /* renamed from: u */
        public final void m28668u() throws IOException {
            if (this.f36938k - this.f36940m >= 10) {
                m28669v();
            } else {
                m28670w();
            }
        }

        /* renamed from: v */
        public final void m28669v() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f36937j;
                int i2 = this.f36940m;
                this.f36940m = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: w */
        public final void m28670w() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: x */
        public final boolean m28671x(int n) throws IOException {
            int i = this.f36940m;
            if (i + n <= this.f36938k) {
                throw new IllegalStateException("refillBuffer() called when " + n + " bytes were already available in buffer");
            }
            int i2 = this.f36909c;
            int i3 = this.f36942o;
            if (n > (i2 - i3) - i || i3 + i + n > this.f36943p) {
                return false;
            }
            a aVar = this.f36944q;
            if (aVar != null) {
                aVar.onRefill();
            }
            int i4 = this.f36940m;
            if (i4 > 0) {
                int i5 = this.f36938k;
                if (i5 > i4) {
                    byte[] bArr = this.f36937j;
                    System.arraycopy(bArr, i4, bArr, 0, i5 - i4);
                }
                this.f36942o += i4;
                this.f36938k -= i4;
                this.f36940m = 0;
            }
            InputStream inputStream = this.f36936i;
            byte[] bArr2 = this.f36937j;
            int i6 = this.f36938k;
            int m28659l = m28659l(inputStream, bArr2, i6, Math.min(bArr2.length - i6, (this.f36909c - this.f36942o) - i6));
            if (m28659l == 0 || m28659l < -1 || m28659l > this.f36937j.length) {
                throw new IllegalStateException(this.f36936i.getClass() + "#read(byte[]) returned invalid result: " + m28659l + "\nThe InputStream implementation is buggy.");
            }
            if (m28659l <= 0) {
                return false;
            }
            this.f36938k += m28659l;
            m28665q();
            if (this.f36938k >= n) {
                return true;
            }
            return m28671x(n);
        }

        public C6657d(final InputStream input, int bufferSize) {
            super();
            this.f36943p = Integer.MAX_VALUE;
            this.f36944q = null;
            Internal.m29344b(input, "input");
            this.f36936i = input;
            this.f36937j = new byte[bufferSize];
            this.f36938k = 0;
            this.f36940m = 0;
            this.f36942o = 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream output) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, output));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(final int fieldNumber, final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag, final CodedOutputStream output) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                output.writeUInt32NoTag(tag);
                output.writeUInt64NoTag(readInt64);
                return true;
            }
            if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                output.writeUInt32NoTag(tag);
                output.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                output.writeUInt32NoTag(tag);
                output.writeBytesNoTag(readBytes);
                return true;
            }
            if (tagWireType == 3) {
                output.writeUInt32NoTag(tag);
                skipMessage(output);
                int m29722a = WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4);
                checkLastTagWas(m29722a);
                output.writeUInt32NoTag(m29722a);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int readRawLittleEndian32 = readRawLittleEndian32();
                output.writeUInt32NoTag(tag);
                output.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* renamed from: com.google.protobuf.CodedInputStream$e */
    /* loaded from: classes6.dex */
    public static final class C6658e extends CodedInputStream {

        /* renamed from: i */
        public final ByteBuffer f36948i;

        /* renamed from: j */
        public final boolean f36949j;

        /* renamed from: k */
        public final long f36950k;

        /* renamed from: l */
        public long f36951l;

        /* renamed from: m */
        public long f36952m;

        /* renamed from: n */
        public long f36953n;

        /* renamed from: o */
        public int f36954o;

        /* renamed from: p */
        public int f36955p;

        /* renamed from: q */
        public boolean f36956q;

        /* renamed from: r */
        public int f36957r;

        /* renamed from: j */
        public static boolean m28673j() {
            return dun.m53731V();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void checkLastTagWas(final int value) throws InvalidProtocolBufferException {
            if (this.f36955p != value) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void enableAliasing(boolean enabled) {
            this.f36956q = enabled;
        }

        @Override // com.google.protobuf.CodedInputStream
        /* renamed from: f */
        public long mo28641f() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((readRawByte() & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getBytesUntilLimit() {
            int i = this.f36957r;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - getTotalBytesRead();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getLastTag() {
            return this.f36955p;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int getTotalBytesRead() {
            return (int) (this.f36952m - this.f36953n);
        }

        /* renamed from: i */
        public final int m28674i(long pos) {
            return (int) (pos - this.f36950k);
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean isAtEnd() throws IOException {
            return this.f36952m == this.f36951l;
        }

        /* renamed from: k */
        public final void m28675k() {
            long j = this.f36951l + this.f36954o;
            this.f36951l = j;
            int i = (int) (j - this.f36953n);
            int i2 = this.f36957r;
            if (i <= i2) {
                this.f36954o = 0;
                return;
            }
            int i3 = i - i2;
            this.f36954o = i3;
            this.f36951l = j - i3;
        }

        /* renamed from: l */
        public final int m28676l() {
            return (int) (this.f36951l - this.f36952m);
        }

        /* renamed from: m */
        public final void m28677m() throws IOException {
            if (m28676l() >= 10) {
                m28678n();
            } else {
                m28679o();
            }
        }

        /* renamed from: n */
        public final void m28678n() throws IOException {
            for (int i = 0; i < 10; i++) {
                long j = this.f36952m;
                this.f36952m = 1 + j;
                if (dun.m53710A(j) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: o */
        public final void m28679o() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (readRawByte() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: p */
        public final ByteBuffer m28680p(long begin, long end) throws IOException {
            int position = this.f36948i.position();
            int limit = this.f36948i.limit();
            ByteBuffer byteBuffer = this.f36948i;
            try {
                try {
                    byteBuffer.position(m28674i(begin));
                    byteBuffer.limit(m28674i(end));
                    return this.f36948i.slice();
                } catch (IllegalArgumentException e) {
                    InvalidProtocolBufferException truncatedMessage = InvalidProtocolBufferException.truncatedMessage();
                    truncatedMessage.initCause(e);
                    throw truncatedMessage;
                }
            } finally {
                byteBuffer.position(position);
                byteBuffer.limit(limit);
            }
        }

        @Override // com.google.protobuf.CodedInputStream
        public void popLimit(final int oldLimit) {
            this.f36957r = oldLimit;
            m28675k();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int pushLimit(int byteLimit) throws InvalidProtocolBufferException {
            if (byteLimit < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            int totalBytesRead = byteLimit + getTotalBytesRead();
            int i = this.f36957r;
            if (totalBytesRead > i) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f36957r = totalBytesRead;
            m28675k();
            return i;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean readBool() throws IOException {
            return readRawVarint64() != 0;
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readByteArray() throws IOException {
            return readRawBytes(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteBuffer readByteBuffer() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 <= 0 || readRawVarint32 > m28676l()) {
                if (readRawVarint32 == 0) {
                    return Internal.EMPTY_BYTE_BUFFER;
                }
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (this.f36949j || !this.f36956q) {
                byte[] bArr = new byte[readRawVarint32];
                long j = readRawVarint32;
                dun.m53766p(this.f36952m, bArr, 0L, j);
                this.f36952m += j;
                return ByteBuffer.wrap(bArr);
            }
            long j2 = this.f36952m;
            long j3 = readRawVarint32;
            ByteBuffer m28680p = m28680p(j2, j2 + j3);
            this.f36952m += j3;
            return m28680p;
        }

        @Override // com.google.protobuf.CodedInputStream
        public ByteString readBytes() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 <= 0 || readRawVarint32 > m28676l()) {
                if (readRawVarint32 == 0) {
                    return ByteString.EMPTY;
                }
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (this.f36949j && this.f36956q) {
                long j = this.f36952m;
                long j2 = readRawVarint32;
                ByteBuffer m28680p = m28680p(j, j + j2);
                this.f36952m += j2;
                return ByteString.wrap(m28680p);
            }
            byte[] bArr = new byte[readRawVarint32];
            long j3 = readRawVarint32;
            dun.m53766p(this.f36952m, bArr, 0L, j3);
            this.f36952m += j3;
            return ByteString.wrap(bArr);
        }

        @Override // com.google.protobuf.CodedInputStream
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readRawLittleEndian64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readEnum() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readRawLittleEndian32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readGroup(final int fieldNumber, final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void readMessage(final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            builder.mergeFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte readRawByte() throws IOException {
            long j = this.f36952m;
            if (j == this.f36951l) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f36952m = 1 + j;
            return dun.m53710A(j);
        }

        @Override // com.google.protobuf.CodedInputStream
        public byte[] readRawBytes(final int length) throws IOException {
            if (length < 0 || length > m28676l()) {
                if (length > 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (length == 0) {
                    return Internal.EMPTY_BYTE_ARRAY;
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            byte[] bArr = new byte[length];
            long j = this.f36952m;
            long j2 = length;
            m28680p(j, j + j2).get(bArr);
            this.f36952m += j2;
            return bArr;
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readRawLittleEndian32() throws IOException {
            long j = this.f36952m;
            if (this.f36951l - j < 4) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f36952m = 4 + j;
            return (dun.m53710A(j) & 255) | ((dun.m53710A(1 + j) & 255) << 8) | ((dun.m53710A(2 + j) & 255) << 16) | ((dun.m53710A(j + 3) & 255) << 24);
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawLittleEndian64() throws IOException {
            long j = this.f36952m;
            if (this.f36951l - j < 8) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            this.f36952m = 8 + j;
            return ((dun.m53710A(j + 7) & 255) << 56) | (dun.m53710A(j) & 255) | ((dun.m53710A(1 + j) & 255) << 8) | ((dun.m53710A(2 + j) & 255) << 16) | ((dun.m53710A(3 + j) & 255) << 24) | ((dun.m53710A(4 + j) & 255) << 32) | ((dun.m53710A(5 + j) & 255) << 40) | ((dun.m53710A(6 + j) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0083, code lost:
        
            if (com.sunia.HTREnginev2.dun.m53710A(r4) < 0) goto L34;
         */
        @Override // com.google.protobuf.CodedInputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int readRawVarint32() throws java.io.IOException {
            /*
                r10 = this;
                long r0 = r10.f36952m
                long r2 = r10.f36951l
                int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r2 != 0) goto La
                goto L85
            La:
                r2 = 1
                long r4 = r0 + r2
                byte r0 = com.sunia.HTREnginev2.dun.m53710A(r0)
                if (r0 < 0) goto L17
                r10.f36952m = r4
                return r0
            L17:
                long r6 = r10.f36951l
                long r6 = r6 - r4
                r8 = 9
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 >= 0) goto L21
                goto L85
            L21:
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                int r1 = r1 << 7
                r0 = r0 ^ r1
                if (r0 >= 0) goto L2f
                r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L8b
            L2f:
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                int r1 = r1 << 14
                r0 = r0 ^ r1
                if (r0 < 0) goto L3e
                r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            L3c:
                r6 = r4
                goto L8b
            L3e:
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                int r1 = r1 << 21
                r0 = r0 ^ r1
                if (r0 >= 0) goto L4e
                r1 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r1
                goto L8b
            L4e:
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                int r6 = r1 << 28
                r0 = r0 ^ r6
                r6 = 266354560(0xfe03f80, float:2.2112565E-29)
                r0 = r0 ^ r6
                if (r1 >= 0) goto L3c
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                if (r1 >= 0) goto L8b
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                if (r1 >= 0) goto L3c
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                if (r1 >= 0) goto L8b
                long r4 = r6 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r6)
                if (r1 >= 0) goto L3c
                long r6 = r4 + r2
                byte r1 = com.sunia.HTREnginev2.dun.m53710A(r4)
                if (r1 >= 0) goto L8b
            L85:
                long r0 = r10.mo28641f()
                int r10 = (int) r0
                return r10
            L8b:
                r10.f36952m = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedInputStream.C6658e.readRawVarint32():int");
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readRawVarint64() throws IOException {
            long m53710A;
            long j;
            long j2;
            int i;
            long j3 = this.f36952m;
            if (this.f36951l != j3) {
                long j4 = j3 + 1;
                byte m53710A2 = dun.m53710A(j3);
                if (m53710A2 >= 0) {
                    this.f36952m = j4;
                    return m53710A2;
                }
                if (this.f36951l - j4 >= 9) {
                    long j5 = j4 + 1;
                    int m53710A3 = m53710A2 ^ (dun.m53710A(j4) << 7);
                    if (m53710A3 >= 0) {
                        long j6 = j5 + 1;
                        int m53710A4 = m53710A3 ^ (dun.m53710A(j5) << 14);
                        if (m53710A4 >= 0) {
                            m53710A = m53710A4 ^ 16256;
                        } else {
                            j5 = j6 + 1;
                            int m53710A5 = m53710A4 ^ (dun.m53710A(j6) << 21);
                            if (m53710A5 < 0) {
                                i = m53710A5 ^ (-2080896);
                            } else {
                                j6 = j5 + 1;
                                long m53710A6 = m53710A5 ^ (dun.m53710A(j5) << 28);
                                if (m53710A6 < 0) {
                                    long j7 = j6 + 1;
                                    long m53710A7 = m53710A6 ^ (dun.m53710A(j6) << 35);
                                    if (m53710A7 < 0) {
                                        j = -34093383808L;
                                    } else {
                                        j6 = j7 + 1;
                                        m53710A6 = m53710A7 ^ (dun.m53710A(j7) << 42);
                                        if (m53710A6 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            j7 = j6 + 1;
                                            m53710A7 = m53710A6 ^ (dun.m53710A(j6) << 49);
                                            if (m53710A7 < 0) {
                                                j = -558586000294016L;
                                            } else {
                                                j6 = j7 + 1;
                                                m53710A = (m53710A7 ^ (dun.m53710A(j7) << 56)) ^ 71499008037633920L;
                                                if (m53710A < 0) {
                                                    long j8 = 1 + j6;
                                                    if (dun.m53710A(j6) >= 0) {
                                                        j5 = j8;
                                                        this.f36952m = j5;
                                                        return m53710A;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    m53710A = m53710A7 ^ j;
                                    j5 = j7;
                                    this.f36952m = j5;
                                    return m53710A;
                                }
                                j2 = 266354560;
                                m53710A = m53710A6 ^ j2;
                            }
                        }
                        j5 = j6;
                        this.f36952m = j5;
                        return m53710A;
                    }
                    i = m53710A3 ^ (-128);
                    m53710A = i;
                    this.f36952m = j5;
                    return m53710A;
                }
            }
            return mo28641f();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSFixed32() throws IOException {
            return readRawLittleEndian32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSFixed64() throws IOException {
            return readRawLittleEndian64();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readSInt32() throws IOException {
            return CodedInputStream.decodeZigZag32(readRawVarint32());
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readSInt64() throws IOException {
            return CodedInputStream.decodeZigZag64(readRawVarint64());
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readString() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 <= 0 || readRawVarint32 > m28676l()) {
                if (readRawVarint32 == 0) {
                    return "";
                }
                if (readRawVarint32 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            byte[] bArr = new byte[readRawVarint32];
            long j = readRawVarint32;
            dun.m53766p(this.f36952m, bArr, 0L, j);
            String str = new String(bArr, Internal.f37667b);
            this.f36952m += j;
            return str;
        }

        @Override // com.google.protobuf.CodedInputStream
        public String readStringRequireUtf8() throws IOException {
            int readRawVarint32 = readRawVarint32();
            if (readRawVarint32 > 0 && readRawVarint32 <= m28676l()) {
                String m29658g = Utf8.m29658g(this.f36948i, m28674i(this.f36952m), readRawVarint32);
                this.f36952m += readRawVarint32;
                return m29658g;
            }
            if (readRawVarint32 == 0) {
                return "";
            }
            if (readRawVarint32 <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readTag() throws IOException {
            if (isAtEnd()) {
                this.f36955p = 0;
                return 0;
            }
            int readRawVarint32 = readRawVarint32();
            this.f36955p = readRawVarint32;
            if (WireFormat.getTagFieldNumber(readRawVarint32) != 0) {
                return this.f36955p;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.google.protobuf.CodedInputStream
        public int readUInt32() throws IOException {
            return readRawVarint32();
        }

        @Override // com.google.protobuf.CodedInputStream
        public long readUInt64() throws IOException {
            return readRawVarint64();
        }

        @Override // com.google.protobuf.CodedInputStream
        @Deprecated
        public void readUnknownGroup(final int fieldNumber, final MessageLite.Builder builder) throws IOException {
            readGroup(fieldNumber, builder, ExtensionRegistryLite.getEmptyRegistry());
        }

        @Override // com.google.protobuf.CodedInputStream
        public void resetSizeCounter() {
            this.f36953n = this.f36952m;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                m28677m();
                return true;
            }
            if (tagWireType == 1) {
                skipRawBytes(8);
                return true;
            }
            if (tagWireType == 2) {
                skipRawBytes(readRawVarint32());
                return true;
            }
            if (tagWireType == 3) {
                skipMessage();
                checkLastTagWas(WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4));
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                skipRawBytes(4);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage() throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag));
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipRawBytes(final int length) throws IOException {
            if (length >= 0 && length <= m28676l()) {
                this.f36952m += length;
            } else {
                if (length >= 0) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        public C6658e(ByteBuffer buffer, boolean immutable) {
            super();
            this.f36957r = Integer.MAX_VALUE;
            this.f36948i = buffer;
            long m53756k = dun.m53756k(buffer);
            this.f36950k = m53756k;
            this.f36951l = buffer.limit() + m53756k;
            long position = m53756k + buffer.position();
            this.f36952m = position;
            this.f36953n = position;
            this.f36949j = immutable;
        }

        @Override // com.google.protobuf.CodedInputStream
        public void skipMessage(CodedOutputStream output) throws IOException {
            int readTag;
            do {
                readTag = readTag();
                if (readTag == 0) {
                    return;
                }
            } while (skipField(readTag, output));
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readGroup(final int fieldNumber, final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            checkRecursionLimit();
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(WireFormat.m29722a(fieldNumber, 4));
            this.f36907a--;
            return parsePartialFrom;
        }

        @Override // com.google.protobuf.CodedInputStream
        public boolean skipField(final int tag, final CodedOutputStream output) throws IOException {
            int tagWireType = WireFormat.getTagWireType(tag);
            if (tagWireType == 0) {
                long readInt64 = readInt64();
                output.writeUInt32NoTag(tag);
                output.writeUInt64NoTag(readInt64);
                return true;
            }
            if (tagWireType == 1) {
                long readRawLittleEndian64 = readRawLittleEndian64();
                output.writeUInt32NoTag(tag);
                output.writeFixed64NoTag(readRawLittleEndian64);
                return true;
            }
            if (tagWireType == 2) {
                ByteString readBytes = readBytes();
                output.writeUInt32NoTag(tag);
                output.writeBytesNoTag(readBytes);
                return true;
            }
            if (tagWireType == 3) {
                output.writeUInt32NoTag(tag);
                skipMessage(output);
                int m29722a = WireFormat.m29722a(WireFormat.getTagFieldNumber(tag), 4);
                checkLastTagWas(m29722a);
                output.writeUInt32NoTag(m29722a);
                return true;
            }
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType == 5) {
                int readRawLittleEndian32 = readRawLittleEndian32();
                output.writeUInt32NoTag(tag);
                output.writeFixed32NoTag(readRawLittleEndian32);
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }

        @Override // com.google.protobuf.CodedInputStream
        public <T extends MessageLite> T readMessage(final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException {
            int readRawVarint32 = readRawVarint32();
            checkRecursionLimit();
            int pushLimit = pushLimit(readRawVarint32);
            this.f36907a++;
            T parsePartialFrom = parser.parsePartialFrom(this, extensionRegistry);
            checkLastTagWas(0);
            this.f36907a--;
            if (getBytesUntilLimit() == 0) {
                popLimit(pushLimit);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    /* renamed from: b */
    public static CodedInputStream m28636b(final Iterable<ByteBuffer> bufs, final boolean bufferIsImmutable) {
        int i = 0;
        int i2 = 0;
        for (ByteBuffer byteBuffer : bufs) {
            i2 += byteBuffer.remaining();
            i = byteBuffer.hasArray() ? i | 1 : byteBuffer.isDirect() ? i | 2 : i | 4;
        }
        return i == 2 ? new C6656c(bufs, i2, bufferIsImmutable) : newInstance(new fqi(bufs));
    }

    /* renamed from: c */
    public static CodedInputStream m28637c(ByteBuffer buf, boolean bufferIsImmutable) {
        if (buf.hasArray()) {
            return m28638d(buf.array(), buf.arrayOffset() + buf.position(), buf.remaining(), bufferIsImmutable);
        }
        if (buf.isDirect() && C6658e.m28673j()) {
            return new C6658e(buf, bufferIsImmutable);
        }
        int remaining = buf.remaining();
        byte[] bArr = new byte[remaining];
        buf.duplicate().get(bArr);
        return m28638d(bArr, 0, remaining, true);
    }

    /* renamed from: d */
    public static CodedInputStream m28638d(final byte[] buf, final int off, final int len, final boolean bufferIsImmutable) {
        C6655b c6655b = new C6655b(buf, off, len, bufferIsImmutable);
        try {
            c6655b.pushLimit(len);
            return c6655b;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int decodeZigZag32(final int n) {
        return (-(n & 1)) ^ (n >>> 1);
    }

    public static long decodeZigZag64(final long n) {
        return (-(n & 1)) ^ (n >>> 1);
    }

    /* renamed from: e */
    public static int m28639e(final InputStream input) throws IOException {
        int read = input.read();
        if (read != -1) {
            return readRawVarint32(read, input);
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static CodedInputStream newInstance(final InputStream input) {
        return newInstance(input, 4096);
    }

    public static int readRawVarint32(final int firstByte, final InputStream input) throws IOException {
        if ((firstByte & 128) == 0) {
            return firstByte;
        }
        int i = firstByte & 127;
        int i2 = 7;
        while (i2 < 32) {
            int read = input.read();
            if (read == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i |= (read & 127) << i2;
            if ((read & 128) == 0) {
                return i;
            }
            i2 += 7;
        }
        while (i2 < 64) {
            int read2 = input.read();
            if (read2 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((read2 & 128) == 0) {
                return i;
            }
            i2 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    /* renamed from: a */
    public final void m28640a() {
        this.f36911e = true;
    }

    public abstract void checkLastTagWas(final int value) throws InvalidProtocolBufferException;

    public void checkRecursionLimit() throws InvalidProtocolBufferException {
        if (this.f36907a >= this.f36908b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    public abstract void enableAliasing(boolean enabled);

    /* renamed from: f */
    public abstract long mo28641f() throws IOException;

    /* renamed from: g */
    public final boolean m28642g() {
        return this.f36911e;
    }

    public abstract int getBytesUntilLimit();

    public abstract int getLastTag();

    public abstract int getTotalBytesRead();

    /* renamed from: h */
    public final void m28643h() {
        this.f36911e = false;
    }

    public abstract boolean isAtEnd() throws IOException;

    public abstract void popLimit(final int oldLimit);

    public abstract int pushLimit(int byteLimit) throws InvalidProtocolBufferException;

    public abstract boolean readBool() throws IOException;

    public abstract byte[] readByteArray() throws IOException;

    public abstract ByteBuffer readByteBuffer() throws IOException;

    public abstract ByteString readBytes() throws IOException;

    public abstract double readDouble() throws IOException;

    public abstract int readEnum() throws IOException;

    public abstract int readFixed32() throws IOException;

    public abstract long readFixed64() throws IOException;

    public abstract float readFloat() throws IOException;

    public abstract <T extends MessageLite> T readGroup(final int fieldNumber, final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException;

    public abstract void readGroup(final int fieldNumber, final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException;

    public abstract int readInt32() throws IOException;

    public abstract long readInt64() throws IOException;

    public abstract <T extends MessageLite> T readMessage(final Parser<T> parser, final ExtensionRegistryLite extensionRegistry) throws IOException;

    public abstract void readMessage(final MessageLite.Builder builder, final ExtensionRegistryLite extensionRegistry) throws IOException;

    public abstract byte readRawByte() throws IOException;

    public abstract byte[] readRawBytes(final int size) throws IOException;

    public abstract int readRawLittleEndian32() throws IOException;

    public abstract long readRawLittleEndian64() throws IOException;

    public abstract int readRawVarint32() throws IOException;

    public abstract long readRawVarint64() throws IOException;

    public abstract int readSFixed32() throws IOException;

    public abstract long readSFixed64() throws IOException;

    public abstract int readSInt32() throws IOException;

    public abstract long readSInt64() throws IOException;

    public abstract String readString() throws IOException;

    public abstract String readStringRequireUtf8() throws IOException;

    public abstract int readTag() throws IOException;

    public abstract int readUInt32() throws IOException;

    public abstract long readUInt64() throws IOException;

    @Deprecated
    public abstract void readUnknownGroup(final int fieldNumber, final MessageLite.Builder builder) throws IOException;

    public abstract void resetSizeCounter();

    public final int setRecursionLimit(final int limit) {
        if (limit >= 0) {
            int i = this.f36908b;
            this.f36908b = limit;
            return i;
        }
        throw new IllegalArgumentException("Recursion limit cannot be negative: " + limit);
    }

    public final int setSizeLimit(final int limit) {
        if (limit >= 0) {
            int i = this.f36909c;
            this.f36909c = limit;
            return i;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: " + limit);
    }

    public abstract boolean skipField(final int tag) throws IOException;

    @Deprecated
    public abstract boolean skipField(final int tag, final CodedOutputStream output) throws IOException;

    public abstract void skipMessage() throws IOException;

    public abstract void skipMessage(CodedOutputStream output) throws IOException;

    public abstract void skipRawBytes(final int size) throws IOException;

    public CodedInputStream() {
        this.f36908b = f36906h;
        this.f36909c = Integer.MAX_VALUE;
        this.f36911e = false;
    }

    public static CodedInputStream newInstance(final InputStream input, int bufferSize) {
        if (bufferSize <= 0) {
            throw new IllegalArgumentException("bufferSize must be > 0");
        }
        if (input == null) {
            return newInstance(Internal.EMPTY_BYTE_ARRAY);
        }
        return new C6657d(input, bufferSize);
    }

    public static CodedInputStream newInstance(final Iterable<ByteBuffer> input) {
        if (!C6658e.m28673j()) {
            return newInstance(new fqi(input));
        }
        return m28636b(input, false);
    }

    public static CodedInputStream newInstance(final byte[] buf) {
        return newInstance(buf, 0, buf.length);
    }

    public static CodedInputStream newInstance(final byte[] buf, final int off, final int len) {
        return m28638d(buf, off, len, false);
    }

    public static CodedInputStream newInstance(ByteBuffer buf) {
        return m28637c(buf, false);
    }
}
