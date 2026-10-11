package com.google.protobuf;

import com.google.protobuf.Utf8;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.iri;
import com.sunia.HTREnginev2.vki;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.plugins.tiff.TIFFTag;
import kotlinx.coroutines.scheduling.CoroutineScheduler;

/* loaded from: classes6.dex */
public abstract class CodedOutputStream extends ByteOutput {
    public static final int DEFAULT_BUFFER_SIZE = 4096;

    @Deprecated
    public static final int LITTLE_ENDIAN_32_SIZE = 4;

    /* renamed from: c */
    public static final Logger f36958c = Logger.getLogger(CodedOutputStream.class.getName());

    /* renamed from: d */
    public static final boolean f36959d = dun.m53730U();

    /* renamed from: a */
    public C6870g f36960a;

    /* renamed from: b */
    public boolean f36961b;

    /* loaded from: classes6.dex */
    public static class OutOfSpaceException extends IOException {
        private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        public OutOfSpaceException() {
            super(MESSAGE);
        }

        public OutOfSpaceException(String explanationMessage) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + explanationMessage);
        }

        public OutOfSpaceException(Throwable cause) {
            super(MESSAGE, cause);
        }

        public OutOfSpaceException(String explanationMessage, Throwable cause) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + explanationMessage, cause);
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6660b extends CodedOutputStream {

        /* renamed from: e */
        public final byte[] f36962e;

        /* renamed from: f */
        public final int f36963f;

        /* renamed from: g */
        public int f36964g;

        /* renamed from: h */
        public int f36965h;

        public AbstractC6660b(int bufferSize) {
            super();
            if (bufferSize < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            byte[] bArr = new byte[Math.max(bufferSize, 20)];
            this.f36962e = bArr;
            this.f36963f = bArr.length;
        }

        /* renamed from: U */
        public final void m28698U(byte value) {
            byte[] bArr = this.f36962e;
            int i = this.f36964g;
            this.f36964g = i + 1;
            bArr[i] = value;
            this.f36965h++;
        }

        /* renamed from: V */
        public final void m28699V(int value) {
            byte[] bArr = this.f36962e;
            int i = this.f36964g;
            int i2 = i + 1;
            bArr[i] = (byte) (value & 255);
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((value >> 8) & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((value >> 16) & 255);
            this.f36964g = i4 + 1;
            bArr[i4] = (byte) ((value >> 24) & 255);
            this.f36965h += 4;
        }

        /* renamed from: W */
        public final void m28700W(long value) {
            byte[] bArr = this.f36962e;
            int i = this.f36964g;
            int i2 = i + 1;
            bArr[i] = (byte) (value & 255);
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((value >> 8) & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((value >> 16) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (255 & (value >> 24));
            int i6 = i5 + 1;
            bArr[i5] = (byte) (((int) (value >> 32)) & 255);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (((int) (value >> 40)) & 255);
            int i8 = i7 + 1;
            bArr[i7] = (byte) (((int) (value >> 48)) & 255);
            this.f36964g = i8 + 1;
            bArr[i8] = (byte) (((int) (value >> 56)) & 255);
            this.f36965h += 8;
        }

        /* renamed from: X */
        public final void m28701X(final int value) {
            if (value >= 0) {
                m28703Z(value);
            } else {
                m28704a0(value);
            }
        }

        /* renamed from: Y */
        public final void m28702Y(final int fieldNumber, final int wireType) {
            m28703Z(WireFormat.m29722a(fieldNumber, wireType));
        }

        /* renamed from: Z */
        public final void m28703Z(int value) {
            if (!CodedOutputStream.f36959d) {
                while ((value & (-128)) != 0) {
                    byte[] bArr = this.f36962e;
                    int i = this.f36964g;
                    this.f36964g = i + 1;
                    bArr[i] = (byte) ((value & 127) | 128);
                    this.f36965h++;
                    value >>>= 7;
                }
                byte[] bArr2 = this.f36962e;
                int i2 = this.f36964g;
                this.f36964g = i2 + 1;
                bArr2[i2] = (byte) value;
                this.f36965h++;
                return;
            }
            long j = this.f36964g;
            while ((value & (-128)) != 0) {
                byte[] bArr3 = this.f36962e;
                int i3 = this.f36964g;
                this.f36964g = i3 + 1;
                dun.m53749g0(bArr3, i3, (byte) ((value & 127) | 128));
                value >>>= 7;
            }
            byte[] bArr4 = this.f36962e;
            int i4 = this.f36964g;
            this.f36964g = i4 + 1;
            dun.m53749g0(bArr4, i4, (byte) value);
            this.f36965h += (int) (this.f36964g - j);
        }

        /* renamed from: a0 */
        public final void m28704a0(long value) {
            if (!CodedOutputStream.f36959d) {
                while ((value & (-128)) != 0) {
                    byte[] bArr = this.f36962e;
                    int i = this.f36964g;
                    this.f36964g = i + 1;
                    bArr[i] = (byte) ((((int) value) & 127) | 128);
                    this.f36965h++;
                    value >>>= 7;
                }
                byte[] bArr2 = this.f36962e;
                int i2 = this.f36964g;
                this.f36964g = i2 + 1;
                bArr2[i2] = (byte) value;
                this.f36965h++;
                return;
            }
            long j = this.f36964g;
            while ((value & (-128)) != 0) {
                byte[] bArr3 = this.f36962e;
                int i3 = this.f36964g;
                this.f36964g = i3 + 1;
                dun.m53749g0(bArr3, i3, (byte) ((((int) value) & 127) | 128));
                value >>>= 7;
            }
            byte[] bArr4 = this.f36962e;
            int i4 = this.f36964g;
            this.f36964g = i4 + 1;
            dun.m53749g0(bArr4, i4, (byte) value);
            this.f36965h += (int) (this.f36964g - j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int getTotalBytesWritten() {
            return this.f36965h;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int spaceLeft() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$c */
    /* loaded from: classes6.dex */
    public static class C6661c extends CodedOutputStream {

        /* renamed from: e */
        public final byte[] f36966e;

        /* renamed from: f */
        public final int f36967f;

        /* renamed from: g */
        public final int f36968g;

        /* renamed from: h */
        public int f36969h;

        public C6661c(byte[] buffer, int offset, int length) {
            super();
            if (buffer == null) {
                throw new NullPointerException("buffer");
            }
            int i = offset + length;
            if ((offset | length | (buffer.length - i)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(buffer.length), Integer.valueOf(offset), Integer.valueOf(length)));
            }
            this.f36966e = buffer;
            this.f36967f = offset;
            this.f36969h = offset;
            this.f36968g = i;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: P */
        public final void mo28693P(final byte[] value, int offset, int length) throws IOException {
            writeUInt32NoTag(length);
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: S */
        public final void mo28696S(final int fieldNumber, final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 2);
            writeUInt32NoTag(((AbstractMessageLite) value).getSerializedSize(schema));
            schema.mo30371e(value, this.f36960a);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: T */
        public final void mo28697T(final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeUInt32NoTag(((AbstractMessageLite) value).getSerializedSize(schema));
            schema.mo30371e(value, this.f36960a);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int getTotalBytesWritten() {
            return this.f36969h - this.f36967f;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final int spaceLeft() {
            return this.f36968g - this.f36969h;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void write(byte value) throws IOException {
            try {
                byte[] bArr = this.f36966e;
                int i = this.f36969h;
                this.f36969h = i + 1;
                bArr[i] = value;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f36969h), Integer.valueOf(this.f36968g), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBool(int i, boolean z) throws IOException {
            writeTag(i, 0);
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArray(final int fieldNumber, final byte[] value) throws IOException {
            writeByteArray(fieldNumber, value, 0, value.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteBuffer(final int fieldNumber, final ByteBuffer value) throws IOException {
            writeTag(fieldNumber, 2);
            writeUInt32NoTag(value.capacity());
            writeRawBytes(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBytes(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(fieldNumber, 2);
            writeBytesNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeBytesNoTag(final ByteString value) throws IOException {
            writeUInt32NoTag(value.size());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed32(final int fieldNumber, final int value) throws IOException {
            writeTag(fieldNumber, 5);
            writeFixed32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed32NoTag(int value) throws IOException {
            try {
                byte[] bArr = this.f36966e;
                int i = this.f36969h;
                int i2 = i + 1;
                bArr[i] = (byte) (value & 255);
                int i3 = i2 + 1;
                bArr[i2] = (byte) ((value >> 8) & 255);
                int i4 = i3 + 1;
                bArr[i3] = (byte) ((value >> 16) & 255);
                this.f36969h = i4 + 1;
                bArr[i4] = (byte) ((value >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f36969h), Integer.valueOf(this.f36968g), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed64(final int fieldNumber, final long value) throws IOException {
            writeTag(fieldNumber, 1);
            writeFixed64NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeFixed64NoTag(long value) throws IOException {
            try {
                byte[] bArr = this.f36966e;
                int i = this.f36969h;
                int i2 = i + 1;
                bArr[i] = (byte) (((int) value) & 255);
                int i3 = i2 + 1;
                bArr[i2] = (byte) (((int) (value >> 8)) & 255);
                int i4 = i3 + 1;
                bArr[i3] = (byte) (((int) (value >> 16)) & 255);
                int i5 = i4 + 1;
                bArr[i4] = (byte) (((int) (value >> 24)) & 255);
                int i6 = i5 + 1;
                bArr[i5] = (byte) (((int) (value >> 32)) & 255);
                int i7 = i6 + 1;
                bArr[i6] = (byte) (((int) (value >> 40)) & 255);
                int i8 = i7 + 1;
                bArr[i7] = (byte) (((int) (value >> 48)) & 255);
                this.f36969h = i8 + 1;
                bArr[i8] = (byte) (((int) (value >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f36969h), Integer.valueOf(this.f36968g), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeInt32(final int fieldNumber, final int value) throws IOException {
            writeTag(fieldNumber, 0);
            writeInt32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeInt32NoTag(int value) throws IOException {
            if (value >= 0) {
                writeUInt32NoTag(value);
            } else {
                writeUInt64NoTag(value);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void writeLazy(byte[] value, int offset, int length) throws IOException {
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessage(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(fieldNumber, 2);
            writeMessageNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessageNoTag(final MessageLite value) throws IOException {
            writeUInt32NoTag(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeMessageSetExtension(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeMessage(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeRawBytes(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                write(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            iri.m54771a(duplicate);
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeRawMessageSetExtension(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeBytes(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeString(final int fieldNumber, final String value) throws IOException {
            writeTag(fieldNumber, 2);
            writeStringNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeStringNoTag(String value) throws IOException {
            int i = this.f36969h;
            try {
                int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(value.length() * 3);
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(value.length());
                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                    int i2 = i + computeUInt32SizeNoTag2;
                    this.f36969h = i2;
                    int m29660i = Utf8.m29660i(value, this.f36966e, i2, spaceLeft());
                    this.f36969h = i;
                    writeUInt32NoTag((m29660i - i) - computeUInt32SizeNoTag2);
                    this.f36969h = m29660i;
                } else {
                    writeUInt32NoTag(Utf8.m29662k(value));
                    this.f36969h = Utf8.m29660i(value, this.f36966e, this.f36969h, spaceLeft());
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.f36969h = i;
                m28691K(value, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeTag(final int fieldNumber, final int wireType) throws IOException {
            writeUInt32NoTag(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt32(final int fieldNumber, final int value) throws IOException {
            writeTag(fieldNumber, 0);
            writeUInt32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt32NoTag(int value) throws IOException {
            while ((value & (-128)) != 0) {
                try {
                    byte[] bArr = this.f36966e;
                    int i = this.f36969h;
                    this.f36969h = i + 1;
                    bArr[i] = (byte) ((value & 127) | 128);
                    value >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f36969h), Integer.valueOf(this.f36968g), 1), e);
                }
            }
            byte[] bArr2 = this.f36966e;
            int i2 = this.f36969h;
            this.f36969h = i2 + 1;
            bArr2[i2] = (byte) value;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt64(final int fieldNumber, final long value) throws IOException {
            writeTag(fieldNumber, 0);
            writeUInt64NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeUInt64NoTag(long value) throws IOException {
            if (CodedOutputStream.f36959d && spaceLeft() >= 10) {
                while ((value & (-128)) != 0) {
                    byte[] bArr = this.f36966e;
                    int i = this.f36969h;
                    this.f36969h = i + 1;
                    dun.m53749g0(bArr, i, (byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                }
                byte[] bArr2 = this.f36966e;
                int i2 = this.f36969h;
                this.f36969h = i2 + 1;
                dun.m53749g0(bArr2, i2, (byte) value);
                return;
            }
            while ((value & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f36966e;
                    int i3 = this.f36969h;
                    this.f36969h = i3 + 1;
                    bArr3[i3] = (byte) ((((int) value) & 127) | 128);
                    value >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f36969h), Integer.valueOf(this.f36968g), 1), e);
                }
            }
            byte[] bArr4 = this.f36966e;
            int i4 = this.f36969h;
            this.f36969h = i4 + 1;
            bArr4[i4] = (byte) value;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public final void writeByteArray(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            writeTag(fieldNumber, 2);
            mo28693P(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void writeLazy(ByteBuffer value) throws IOException {
            write(value);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void write(byte[] value, int offset, int length) throws IOException {
            try {
                System.arraycopy(value, offset, this.f36966e, this.f36969h, length);
                this.f36969h += length;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f36969h), Integer.valueOf(this.f36968g), Integer.valueOf(length)), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public final void write(ByteBuffer value) throws IOException {
            int remaining = value.remaining();
            try {
                value.get(this.f36966e, this.f36969h, remaining);
                this.f36969h += remaining;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f36969h), Integer.valueOf(this.f36968g), Integer.valueOf(remaining)), e);
            }
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$d */
    /* loaded from: classes6.dex */
    public static final class C6662d extends AbstractC6660b {

        /* renamed from: i */
        public final ByteOutput f36970i;

        public C6662d(ByteOutput out, int bufferSize) {
            super(bufferSize);
            if (out == null) {
                throw new NullPointerException("out");
            }
            this.f36970i = out;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: P */
        public void mo28693P(final byte[] value, int offset, int length) throws IOException {
            writeUInt32NoTag(length);
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: S */
        public void mo28696S(final int fieldNumber, final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 2);
            mo28697T(value, schema);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: T */
        public void mo28697T(final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeUInt32NoTag(((AbstractMessageLite) value).getSerializedSize(schema));
            schema.mo30371e(value, this.f36960a);
        }

        /* renamed from: b0 */
        public final void m28705b0() throws IOException {
            this.f36970i.write(this.f36962e, 0, this.f36964g);
            this.f36964g = 0;
        }

        /* renamed from: c0 */
        public final void m28706c0(int requiredSize) throws IOException {
            if (this.f36963f - this.f36964g < requiredSize) {
                m28705b0();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() throws IOException {
            if (this.f36964g > 0) {
                m28705b0();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte value) throws IOException {
            if (this.f36964g == this.f36963f) {
                m28705b0();
            }
            m28698U(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i, boolean z) throws IOException {
            m28706c0(11);
            m28702Y(i, 0);
            m28698U(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(final int fieldNumber, final byte[] value) throws IOException {
            writeByteArray(fieldNumber, value, 0, value.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(final int fieldNumber, final ByteBuffer value) throws IOException {
            writeTag(fieldNumber, 2);
            writeUInt32NoTag(value.capacity());
            writeRawBytes(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(fieldNumber, 2);
            writeBytesNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(final ByteString value) throws IOException {
            writeUInt32NoTag(value.size());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(final int fieldNumber, final int value) throws IOException {
            m28706c0(14);
            m28702Y(fieldNumber, 5);
            m28699V(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(final int value) throws IOException {
            m28706c0(4);
            m28699V(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(final int fieldNumber, final long value) throws IOException {
            m28706c0(18);
            m28702Y(fieldNumber, 1);
            m28700W(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(final long value) throws IOException {
            m28706c0(8);
            m28700W(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(final int fieldNumber, final int value) throws IOException {
            m28706c0(20);
            m28702Y(fieldNumber, 0);
            m28701X(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int value) throws IOException {
            if (value >= 0) {
                writeUInt32NoTag(value);
            } else {
                writeUInt64NoTag(value);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) throws IOException {
            flush();
            this.f36970i.writeLazy(value, offset, length);
            this.f36965h += length;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(fieldNumber, 2);
            writeMessageNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(final MessageLite value) throws IOException {
            writeUInt32NoTag(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeMessage(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                write(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            iri.m54771a(duplicate);
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeBytes(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(final int fieldNumber, final String value) throws IOException {
            writeTag(fieldNumber, 2);
            writeStringNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String value) throws IOException {
            int length = value.length() * 3;
            int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(length);
            int i = computeUInt32SizeNoTag + length;
            int i2 = this.f36963f;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int m29660i = Utf8.m29660i(value, bArr, 0, length);
                writeUInt32NoTag(m29660i);
                writeLazy(bArr, 0, m29660i);
                return;
            }
            if (i > i2 - this.f36964g) {
                m28705b0();
            }
            int i3 = this.f36964g;
            try {
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(value.length());
                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                    int i4 = i3 + computeUInt32SizeNoTag2;
                    this.f36964g = i4;
                    int m29660i2 = Utf8.m29660i(value, this.f36962e, i4, this.f36963f - i4);
                    this.f36964g = i3;
                    int i5 = (m29660i2 - i3) - computeUInt32SizeNoTag2;
                    m28703Z(i5);
                    this.f36964g = m29660i2;
                    this.f36965h += i5;
                } else {
                    int m29662k = Utf8.m29662k(value);
                    m28703Z(m29662k);
                    this.f36964g = Utf8.m29660i(value, this.f36962e, this.f36964g, m29662k);
                    this.f36965h += m29662k;
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.f36965h -= this.f36964g - i3;
                this.f36964g = i3;
                m28691K(value, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(final int fieldNumber, final int wireType) throws IOException {
            writeUInt32NoTag(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(final int fieldNumber, final int value) throws IOException {
            m28706c0(20);
            m28702Y(fieldNumber, 0);
            m28703Z(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int value) throws IOException {
            m28706c0(5);
            m28703Z(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(final int fieldNumber, final long value) throws IOException {
            m28706c0(20);
            m28702Y(fieldNumber, 0);
            m28704a0(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long value) throws IOException {
            m28706c0(10);
            m28704a0(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            writeTag(fieldNumber, 2);
            mo28693P(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) throws IOException {
            flush();
            this.f36970i.write(value, offset, length);
            this.f36965h += length;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) throws IOException {
            flush();
            int remaining = value.remaining();
            this.f36970i.writeLazy(value);
            this.f36965h += remaining;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) throws IOException {
            flush();
            int remaining = value.remaining();
            this.f36970i.write(value);
            this.f36965h += remaining;
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$e */
    /* loaded from: classes6.dex */
    public static final class C6663e extends C6661c {

        /* renamed from: i */
        public final ByteBuffer f36971i;

        /* renamed from: j */
        public int f36972j;

        public C6663e(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f36971i = byteBuffer;
            this.f36972j = byteBuffer.position();
        }

        @Override // com.google.protobuf.CodedOutputStream.C6661c, com.google.protobuf.CodedOutputStream
        public void flush() {
            iri.m54775e(this.f36971i, this.f36972j + getTotalBytesWritten());
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$f */
    /* loaded from: classes6.dex */
    public static final class C6664f extends AbstractC6660b {

        /* renamed from: i */
        public final OutputStream f36973i;

        public C6664f(OutputStream out, int bufferSize) {
            super(bufferSize);
            if (out == null) {
                throw new NullPointerException("out");
            }
            this.f36973i = out;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: P */
        public void mo28693P(final byte[] value, int offset, int length) throws IOException {
            writeUInt32NoTag(length);
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: S */
        public void mo28696S(final int fieldNumber, final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 2);
            mo28697T(value, schema);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: T */
        public void mo28697T(final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeUInt32NoTag(((AbstractMessageLite) value).getSerializedSize(schema));
            schema.mo30371e(value, this.f36960a);
        }

        /* renamed from: b0 */
        public final void m28707b0() throws IOException {
            this.f36973i.write(this.f36962e, 0, this.f36964g);
            this.f36964g = 0;
        }

        /* renamed from: c0 */
        public final void m28708c0(int requiredSize) throws IOException {
            if (this.f36963f - this.f36964g < requiredSize) {
                m28707b0();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() throws IOException {
            if (this.f36964g > 0) {
                m28707b0();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte value) throws IOException {
            if (this.f36964g == this.f36963f) {
                m28707b0();
            }
            m28698U(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i, boolean z) throws IOException {
            m28708c0(11);
            m28702Y(i, 0);
            m28698U(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(final int fieldNumber, final byte[] value) throws IOException {
            writeByteArray(fieldNumber, value, 0, value.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(final int fieldNumber, final ByteBuffer value) throws IOException {
            writeTag(fieldNumber, 2);
            writeUInt32NoTag(value.capacity());
            writeRawBytes(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(fieldNumber, 2);
            writeBytesNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(final ByteString value) throws IOException {
            writeUInt32NoTag(value.size());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(final int fieldNumber, final int value) throws IOException {
            m28708c0(14);
            m28702Y(fieldNumber, 5);
            m28699V(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(final int value) throws IOException {
            m28708c0(4);
            m28699V(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(final int fieldNumber, final long value) throws IOException {
            m28708c0(18);
            m28702Y(fieldNumber, 1);
            m28700W(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(final long value) throws IOException {
            m28708c0(8);
            m28700W(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(final int fieldNumber, final int value) throws IOException {
            m28708c0(20);
            m28702Y(fieldNumber, 0);
            m28701X(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int value) throws IOException {
            if (value >= 0) {
                writeUInt32NoTag(value);
            } else {
                writeUInt64NoTag(value);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) throws IOException {
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(fieldNumber, 2);
            writeMessageNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(final MessageLite value) throws IOException {
            writeUInt32NoTag(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeMessage(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                write(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            iri.m54771a(duplicate);
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeBytes(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(final int fieldNumber, final String value) throws IOException {
            writeTag(fieldNumber, 2);
            writeStringNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String value) throws IOException {
            int m29662k;
            try {
                int length = value.length() * 3;
                int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(length);
                int i = computeUInt32SizeNoTag + length;
                int i2 = this.f36963f;
                if (i > i2) {
                    byte[] bArr = new byte[length];
                    int m29660i = Utf8.m29660i(value, bArr, 0, length);
                    writeUInt32NoTag(m29660i);
                    writeLazy(bArr, 0, m29660i);
                    return;
                }
                if (i > i2 - this.f36964g) {
                    m28707b0();
                }
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(value.length());
                int i3 = this.f36964g;
                try {
                    if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                        int i4 = i3 + computeUInt32SizeNoTag2;
                        this.f36964g = i4;
                        int m29660i2 = Utf8.m29660i(value, this.f36962e, i4, this.f36963f - i4);
                        this.f36964g = i3;
                        m29662k = (m29660i2 - i3) - computeUInt32SizeNoTag2;
                        m28703Z(m29662k);
                        this.f36964g = m29660i2;
                    } else {
                        m29662k = Utf8.m29662k(value);
                        m28703Z(m29662k);
                        this.f36964g = Utf8.m29660i(value, this.f36962e, this.f36964g, m29662k);
                    }
                    this.f36965h += m29662k;
                } catch (Utf8.UnpairedSurrogateException e) {
                    this.f36965h -= this.f36964g - i3;
                    this.f36964g = i3;
                    throw e;
                } catch (ArrayIndexOutOfBoundsException e2) {
                    throw new OutOfSpaceException(e2);
                }
            } catch (Utf8.UnpairedSurrogateException e3) {
                m28691K(value, e3);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(final int fieldNumber, final int wireType) throws IOException {
            writeUInt32NoTag(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(final int fieldNumber, final int value) throws IOException {
            m28708c0(20);
            m28702Y(fieldNumber, 0);
            m28703Z(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int value) throws IOException {
            m28708c0(5);
            m28703Z(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(final int fieldNumber, final long value) throws IOException {
            m28708c0(20);
            m28702Y(fieldNumber, 0);
            m28704a0(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long value) throws IOException {
            m28708c0(10);
            m28704a0(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            writeTag(fieldNumber, 2);
            mo28693P(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) throws IOException {
            write(value);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) throws IOException {
            int i = this.f36963f;
            int i2 = this.f36964g;
            if (i - i2 >= length) {
                System.arraycopy(value, offset, this.f36962e, i2, length);
                this.f36964g += length;
                this.f36965h += length;
                return;
            }
            int i3 = i - i2;
            System.arraycopy(value, offset, this.f36962e, i2, i3);
            int i4 = offset + i3;
            int i5 = length - i3;
            this.f36964g = this.f36963f;
            this.f36965h += i3;
            m28707b0();
            if (i5 <= this.f36963f) {
                System.arraycopy(value, i4, this.f36962e, 0, i5);
                this.f36964g = i5;
            } else {
                this.f36973i.write(value, i4, i5);
            }
            this.f36965h += i5;
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) throws IOException {
            int remaining = value.remaining();
            int i = this.f36963f;
            int i2 = this.f36964g;
            if (i - i2 >= remaining) {
                value.get(this.f36962e, i2, remaining);
                this.f36964g += remaining;
                this.f36965h += remaining;
                return;
            }
            int i3 = i - i2;
            value.get(this.f36962e, i2, i3);
            int i4 = remaining - i3;
            this.f36964g = this.f36963f;
            this.f36965h += i3;
            m28707b0();
            while (true) {
                int i5 = this.f36963f;
                if (i4 > i5) {
                    value.get(this.f36962e, 0, i5);
                    this.f36973i.write(this.f36962e, 0, this.f36963f);
                    int i6 = this.f36963f;
                    i4 -= i6;
                    this.f36965h += i6;
                } else {
                    value.get(this.f36962e, 0, i4);
                    this.f36964g = i4;
                    this.f36965h += i4;
                    return;
                }
            }
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$g */
    /* loaded from: classes6.dex */
    public static final class C6665g extends CodedOutputStream {

        /* renamed from: e */
        public final ByteBuffer f36974e;

        /* renamed from: f */
        public final ByteBuffer f36975f;

        /* renamed from: g */
        public final int f36976g;

        public C6665g(ByteBuffer buffer) {
            super();
            this.f36974e = buffer;
            this.f36975f = buffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f36976g = buffer.position();
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: P */
        public void mo28693P(final byte[] value, int offset, int length) throws IOException {
            writeUInt32NoTag(length);
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: S */
        public void mo28696S(final int fieldNumber, final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 2);
            mo28697T(value, schema);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: T */
        public void mo28697T(final MessageLite value, InterfaceC6889z schema) throws IOException {
            writeUInt32NoTag(((AbstractMessageLite) value).getSerializedSize(schema));
            schema.mo30371e(value, this.f36960a);
        }

        /* renamed from: U */
        public final void m28709U(String value) throws IOException {
            try {
                Utf8.m29661j(value, this.f36975f);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
            iri.m54775e(this.f36974e, this.f36975f.position());
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int getTotalBytesWritten() {
            return this.f36975f.position() - this.f36976g;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int spaceLeft() {
            return this.f36975f.remaining();
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte value) throws IOException {
            try {
                this.f36975f.put(value);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i, boolean z) throws IOException {
            writeTag(i, 0);
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(final int fieldNumber, final byte[] value) throws IOException {
            writeByteArray(fieldNumber, value, 0, value.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(final int fieldNumber, final ByteBuffer value) throws IOException {
            writeTag(fieldNumber, 2);
            writeUInt32NoTag(value.capacity());
            writeRawBytes(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(fieldNumber, 2);
            writeBytesNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(final ByteString value) throws IOException {
            writeUInt32NoTag(value.size());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(final int fieldNumber, final int value) throws IOException {
            writeTag(fieldNumber, 5);
            writeFixed32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int value) throws IOException {
            try {
                this.f36975f.putInt(value);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(final int fieldNumber, final long value) throws IOException {
            writeTag(fieldNumber, 1);
            writeFixed64NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long value) throws IOException {
            try {
                this.f36975f.putLong(value);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(final int fieldNumber, final int value) throws IOException {
            writeTag(fieldNumber, 0);
            writeInt32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int value) throws IOException {
            if (value >= 0) {
                writeUInt32NoTag(value);
            } else {
                writeUInt64NoTag(value);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) throws IOException {
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(fieldNumber, 2);
            writeMessageNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(final MessageLite value) throws IOException {
            writeUInt32NoTag(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(final int fieldNumber, final MessageLite value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeMessage(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(final ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                write(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            iri.m54771a(duplicate);
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(final int fieldNumber, final ByteString value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeBytes(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(final int fieldNumber, final String value) throws IOException {
            writeTag(fieldNumber, 2);
            writeStringNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String value) throws IOException {
            int position = this.f36975f.position();
            try {
                int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(value.length() * 3);
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(value.length());
                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                    int position2 = this.f36975f.position() + computeUInt32SizeNoTag2;
                    iri.m54775e(this.f36975f, position2);
                    m28709U(value);
                    int position3 = this.f36975f.position();
                    iri.m54775e(this.f36975f, position);
                    writeUInt32NoTag(position3 - position2);
                    iri.m54775e(this.f36975f, position3);
                } else {
                    writeUInt32NoTag(Utf8.m29662k(value));
                    m28709U(value);
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                iri.m54775e(this.f36975f, position);
                m28691K(value, e);
            } catch (IllegalArgumentException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(final int fieldNumber, final int wireType) throws IOException {
            writeUInt32NoTag(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(final int fieldNumber, final int value) throws IOException {
            writeTag(fieldNumber, 0);
            writeUInt32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int value) throws IOException {
            while ((value & (-128)) != 0) {
                try {
                    this.f36975f.put((byte) ((value & 127) | 128));
                    value >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new OutOfSpaceException(e);
                }
            }
            this.f36975f.put((byte) value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(final int fieldNumber, final long value) throws IOException {
            writeTag(fieldNumber, 0);
            writeUInt64NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long value) throws IOException {
            while (((-128) & value) != 0) {
                try {
                    this.f36975f.put((byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new OutOfSpaceException(e);
                }
            }
            this.f36975f.put((byte) value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(final int fieldNumber, final byte[] value, final int offset, final int length) throws IOException {
            writeTag(fieldNumber, 2);
            mo28693P(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) throws IOException {
            write(value);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) throws IOException {
            try {
                this.f36975f.put(value, offset, length);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(e);
            } catch (BufferOverflowException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) throws IOException {
            try {
                this.f36975f.put(value);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$h */
    /* loaded from: classes6.dex */
    public static final class C6666h extends CodedOutputStream {

        /* renamed from: e */
        public final ByteBuffer f36977e;

        /* renamed from: f */
        public final ByteBuffer f36978f;

        /* renamed from: g */
        public final long f36979g;

        /* renamed from: h */
        public final long f36980h;

        /* renamed from: i */
        public final long f36981i;

        /* renamed from: j */
        public final long f36982j;

        /* renamed from: k */
        public long f36983k;

        public C6666h(ByteBuffer buffer) {
            super();
            this.f36977e = buffer;
            this.f36978f = buffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            long m53756k = dun.m53756k(buffer);
            this.f36979g = m53756k;
            long position = buffer.position() + m53756k;
            this.f36980h = position;
            long limit = m53756k + buffer.limit();
            this.f36981i = limit;
            this.f36982j = limit - 10;
            this.f36983k = position;
        }

        /* renamed from: V */
        public static boolean m28710V() {
            return dun.m53731V();
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: P */
        public void mo28693P(byte[] value, int offset, int length) throws IOException {
            writeUInt32NoTag(length);
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: S */
        public void mo28696S(int fieldNumber, MessageLite value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 2);
            mo28697T(value, schema);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: T */
        public void mo28697T(MessageLite value, InterfaceC6889z schema) throws IOException {
            writeUInt32NoTag(((AbstractMessageLite) value).getSerializedSize(schema));
            schema.mo30371e(value, this.f36960a);
        }

        /* renamed from: U */
        public final int m28711U(long pos) {
            return (int) (pos - this.f36979g);
        }

        /* renamed from: W */
        public final void m28712W(long pos) {
            iri.m54775e(this.f36978f, m28711U(pos));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void flush() {
            iri.m54775e(this.f36977e, m28711U(this.f36983k));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int getTotalBytesWritten() {
            return (int) (this.f36983k - this.f36980h);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public int spaceLeft() {
            return (int) (this.f36981i - this.f36983k);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte value) throws IOException {
            long j = this.f36983k;
            if (j < this.f36981i) {
                this.f36983k = 1 + j;
                dun.m53745e0(j, value);
                return;
            }
            throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f36983k), Long.valueOf(this.f36981i), 1));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBool(int i, boolean z) throws IOException {
            writeTag(i, 0);
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int fieldNumber, byte[] value) throws IOException {
            writeByteArray(fieldNumber, value, 0, value.length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteBuffer(int fieldNumber, ByteBuffer value) throws IOException {
            writeTag(fieldNumber, 2);
            writeUInt32NoTag(value.capacity());
            writeRawBytes(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytes(int fieldNumber, ByteString value) throws IOException {
            writeTag(fieldNumber, 2);
            writeBytesNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeBytesNoTag(ByteString value) throws IOException {
            writeUInt32NoTag(value.size());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32(int fieldNumber, int value) throws IOException {
            writeTag(fieldNumber, 5);
            writeFixed32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed32NoTag(int value) throws IOException {
            this.f36978f.putInt(m28711U(this.f36983k), value);
            this.f36983k += 4;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64(int fieldNumber, long value) throws IOException {
            writeTag(fieldNumber, 1);
            writeFixed64NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeFixed64NoTag(long value) throws IOException {
            this.f36978f.putLong(m28711U(this.f36983k), value);
            this.f36983k += 8;
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32(int fieldNumber, int value) throws IOException {
            writeTag(fieldNumber, 0);
            writeInt32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeInt32NoTag(int value) throws IOException {
            if (value >= 0) {
                writeUInt32NoTag(value);
            } else {
                writeUInt64NoTag(value);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) throws IOException {
            write(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessage(int fieldNumber, MessageLite value) throws IOException {
            writeTag(fieldNumber, 2);
            writeMessageNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageNoTag(MessageLite value) throws IOException {
            writeUInt32NoTag(value.getSerializedSize());
            value.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeMessageSetExtension(int fieldNumber, MessageLite value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeMessage(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawBytes(ByteBuffer value) throws IOException {
            if (value.hasArray()) {
                write(value.array(), value.arrayOffset(), value.capacity());
                return;
            }
            ByteBuffer duplicate = value.duplicate();
            iri.m54771a(duplicate);
            write(duplicate);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeRawMessageSetExtension(int fieldNumber, ByteString value) throws IOException {
            writeTag(1, 3);
            writeUInt32(2, fieldNumber);
            writeBytes(3, value);
            writeTag(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeString(int fieldNumber, String value) throws IOException {
            writeTag(fieldNumber, 2);
            writeStringNoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeStringNoTag(String value) throws IOException {
            long j = this.f36983k;
            try {
                int computeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(value.length() * 3);
                int computeUInt32SizeNoTag2 = CodedOutputStream.computeUInt32SizeNoTag(value.length());
                if (computeUInt32SizeNoTag2 == computeUInt32SizeNoTag) {
                    int m28711U = m28711U(this.f36983k) + computeUInt32SizeNoTag2;
                    iri.m54775e(this.f36978f, m28711U);
                    Utf8.m29661j(value, this.f36978f);
                    int position = this.f36978f.position() - m28711U;
                    writeUInt32NoTag(position);
                    this.f36983k += position;
                } else {
                    int m29662k = Utf8.m29662k(value);
                    writeUInt32NoTag(m29662k);
                    m28712W(this.f36983k);
                    Utf8.m29661j(value, this.f36978f);
                    this.f36983k += m29662k;
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.f36983k = j;
                m28712W(j);
                m28691K(value, e);
            } catch (IllegalArgumentException e2) {
                throw new OutOfSpaceException(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new OutOfSpaceException(e3);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeTag(int fieldNumber, int wireType) throws IOException {
            writeUInt32NoTag(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32(int fieldNumber, int value) throws IOException {
            writeTag(fieldNumber, 0);
            writeUInt32NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt32NoTag(int value) throws IOException {
            if (this.f36983k <= this.f36982j) {
                while ((value & (-128)) != 0) {
                    long j = this.f36983k;
                    this.f36983k = j + 1;
                    dun.m53745e0(j, (byte) ((value & 127) | 128));
                    value >>>= 7;
                }
                long j2 = this.f36983k;
                this.f36983k = 1 + j2;
                dun.m53745e0(j2, (byte) value);
                return;
            }
            while (true) {
                long j3 = this.f36983k;
                if (j3 >= this.f36981i) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f36983k), Long.valueOf(this.f36981i), 1));
                }
                if ((value & (-128)) == 0) {
                    this.f36983k = 1 + j3;
                    dun.m53745e0(j3, (byte) value);
                    return;
                } else {
                    this.f36983k = j3 + 1;
                    dun.m53745e0(j3, (byte) ((value & 127) | 128));
                    value >>>= 7;
                }
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64(int fieldNumber, long value) throws IOException {
            writeTag(fieldNumber, 0);
            writeUInt64NoTag(value);
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeUInt64NoTag(long value) throws IOException {
            if (this.f36983k <= this.f36982j) {
                while ((value & (-128)) != 0) {
                    long j = this.f36983k;
                    this.f36983k = j + 1;
                    dun.m53745e0(j, (byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                }
                long j2 = this.f36983k;
                this.f36983k = 1 + j2;
                dun.m53745e0(j2, (byte) value);
                return;
            }
            while (true) {
                long j3 = this.f36983k;
                if (j3 >= this.f36981i) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f36983k), Long.valueOf(this.f36981i), 1));
                }
                if ((value & (-128)) == 0) {
                    this.f36983k = 1 + j3;
                    dun.m53745e0(j3, (byte) value);
                    return;
                } else {
                    this.f36983k = j3 + 1;
                    dun.m53745e0(j3, (byte) ((((int) value) & 127) | 128));
                    value >>>= 7;
                }
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        public void writeByteArray(int fieldNumber, byte[] value, int offset, int length) throws IOException {
            writeTag(fieldNumber, 2);
            mo28693P(value, offset, length);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) throws IOException {
            write(value);
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) throws IOException {
            if (value != null && offset >= 0 && length >= 0 && value.length - length >= offset) {
                long j = length;
                long j2 = this.f36981i - j;
                long j3 = this.f36983k;
                if (j2 >= j3) {
                    dun.m53768q(value, offset, j3, j);
                    this.f36983k += j;
                    return;
                }
            }
            if (value == null) {
                throw new NullPointerException("value");
            }
            throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f36983k), Long.valueOf(this.f36981i), Integer.valueOf(length)));
        }

        @Override // com.google.protobuf.CodedOutputStream, com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) throws IOException {
            try {
                int remaining = value.remaining();
                m28712W(this.f36983k);
                this.f36978f.put(value);
                this.f36983k += remaining;
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }
    }

    @Deprecated
    /* renamed from: E */
    public static int m28682E(final int fieldNumber, final MessageLite value, InterfaceC6889z schema) {
        return (computeTagSize(fieldNumber) * 2) + m28683F(value, schema);
    }

    @Deprecated
    /* renamed from: F */
    public static int m28683F(final MessageLite value, InterfaceC6889z schema) {
        return ((AbstractMessageLite) value).getSerializedSize(schema);
    }

    /* renamed from: G */
    public static int m28684G(int fieldLength) {
        return computeUInt32SizeNoTag(fieldLength) + fieldLength;
    }

    /* renamed from: H */
    public static int m28685H(final int fieldNumber, final MessageLite value, final InterfaceC6889z schema) {
        return computeTagSize(fieldNumber) + m28686I(value, schema);
    }

    /* renamed from: I */
    public static int m28686I(final MessageLite value, final InterfaceC6889z schema) {
        return m28684G(((AbstractMessageLite) value).getSerializedSize(schema));
    }

    /* renamed from: J */
    public static int m28687J(int dataLength) {
        if (dataLength > 4096) {
            return 4096;
        }
        return dataLength;
    }

    /* renamed from: M */
    public static CodedOutputStream m28688M(ByteOutput byteOutput, int bufferSize) {
        if (bufferSize >= 0) {
            return new C6662d(byteOutput, bufferSize);
        }
        throw new IllegalArgumentException("bufferSize must be positive");
    }

    /* renamed from: N */
    public static CodedOutputStream m28689N(ByteBuffer buffer) {
        return new C6665g(buffer);
    }

    /* renamed from: O */
    public static CodedOutputStream m28690O(ByteBuffer buffer) {
        return new C6666h(buffer);
    }

    public static int computeBoolSize(final int fieldNumber, final boolean value) {
        return computeTagSize(fieldNumber) + computeBoolSizeNoTag(value);
    }

    public static int computeBoolSizeNoTag(final boolean unused) {
        return 1;
    }

    public static int computeByteArraySize(final int fieldNumber, final byte[] value) {
        return computeTagSize(fieldNumber) + computeByteArraySizeNoTag(value);
    }

    public static int computeByteArraySizeNoTag(final byte[] value) {
        return m28684G(value.length);
    }

    public static int computeByteBufferSize(final int fieldNumber, final ByteBuffer value) {
        return computeTagSize(fieldNumber) + computeByteBufferSizeNoTag(value);
    }

    public static int computeByteBufferSizeNoTag(final ByteBuffer value) {
        return m28684G(value.capacity());
    }

    public static int computeBytesSize(final int fieldNumber, final ByteString value) {
        return computeTagSize(fieldNumber) + computeBytesSizeNoTag(value);
    }

    public static int computeBytesSizeNoTag(final ByteString value) {
        return m28684G(value.size());
    }

    public static int computeDoubleSize(final int fieldNumber, final double value) {
        return computeTagSize(fieldNumber) + computeDoubleSizeNoTag(value);
    }

    public static int computeDoubleSizeNoTag(final double unused) {
        return 8;
    }

    public static int computeEnumSize(final int fieldNumber, final int value) {
        return computeTagSize(fieldNumber) + computeEnumSizeNoTag(value);
    }

    public static int computeEnumSizeNoTag(final int value) {
        return computeInt32SizeNoTag(value);
    }

    public static int computeFixed32Size(final int fieldNumber, final int value) {
        return computeTagSize(fieldNumber) + computeFixed32SizeNoTag(value);
    }

    public static int computeFixed32SizeNoTag(final int unused) {
        return 4;
    }

    public static int computeFixed64Size(final int fieldNumber, final long value) {
        return computeTagSize(fieldNumber) + computeFixed64SizeNoTag(value);
    }

    public static int computeFixed64SizeNoTag(final long unused) {
        return 8;
    }

    public static int computeFloatSize(final int fieldNumber, final float value) {
        return computeTagSize(fieldNumber) + computeFloatSizeNoTag(value);
    }

    public static int computeFloatSizeNoTag(final float unused) {
        return 4;
    }

    @Deprecated
    public static int computeGroupSize(final int fieldNumber, final MessageLite value) {
        return (computeTagSize(fieldNumber) * 2) + value.getSerializedSize();
    }

    @vki(replacement = "value.getSerializedSize()")
    @Deprecated
    public static int computeGroupSizeNoTag(final MessageLite value) {
        return value.getSerializedSize();
    }

    public static int computeInt32Size(final int fieldNumber, final int value) {
        return computeTagSize(fieldNumber) + computeInt32SizeNoTag(value);
    }

    public static int computeInt32SizeNoTag(final int value) {
        if (value >= 0) {
            return computeUInt32SizeNoTag(value);
        }
        return 10;
    }

    public static int computeInt64Size(final int fieldNumber, final long value) {
        return computeTagSize(fieldNumber) + computeInt64SizeNoTag(value);
    }

    public static int computeInt64SizeNoTag(final long value) {
        return computeUInt64SizeNoTag(value);
    }

    public static int computeLazyFieldMessageSetExtensionSize(final int fieldNumber, final LazyFieldLite value) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, fieldNumber) + computeLazyFieldSize(3, value);
    }

    public static int computeLazyFieldSize(final int fieldNumber, final LazyFieldLite value) {
        return computeTagSize(fieldNumber) + computeLazyFieldSizeNoTag(value);
    }

    public static int computeLazyFieldSizeNoTag(final LazyFieldLite value) {
        return m28684G(value.getSerializedSize());
    }

    public static int computeMessageSetExtensionSize(final int fieldNumber, final MessageLite value) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, fieldNumber) + computeMessageSize(3, value);
    }

    public static int computeMessageSize(final int fieldNumber, final MessageLite value) {
        return computeTagSize(fieldNumber) + computeMessageSizeNoTag(value);
    }

    public static int computeMessageSizeNoTag(final MessageLite value) {
        return m28684G(value.getSerializedSize());
    }

    public static int computeRawMessageSetExtensionSize(final int fieldNumber, final ByteString value) {
        return (computeTagSize(1) * 2) + computeUInt32Size(2, fieldNumber) + computeBytesSize(3, value);
    }

    @vki(imports = {"com.google.protobuf.CodedOutputStream"}, replacement = "CodedOutputStream.computeUInt32SizeNoTag(value)")
    @Deprecated
    public static int computeRawVarint32Size(final int value) {
        return computeUInt32SizeNoTag(value);
    }

    @vki(imports = {"com.google.protobuf.CodedOutputStream"}, replacement = "CodedOutputStream.computeUInt64SizeNoTag(value)")
    @Deprecated
    public static int computeRawVarint64Size(long value) {
        return computeUInt64SizeNoTag(value);
    }

    public static int computeSFixed32Size(final int fieldNumber, final int value) {
        return computeTagSize(fieldNumber) + computeSFixed32SizeNoTag(value);
    }

    public static int computeSFixed32SizeNoTag(final int unused) {
        return 4;
    }

    public static int computeSFixed64Size(final int fieldNumber, final long value) {
        return computeTagSize(fieldNumber) + computeSFixed64SizeNoTag(value);
    }

    public static int computeSFixed64SizeNoTag(final long unused) {
        return 8;
    }

    public static int computeSInt32Size(final int fieldNumber, final int value) {
        return computeTagSize(fieldNumber) + computeSInt32SizeNoTag(value);
    }

    public static int computeSInt32SizeNoTag(final int value) {
        return computeUInt32SizeNoTag(encodeZigZag32(value));
    }

    public static int computeSInt64Size(final int fieldNumber, final long value) {
        return computeTagSize(fieldNumber) + computeSInt64SizeNoTag(value);
    }

    public static int computeSInt64SizeNoTag(final long value) {
        return computeUInt64SizeNoTag(encodeZigZag64(value));
    }

    public static int computeStringSize(final int fieldNumber, final String value) {
        return computeTagSize(fieldNumber) + computeStringSizeNoTag(value);
    }

    public static int computeStringSizeNoTag(final String value) {
        int length;
        try {
            length = Utf8.m29662k(value);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = value.getBytes(Internal.f37667b).length;
        }
        return m28684G(length);
    }

    public static int computeTagSize(final int fieldNumber) {
        return computeUInt32SizeNoTag(WireFormat.m29722a(fieldNumber, 0));
    }

    public static int computeUInt32Size(final int fieldNumber, final int value) {
        return computeTagSize(fieldNumber) + computeUInt32SizeNoTag(value);
    }

    public static int computeUInt32SizeNoTag(final int value) {
        if ((value & (-128)) == 0) {
            return 1;
        }
        if ((value & TIFFTag.f97946g) == 0) {
            return 2;
        }
        if (((-2097152) & value) == 0) {
            return 3;
        }
        return (value & (-268435456)) == 0 ? 4 : 5;
    }

    public static int computeUInt64Size(final int fieldNumber, final long value) {
        return computeTagSize(fieldNumber) + computeUInt64SizeNoTag(value);
    }

    public static int computeUInt64SizeNoTag(long value) {
        int i;
        if (((-128) & value) == 0) {
            return 1;
        }
        if (value < 0) {
            return 10;
        }
        if (((-34359738368L) & value) != 0) {
            value >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if ((CoroutineScheduler.f98641q & value) != 0) {
            i += 2;
            value >>>= 14;
        }
        return (value & (-16384)) != 0 ? i + 1 : i;
    }

    public static int encodeZigZag32(final int n) {
        return (n >> 31) ^ (n << 1);
    }

    public static long encodeZigZag64(final long n) {
        return (n >> 63) ^ (n << 1);
    }

    public static CodedOutputStream newInstance(final OutputStream output) {
        return newInstance(output, 4096);
    }

    /* renamed from: K */
    public final void m28691K(String value, Utf8.UnpairedSurrogateException cause) throws IOException {
        f36958c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) cause);
        byte[] bytes = value.getBytes(Internal.f37667b);
        try {
            writeUInt32NoTag(bytes.length);
            writeLazy(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new OutOfSpaceException(e);
        }
    }

    /* renamed from: L */
    public boolean m28692L() {
        return this.f36961b;
    }

    /* renamed from: P */
    public abstract void mo28693P(final byte[] value, final int offset, final int length) throws IOException;

    @Deprecated
    /* renamed from: Q */
    public final void m28694Q(final int fieldNumber, final MessageLite value, InterfaceC6889z schema) throws IOException {
        writeTag(fieldNumber, 3);
        m28695R(value, schema);
        writeTag(fieldNumber, 4);
    }

    @Deprecated
    /* renamed from: R */
    public final void m28695R(final MessageLite value, InterfaceC6889z schema) throws IOException {
        schema.mo30371e(value, this.f36960a);
    }

    /* renamed from: S */
    public abstract void mo28696S(final int fieldNumber, final MessageLite value, InterfaceC6889z schema) throws IOException;

    /* renamed from: T */
    public abstract void mo28697T(final MessageLite value, InterfaceC6889z schema) throws IOException;

    public final void checkNoSpaceLeft() {
        if (spaceLeft() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void flush() throws IOException;

    public abstract int getTotalBytesWritten();

    public abstract int spaceLeft();

    public void useDeterministicSerialization() {
        this.f36961b = true;
    }

    @Override // com.google.protobuf.ByteOutput
    public abstract void write(byte value) throws IOException;

    @Override // com.google.protobuf.ByteOutput
    public abstract void write(ByteBuffer value) throws IOException;

    @Override // com.google.protobuf.ByteOutput
    public abstract void write(byte[] value, int offset, int length) throws IOException;

    public abstract void writeBool(int fieldNumber, boolean value) throws IOException;

    public final void writeBoolNoTag(boolean z) throws IOException {
        write(z ? (byte) 1 : (byte) 0);
    }

    public abstract void writeByteArray(int fieldNumber, byte[] value) throws IOException;

    public abstract void writeByteArray(int fieldNumber, byte[] value, int offset, int length) throws IOException;

    public final void writeByteArrayNoTag(final byte[] value) throws IOException {
        mo28693P(value, 0, value.length);
    }

    public abstract void writeByteBuffer(int fieldNumber, ByteBuffer value) throws IOException;

    public abstract void writeBytes(int fieldNumber, ByteString value) throws IOException;

    public abstract void writeBytesNoTag(final ByteString value) throws IOException;

    public final void writeDouble(final int fieldNumber, final double value) throws IOException {
        writeFixed64(fieldNumber, Double.doubleToRawLongBits(value));
    }

    public final void writeDoubleNoTag(final double value) throws IOException {
        writeFixed64NoTag(Double.doubleToRawLongBits(value));
    }

    public final void writeEnum(final int fieldNumber, final int value) throws IOException {
        writeInt32(fieldNumber, value);
    }

    public final void writeEnumNoTag(final int value) throws IOException {
        writeInt32NoTag(value);
    }

    public abstract void writeFixed32(int fieldNumber, int value) throws IOException;

    public abstract void writeFixed32NoTag(int value) throws IOException;

    public abstract void writeFixed64(int fieldNumber, long value) throws IOException;

    public abstract void writeFixed64NoTag(long value) throws IOException;

    public final void writeFloat(final int fieldNumber, final float value) throws IOException {
        writeFixed32(fieldNumber, Float.floatToRawIntBits(value));
    }

    public final void writeFloatNoTag(final float value) throws IOException {
        writeFixed32NoTag(Float.floatToRawIntBits(value));
    }

    @Deprecated
    public final void writeGroup(final int fieldNumber, final MessageLite value) throws IOException {
        writeTag(fieldNumber, 3);
        writeGroupNoTag(value);
        writeTag(fieldNumber, 4);
    }

    @Deprecated
    public final void writeGroupNoTag(final MessageLite value) throws IOException {
        value.writeTo(this);
    }

    public abstract void writeInt32(int fieldNumber, int value) throws IOException;

    public abstract void writeInt32NoTag(final int value) throws IOException;

    public final void writeInt64(final int fieldNumber, final long value) throws IOException {
        writeUInt64(fieldNumber, value);
    }

    public final void writeInt64NoTag(final long value) throws IOException {
        writeUInt64NoTag(value);
    }

    @Override // com.google.protobuf.ByteOutput
    public abstract void writeLazy(ByteBuffer value) throws IOException;

    @Override // com.google.protobuf.ByteOutput
    public abstract void writeLazy(byte[] value, int offset, int length) throws IOException;

    public abstract void writeMessage(final int fieldNumber, final MessageLite value) throws IOException;

    public abstract void writeMessageNoTag(final MessageLite value) throws IOException;

    public abstract void writeMessageSetExtension(final int fieldNumber, final MessageLite value) throws IOException;

    public final void writeRawByte(final byte value) throws IOException {
        write(value);
    }

    public abstract void writeRawBytes(final ByteBuffer value) throws IOException;

    public final void writeRawBytes(final byte[] value) throws IOException {
        write(value, 0, value.length);
    }

    @vki(replacement = "this.writeFixed32NoTag(value)")
    @Deprecated
    public final void writeRawLittleEndian32(final int value) throws IOException {
        writeFixed32NoTag(value);
    }

    @vki(replacement = "this.writeFixed64NoTag(value)")
    @Deprecated
    public final void writeRawLittleEndian64(final long value) throws IOException {
        writeFixed64NoTag(value);
    }

    public abstract void writeRawMessageSetExtension(final int fieldNumber, final ByteString value) throws IOException;

    @vki(replacement = "this.writeUInt32NoTag(value)")
    @Deprecated
    public final void writeRawVarint32(int value) throws IOException {
        writeUInt32NoTag(value);
    }

    @vki(replacement = "this.writeUInt64NoTag(value)")
    @Deprecated
    public final void writeRawVarint64(long value) throws IOException {
        writeUInt64NoTag(value);
    }

    public final void writeSFixed32(final int fieldNumber, final int value) throws IOException {
        writeFixed32(fieldNumber, value);
    }

    public final void writeSFixed32NoTag(final int value) throws IOException {
        writeFixed32NoTag(value);
    }

    public final void writeSFixed64(final int fieldNumber, final long value) throws IOException {
        writeFixed64(fieldNumber, value);
    }

    public final void writeSFixed64NoTag(final long value) throws IOException {
        writeFixed64NoTag(value);
    }

    public final void writeSInt32(final int fieldNumber, final int value) throws IOException {
        writeUInt32(fieldNumber, encodeZigZag32(value));
    }

    public final void writeSInt32NoTag(final int value) throws IOException {
        writeUInt32NoTag(encodeZigZag32(value));
    }

    public final void writeSInt64(final int fieldNumber, final long value) throws IOException {
        writeUInt64(fieldNumber, encodeZigZag64(value));
    }

    public final void writeSInt64NoTag(final long value) throws IOException {
        writeUInt64NoTag(encodeZigZag64(value));
    }

    public abstract void writeString(int fieldNumber, String value) throws IOException;

    public abstract void writeStringNoTag(String value) throws IOException;

    public abstract void writeTag(int fieldNumber, int wireType) throws IOException;

    public abstract void writeUInt32(int fieldNumber, int value) throws IOException;

    public abstract void writeUInt32NoTag(int value) throws IOException;

    public abstract void writeUInt64(int fieldNumber, long value) throws IOException;

    public abstract void writeUInt64NoTag(long value) throws IOException;

    public CodedOutputStream() {
    }

    public static CodedOutputStream newInstance(final OutputStream output, final int bufferSize) {
        return new C6664f(output, bufferSize);
    }

    public final void writeRawByte(final int value) throws IOException {
        write((byte) value);
    }

    public final void writeRawBytes(final byte[] value, int offset, int length) throws IOException {
        write(value, offset, length);
    }

    public static CodedOutputStream newInstance(final byte[] flatArray) {
        return newInstance(flatArray, 0, flatArray.length);
    }

    public final void writeRawBytes(final ByteString value) throws IOException {
        value.writeTo(this);
    }

    public static CodedOutputStream newInstance(final byte[] flatArray, final int offset, final int length) {
        return new C6661c(flatArray, offset, length);
    }

    public static CodedOutputStream newInstance(ByteBuffer buffer) {
        if (buffer.hasArray()) {
            return new C6663e(buffer);
        }
        if (buffer.isDirect() && !buffer.isReadOnly()) {
            if (C6666h.m28710V()) {
                return m28690O(buffer);
            }
            return m28689N(buffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    @Deprecated
    public static CodedOutputStream newInstance(ByteBuffer byteBuffer, int unused) {
        return newInstance(byteBuffer);
    }
}
