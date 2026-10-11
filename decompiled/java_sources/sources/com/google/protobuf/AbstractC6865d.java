package com.google.protobuf;

import com.caverock.androidsvg.SVG;
import com.google.protobuf.Internal;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.Utf8;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import com.sunia.HTREnginev2.AbstractC13849hv;
import com.sunia.HTREnginev2.AbstractC14537v9;
import com.sunia.HTREnginev2.bnd;
import com.sunia.HTREnginev2.d9l;
import com.sunia.HTREnginev2.dun;
import com.sunia.HTREnginev2.htd;
import com.sunia.HTREnginev2.iri;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import javax.imageio.plugins.tiff.TIFFTag;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
import net.p110sf.saxon.ma.json.JsonParser;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;

@htd
/* renamed from: com.google.protobuf.d */
/* loaded from: classes6.dex */
public abstract class AbstractC6865d extends ByteOutput implements Writer {

    /* renamed from: e */
    public static final int f38067e = 4096;

    /* renamed from: f */
    public static final int f38068f = 1;

    /* renamed from: g */
    public static final int f38069g = 2;

    /* renamed from: a */
    public final AbstractC13849hv f38070a;

    /* renamed from: b */
    public final int f38071b;

    /* renamed from: c */
    public final ArrayDeque<AbstractC14537v9> f38072c;

    /* renamed from: d */
    public int f38073d;

    /* renamed from: com.google.protobuf.d$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38074a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f38074a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38074a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f38074a[WireFormat.FieldType.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f38074a[WireFormat.FieldType.INT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f38074a[WireFormat.FieldType.INT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f38074a[WireFormat.FieldType.SFIXED32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f38074a[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f38074a[WireFormat.FieldType.SINT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f38074a[WireFormat.FieldType.SINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f38074a[WireFormat.FieldType.STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f38074a[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f38074a[WireFormat.FieldType.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f38074a[WireFormat.FieldType.FLOAT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f38074a[WireFormat.FieldType.DOUBLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f38074a[WireFormat.FieldType.MESSAGE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f38074a[WireFormat.FieldType.BYTES.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f38074a[WireFormat.FieldType.ENUM.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* renamed from: com.google.protobuf.d$b */
    /* loaded from: classes6.dex */
    public static final class b extends AbstractC6865d {

        /* renamed from: h */
        public ByteBuffer f38075h;

        /* renamed from: i */
        public int f38076i;

        /* renamed from: j */
        public int f38077j;

        public b(AbstractC13849hv alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            m30081C0();
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: A0 */
        public void mo30043A0(long value) {
            switch (AbstractC6865d.m30031F(value)) {
                case 1:
                    m30094P0(value);
                    return;
                case 2:
                    m30099U0(value);
                    return;
                case 3:
                    m30098T0(value);
                    return;
                case 4:
                    m30092N0(value);
                    return;
                case 5:
                    m30091M0(value);
                    return;
                case 6:
                    m30096R0(value);
                    return;
                case 7:
                    m30095Q0(value);
                    return;
                case 8:
                    m30089K0(value);
                    return;
                case 9:
                    m30093O0(value);
                    return;
                case 10:
                    m30097S0(value);
                    return;
                default:
                    return;
            }
        }

        @Override // com.google.protobuf.Writer
        @Deprecated
        /* renamed from: B */
        public void mo29725B(int fieldNumber, Object value) throws IOException {
            writeTag(fieldNumber, 4);
            d9l.m53616a().m53626k(value, this);
            writeTag(fieldNumber, 3);
        }

        /* renamed from: B0 */
        public final int m30080B0() {
            return this.f38076i - this.f38077j;
        }

        /* renamed from: C0 */
        public final void m30081C0() {
            m30083E0(m30046J());
        }

        /* renamed from: D0 */
        public final void m30082D0(int capacity) {
            m30083E0(m30047K(capacity));
        }

        /* renamed from: E0 */
        public final void m30083E0(AbstractC14537v9 allocatedBuffer) {
            if (!allocatedBuffer.mo57764d()) {
                throw new RuntimeException("Allocated buffer does not have NIO buffer");
            }
            ByteBuffer mo57766f = allocatedBuffer.mo57766f();
            if (!mo57766f.isDirect()) {
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            mo30045G();
            this.f38072c.addFirst(allocatedBuffer);
            this.f38075h = mo57766f;
            iri.m54773c(mo57766f, mo57766f.capacity());
            iri.m54775e(this.f38075h, 0);
            this.f38075h.order(ByteOrder.LITTLE_ENDIAN);
            int limit = this.f38075h.limit() - 1;
            this.f38076i = limit;
            this.f38077j = limit;
        }

        /* renamed from: F0 */
        public final void m30084F0(int value) {
            ByteBuffer byteBuffer = this.f38075h;
            int i = this.f38077j;
            this.f38077j = i - 1;
            byteBuffer.put(i, (byte) (value >>> 28));
            int i2 = this.f38077j - 4;
            this.f38077j = i2;
            this.f38075h.putInt(i2 + 1, (value & 127) | 128 | ((((value >>> 21) & 127) | 128) << 24) | ((((value >>> 14) & 127) | 128) << 16) | ((((value >>> 7) & 127) | 128) << 8));
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: G */
        public void mo30045G() {
            if (this.f38075h != null) {
                this.f38073d += m30080B0();
                iri.m54775e(this.f38075h, this.f38077j + 1);
                this.f38075h = null;
                this.f38077j = 0;
                this.f38076i = 0;
            }
        }

        /* renamed from: G0 */
        public final void m30085G0(int value) {
            int i = this.f38077j - 4;
            this.f38077j = i;
            this.f38075h.putInt(i + 1, (value & 127) | 128 | ((266338304 & value) << 3) | (((2080768 & value) | 2097152) << 2) | (((value & 16256) | 16384) << 1));
        }

        /* renamed from: H0 */
        public final void m30086H0(int value) {
            ByteBuffer byteBuffer = this.f38075h;
            int i = this.f38077j;
            this.f38077j = i - 1;
            byteBuffer.put(i, (byte) value);
        }

        /* renamed from: I0 */
        public final void m30087I0(int value) {
            int i = this.f38077j - 3;
            this.f38077j = i;
            this.f38075h.putInt(i, (((value & 127) | 128) << 8) | ((2080768 & value) << 10) | (((value & 16256) | 16384) << 9));
        }

        /* renamed from: J0 */
        public final void m30088J0(int value) {
            int i = this.f38077j - 2;
            this.f38077j = i;
            this.f38075h.putShort(i + 1, (short) ((value & 127) | 128 | ((value & 16256) << 1)));
        }

        /* renamed from: K0 */
        public final void m30089K0(long value) {
            int i = this.f38077j - 8;
            this.f38077j = i;
            this.f38075h.putLong(i + 1, (value & 127) | 128 | ((71494644084506624L & value) << 7) | (((558551906910208L & value) | com.alibaba.fastjson2.codec.FieldInfo.UNWRAPPED_MASK) << 6) | (((4363686772736L & value) | 4398046511104L) << 5) | (((34091302912L & value) | SVG.f15814V) << 4) | (((266338304 & value) | SVG.f15807O) << 3) | (((2080768 & value) | 2097152) << 2) | (((16256 & value) | 16384) << 1));
        }

        /* renamed from: L0 */
        public final void m30090L0(long value) {
            int i = this.f38077j - 8;
            this.f38077j = i;
            this.f38075h.putLong(i + 1, (value & 127) | 128 | (((71494644084506624L & value) | com.alibaba.fastjson2.codec.FieldInfo.READ_ONLY) << 7) | (((558551906910208L & value) | com.alibaba.fastjson2.codec.FieldInfo.UNWRAPPED_MASK) << 6) | (((4363686772736L & value) | 4398046511104L) << 5) | (((34091302912L & value) | SVG.f15814V) << 4) | (((266338304 & value) | SVG.f15807O) << 3) | (((2080768 & value) | 2097152) << 2) | (((16256 & value) | 16384) << 1));
        }

        /* renamed from: M0 */
        public final void m30091M0(long value) {
            int i = this.f38077j - 5;
            this.f38077j = i;
            this.f38075h.putLong(i - 2, (((value & 127) | 128) << 24) | ((34091302912L & value) << 28) | (((266338304 & value) | SVG.f15807O) << 27) | (((2080768 & value) | 2097152) << 26) | (((16256 & value) | 16384) << 25));
        }

        /* renamed from: N0 */
        public final void m30092N0(long value) {
            m30085G0((int) value);
        }

        /* renamed from: O0 */
        public final void m30093O0(long value) {
            ByteBuffer byteBuffer = this.f38075h;
            int i = this.f38077j;
            this.f38077j = i - 1;
            byteBuffer.put(i, (byte) (value >>> 56));
            m30090L0(value & 72057594037927935L);
        }

        /* renamed from: P0 */
        public final void m30094P0(long value) {
            m30086H0((int) value);
        }

        /* renamed from: Q0 */
        public final void m30095Q0(long value) {
            int i = this.f38077j - 7;
            this.f38077j = i;
            this.f38075h.putLong(i, (((value & 127) | 128) << 8) | ((558551906910208L & value) << 14) | (((4363686772736L & value) | 4398046511104L) << 13) | (((34091302912L & value) | SVG.f15814V) << 12) | (((266338304 & value) | SVG.f15807O) << 11) | (((2080768 & value) | 2097152) << 10) | (((16256 & value) | 16384) << 9));
        }

        /* renamed from: R0 */
        public final void m30096R0(long value) {
            int i = this.f38077j - 6;
            this.f38077j = i;
            this.f38075h.putLong(i - 1, (((value & 127) | 128) << 16) | ((4363686772736L & value) << 21) | (((34091302912L & value) | SVG.f15814V) << 20) | (((266338304 & value) | SVG.f15807O) << 19) | (((2080768 & value) | 2097152) << 18) | (((16256 & value) | 16384) << 17));
        }

        /* renamed from: S0 */
        public final void m30097S0(long value) {
            ByteBuffer byteBuffer = this.f38075h;
            int i = this.f38077j;
            this.f38077j = i - 1;
            byteBuffer.put(i, (byte) (value >>> 63));
            ByteBuffer byteBuffer2 = this.f38075h;
            int i2 = this.f38077j;
            this.f38077j = i2 - 1;
            byteBuffer2.put(i2, (byte) (((value >>> 56) & 127) | 128));
            m30090L0(value & 72057594037927935L);
        }

        /* renamed from: T0 */
        public final void m30098T0(long value) {
            m30087I0((int) value);
        }

        /* renamed from: U0 */
        public final void m30099U0(long value) {
            m30088J0((int) value);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: V */
        public void mo30050V(int size) {
            if (spaceLeft() < size) {
                m30082D0(size);
            }
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: W */
        public void mo30051W(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: b0 */
        public void mo30056b0(int value) {
            int i = this.f38077j - 4;
            this.f38077j = i;
            this.f38075h.putInt(i + 1, value);
        }

        @Override // com.google.protobuf.Writer
        @Deprecated
        /* renamed from: e */
        public void mo29731e(int fieldNumber) {
            writeTag(fieldNumber, 4);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: e0 */
        public void mo30059e0(long value) {
            int i = this.f38077j - 8;
            this.f38077j = i;
            this.f38075h.putLong(i + 1, value);
        }

        @Override // com.google.protobuf.AbstractC6865d
        public int getTotalBytesWritten() {
            return this.f38073d + m30080B0();
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: h */
        public void mo29734h(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 4);
            schema.mo30371e(value, this);
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: j0 */
        public void mo30064j0(int value) {
            if (value >= 0) {
                mo30079z0(value);
            } else {
                mo30043A0(value);
            }
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: k */
        public void mo29737k(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.mo30371e(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: o0 */
        public void mo30068o0(int value) {
            mo30079z0(CodedOutputStream.encodeZigZag32(value));
        }

        @Override // com.google.protobuf.Writer
        @Deprecated
        /* renamed from: r */
        public void mo29744r(int fieldNumber) {
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: r0 */
        public void mo30071r0(long value) {
            mo30043A0(CodedOutputStream.encodeZigZag64(value));
        }

        public final int spaceLeft() {
            return this.f38077j + 1;
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: u0 */
        public void mo30074u0(String in) {
            int i;
            int i2;
            int i3;
            char charAt;
            mo30050V(in.length());
            int length = in.length() - 1;
            this.f38077j -= length;
            while (length >= 0 && (charAt = in.charAt(length)) < 128) {
                this.f38075h.put(this.f38077j + length, (byte) charAt);
                length--;
            }
            if (length == -1) {
                this.f38077j--;
                return;
            }
            this.f38077j += length;
            while (length >= 0) {
                char charAt2 = in.charAt(length);
                if (charAt2 < 128 && (i3 = this.f38077j) >= 0) {
                    ByteBuffer byteBuffer = this.f38075h;
                    this.f38077j = i3 - 1;
                    byteBuffer.put(i3, (byte) charAt2);
                } else if (charAt2 < 2048 && (i2 = this.f38077j) > 0) {
                    ByteBuffer byteBuffer2 = this.f38075h;
                    this.f38077j = i2 - 1;
                    byteBuffer2.put(i2, (byte) ((charAt2 & '?') | 128));
                    ByteBuffer byteBuffer3 = this.f38075h;
                    int i4 = this.f38077j;
                    this.f38077j = i4 - 1;
                    byteBuffer3.put(i4, (byte) ((charAt2 >>> 6) | HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT));
                } else if ((charAt2 < 55296 || 57343 < charAt2) && (i = this.f38077j) > 1) {
                    ByteBuffer byteBuffer4 = this.f38075h;
                    this.f38077j = i - 1;
                    byteBuffer4.put(i, (byte) ((charAt2 & '?') | 128));
                    ByteBuffer byteBuffer5 = this.f38075h;
                    int i5 = this.f38077j;
                    this.f38077j = i5 - 1;
                    byteBuffer5.put(i5, (byte) (((charAt2 >>> 6) & 63) | 128));
                    ByteBuffer byteBuffer6 = this.f38075h;
                    int i6 = this.f38077j;
                    this.f38077j = i6 - 1;
                    byteBuffer6.put(i6, (byte) ((charAt2 >>> '\f') | JsonParser.DUPLICATES_SPECIFIED));
                } else {
                    if (this.f38077j > 2) {
                        if (length != 0) {
                            char charAt3 = in.charAt(length - 1);
                            if (Character.isSurrogatePair(charAt3, charAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(charAt3, charAt2);
                                ByteBuffer byteBuffer7 = this.f38075h;
                                int i7 = this.f38077j;
                                this.f38077j = i7 - 1;
                                byteBuffer7.put(i7, (byte) ((codePoint & 63) | 128));
                                ByteBuffer byteBuffer8 = this.f38075h;
                                int i8 = this.f38077j;
                                this.f38077j = i8 - 1;
                                byteBuffer8.put(i8, (byte) (((codePoint >>> 6) & 63) | 128));
                                ByteBuffer byteBuffer9 = this.f38075h;
                                int i9 = this.f38077j;
                                this.f38077j = i9 - 1;
                                byteBuffer9.put(i9, (byte) (((codePoint >>> 12) & 63) | 128));
                                ByteBuffer byteBuffer10 = this.f38075h;
                                int i10 = this.f38077j;
                                this.f38077j = i10 - 1;
                                byteBuffer10.put(i10, (byte) ((codePoint >>> 18) | 240));
                            }
                        }
                        throw new Utf8.UnpairedSurrogateException(length - 1, length);
                    }
                    mo30050V(length);
                    length++;
                }
                length--;
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte value) {
            ByteBuffer byteBuffer = this.f38075h;
            int i = this.f38077j;
            this.f38077j = i - 1;
            byteBuffer.put(i, value);
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) {
            mo30050V(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int fieldNumber, ByteString value) {
            try {
                value.writeToReverse(this);
                mo30050V(10);
                mo30079z0(value.size());
                writeTag(fieldNumber, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int fieldNumber, int value) {
            mo30050V(9);
            mo30056b0(value);
            writeTag(fieldNumber, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int fieldNumber, long value) {
            mo30050V(13);
            mo30059e0(value);
            writeTag(fieldNumber, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int fieldNumber, int value) {
            mo30050V(15);
            mo30064j0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) {
            if (spaceLeft() < length) {
                this.f38073d += length;
                this.f38072c.addFirst(AbstractC14537v9.m57759l(value, offset, length));
                m30081C0();
            } else {
                int i = this.f38077j - length;
                this.f38077j = i;
                iri.m54775e(this.f38075h, i + 1);
                this.f38075h.put(value, offset, length);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int fieldNumber, int value) {
            mo30050V(10);
            mo30068o0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int fieldNumber, long value) {
            mo30050V(15);
            mo30071r0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int fieldNumber, String value) {
            int totalBytesWritten = getTotalBytesWritten();
            mo30074u0(value);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        public void writeTag(int fieldNumber, int wireType) {
            mo30079z0(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int fieldNumber, int value) {
            mo30050V(10);
            mo30079z0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int fieldNumber, long value) {
            mo30050V(15);
            mo30043A0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: z */
        public void mo29752z(int fieldNumber, Object value) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            d9l.m53616a().m53626k(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: z0 */
        public void mo30079z0(int value) {
            if ((value & (-128)) == 0) {
                m30086H0(value);
                return;
            }
            if ((value & TIFFTag.f97946g) == 0) {
                m30088J0(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                m30087I0(value);
            } else if (((-268435456) & value) == 0) {
                m30085G0(value);
            } else {
                m30084F0(value);
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) {
            if (spaceLeft() < length) {
                m30082D0(length);
            }
            int i = this.f38077j - length;
            this.f38077j = i;
            iri.m54775e(this.f38075h, i + 1);
            this.f38075h.put(value, offset, length);
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) {
            int remaining = value.remaining();
            if (spaceLeft() < remaining) {
                m30082D0(remaining);
            }
            int i = this.f38077j - remaining;
            this.f38077j = i;
            iri.m54775e(this.f38075h, i + 1);
            this.f38075h.put(value);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) {
            int remaining = value.remaining();
            if (spaceLeft() < remaining) {
                this.f38073d += remaining;
                this.f38072c.addFirst(AbstractC14537v9.m57757j(value));
                m30081C0();
            } else {
                int i = this.f38077j - remaining;
                this.f38077j = i;
                iri.m54775e(this.f38075h, i + 1);
                this.f38075h.put(value);
            }
        }
    }

    /* renamed from: com.google.protobuf.d$c */
    /* loaded from: classes6.dex */
    public static final class c extends AbstractC6865d {

        /* renamed from: h */
        public AbstractC14537v9 f38078h;

        /* renamed from: i */
        public byte[] f38079i;

        /* renamed from: j */
        public int f38080j;

        /* renamed from: k */
        public int f38081k;

        /* renamed from: l */
        public int f38082l;

        /* renamed from: m */
        public int f38083m;

        /* renamed from: n */
        public int f38084n;

        public c(AbstractC13849hv alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            m30101C0();
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: A0 */
        public void mo30043A0(long value) {
            switch (AbstractC6865d.m30031F(value)) {
                case 1:
                    m30113O0(value);
                    return;
                case 2:
                    m30118T0(value);
                    return;
                case 3:
                    m30117S0(value);
                    return;
                case 4:
                    m30111M0(value);
                    return;
                case 5:
                    m30110L0(value);
                    return;
                case 6:
                    m30115Q0(value);
                    return;
                case 7:
                    m30114P0(value);
                    return;
                case 8:
                    m30109K0(value);
                    return;
                case 9:
                    m30112N0(value);
                    return;
                case 10:
                    m30116R0(value);
                    return;
                default:
                    return;
            }
        }

        @Override // com.google.protobuf.Writer
        @Deprecated
        /* renamed from: B */
        public void mo29725B(int fieldNumber, Object value) throws IOException {
            writeTag(fieldNumber, 4);
            d9l.m53616a().m53626k(value, this);
            writeTag(fieldNumber, 3);
        }

        /* renamed from: B0 */
        public int m30100B0() {
            return this.f38083m - this.f38084n;
        }

        /* renamed from: C0 */
        public final void m30101C0() {
            m30103E0(m30048N());
        }

        /* renamed from: D0 */
        public final void m30102D0(int capacity) {
            m30103E0(m30049O(capacity));
        }

        /* renamed from: E0 */
        public final void m30103E0(AbstractC14537v9 allocatedBuffer) {
            if (!allocatedBuffer.mo57763c()) {
                throw new RuntimeException("Allocator returned non-heap buffer");
            }
            mo30045G();
            this.f38072c.addFirst(allocatedBuffer);
            this.f38078h = allocatedBuffer;
            this.f38079i = allocatedBuffer.mo57761a();
            int mo57762b = allocatedBuffer.mo57762b();
            this.f38081k = allocatedBuffer.mo57765e() + mo57762b;
            int mo57767g = mo57762b + allocatedBuffer.mo57767g();
            this.f38080j = mo57767g;
            this.f38082l = mo57767g - 1;
            int i = this.f38081k - 1;
            this.f38083m = i;
            this.f38084n = i;
        }

        /* renamed from: F0 */
        public final void m30104F0(int value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 28);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 21) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 14) & 127) | 128);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i5 - 1;
            bArr[i5] = (byte) ((value & 127) | 128);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: G */
        public void mo30045G() {
            if (this.f38078h != null) {
                this.f38073d += m30100B0();
                AbstractC14537v9 abstractC14537v9 = this.f38078h;
                abstractC14537v9.mo57768h((this.f38084n - abstractC14537v9.mo57762b()) + 1);
                this.f38078h = null;
                this.f38084n = 0;
                this.f38083m = 0;
            }
        }

        /* renamed from: G0 */
        public final void m30105G0(int value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 21);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 14) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i4 - 1;
            bArr[i4] = (byte) ((value & 127) | 128);
        }

        /* renamed from: H0 */
        public final void m30106H0(int value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            this.f38084n = i - 1;
            bArr[i] = (byte) value;
        }

        /* renamed from: I0 */
        public final void m30107I0(int value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 14);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i3 - 1;
            bArr[i3] = (byte) ((value & 127) | 128);
        }

        /* renamed from: J0 */
        public final void m30108J0(int value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 7);
            this.f38084n = i2 - 1;
            bArr[i2] = (byte) ((value & 127) | 128);
        }

        /* renamed from: K0 */
        public final void m30109K0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 49);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 42) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 35) & 127) | 128);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((value >>> 28) & 127) | 128);
            int i6 = i5 - 1;
            bArr[i5] = (byte) (((value >>> 21) & 127) | 128);
            int i7 = i6 - 1;
            bArr[i6] = (byte) (((value >>> 14) & 127) | 128);
            int i8 = i7 - 1;
            bArr[i7] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i8 - 1;
            bArr[i8] = (byte) ((value & 127) | 128);
        }

        /* renamed from: L0 */
        public final void m30110L0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 28);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 21) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 14) & 127) | 128);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i5 - 1;
            bArr[i5] = (byte) ((value & 127) | 128);
        }

        /* renamed from: M0 */
        public final void m30111M0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 21);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 14) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i4 - 1;
            bArr[i4] = (byte) ((value & 127) | 128);
        }

        /* renamed from: N0 */
        public final void m30112N0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 56);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 49) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 42) & 127) | 128);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((value >>> 35) & 127) | 128);
            int i6 = i5 - 1;
            bArr[i5] = (byte) (((value >>> 28) & 127) | 128);
            int i7 = i6 - 1;
            bArr[i6] = (byte) (((value >>> 21) & 127) | 128);
            int i8 = i7 - 1;
            bArr[i7] = (byte) (((value >>> 14) & 127) | 128);
            int i9 = i8 - 1;
            bArr[i8] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i9 - 1;
            bArr[i9] = (byte) ((value & 127) | 128);
        }

        /* renamed from: O0 */
        public final void m30113O0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            this.f38084n = i - 1;
            bArr[i] = (byte) value;
        }

        /* renamed from: P0 */
        public final void m30114P0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 42);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 35) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 28) & 127) | 128);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((value >>> 21) & 127) | 128);
            int i6 = i5 - 1;
            bArr[i5] = (byte) (((value >>> 14) & 127) | 128);
            int i7 = i6 - 1;
            bArr[i6] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i7 - 1;
            bArr[i7] = (byte) ((value & 127) | 128);
        }

        /* renamed from: Q0 */
        public final void m30115Q0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 35);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 28) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 21) & 127) | 128);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((value >>> 14) & 127) | 128);
            int i6 = i5 - 1;
            bArr[i5] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i6 - 1;
            bArr[i6] = (byte) ((value & 127) | 128);
        }

        /* renamed from: R0 */
        public final void m30116R0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 63);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 56) & 127) | 128);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((value >>> 49) & 127) | 128);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((value >>> 42) & 127) | 128);
            int i6 = i5 - 1;
            bArr[i5] = (byte) (((value >>> 35) & 127) | 128);
            int i7 = i6 - 1;
            bArr[i6] = (byte) (((value >>> 28) & 127) | 128);
            int i8 = i7 - 1;
            bArr[i7] = (byte) (((value >>> 21) & 127) | 128);
            int i9 = i8 - 1;
            bArr[i8] = (byte) (((value >>> 14) & 127) | 128);
            int i10 = i9 - 1;
            bArr[i9] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i10 - 1;
            bArr[i10] = (byte) ((value & 127) | 128);
        }

        /* renamed from: S0 */
        public final void m30117S0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (((int) value) >>> 14);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((value >>> 7) & 127) | 128);
            this.f38084n = i3 - 1;
            bArr[i3] = (byte) ((value & 127) | 128);
        }

        /* renamed from: T0 */
        public final void m30118T0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (value >>> 7);
            this.f38084n = i2 - 1;
            bArr[i2] = (byte) ((((int) value) & 127) | 128);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: V */
        public void mo30050V(int size) {
            if (spaceLeft() < size) {
                m30102D0(size);
            }
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: W */
        public void mo30051W(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: b0 */
        public void mo30056b0(int value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) ((value >> 24) & 255);
            int i3 = i2 - 1;
            bArr[i2] = (byte) ((value >> 16) & 255);
            int i4 = i3 - 1;
            bArr[i3] = (byte) ((value >> 8) & 255);
            this.f38084n = i4 - 1;
            bArr[i4] = (byte) (value & 255);
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: e */
        public void mo29731e(int fieldNumber) {
            writeTag(fieldNumber, 4);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: e0 */
        public void mo30059e0(long value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            int i2 = i - 1;
            bArr[i] = (byte) (((int) (value >> 56)) & 255);
            int i3 = i2 - 1;
            bArr[i2] = (byte) (((int) (value >> 48)) & 255);
            int i4 = i3 - 1;
            bArr[i3] = (byte) (((int) (value >> 40)) & 255);
            int i5 = i4 - 1;
            bArr[i4] = (byte) (((int) (value >> 32)) & 255);
            int i6 = i5 - 1;
            bArr[i5] = (byte) (((int) (value >> 24)) & 255);
            int i7 = i6 - 1;
            bArr[i6] = (byte) (((int) (value >> 16)) & 255);
            int i8 = i7 - 1;
            bArr[i7] = (byte) (((int) (value >> 8)) & 255);
            this.f38084n = i8 - 1;
            bArr[i8] = (byte) (((int) value) & 255);
        }

        @Override // com.google.protobuf.AbstractC6865d
        public int getTotalBytesWritten() {
            return this.f38073d + m30100B0();
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: h */
        public void mo29734h(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 4);
            schema.mo30371e(value, this);
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: j0 */
        public void mo30064j0(int value) {
            if (value >= 0) {
                mo30079z0(value);
            } else {
                mo30043A0(value);
            }
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: k */
        public void mo29737k(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.mo30371e(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: o0 */
        public void mo30068o0(int value) {
            mo30079z0(CodedOutputStream.encodeZigZag32(value));
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: r */
        public void mo29744r(int fieldNumber) {
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: r0 */
        public void mo30071r0(long value) {
            mo30043A0(CodedOutputStream.encodeZigZag64(value));
        }

        public int spaceLeft() {
            return this.f38084n - this.f38082l;
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: u0 */
        public void mo30074u0(String in) {
            int i;
            int i2;
            int i3;
            char charAt;
            mo30050V(in.length());
            int length = in.length() - 1;
            this.f38084n -= length;
            while (length >= 0 && (charAt = in.charAt(length)) < 128) {
                this.f38079i[this.f38084n + length] = (byte) charAt;
                length--;
            }
            if (length == -1) {
                this.f38084n--;
                return;
            }
            this.f38084n += length;
            while (length >= 0) {
                char charAt2 = in.charAt(length);
                if (charAt2 < 128 && (i3 = this.f38084n) > this.f38082l) {
                    byte[] bArr = this.f38079i;
                    this.f38084n = i3 - 1;
                    bArr[i3] = (byte) charAt2;
                } else if (charAt2 < 2048 && (i2 = this.f38084n) > this.f38080j) {
                    byte[] bArr2 = this.f38079i;
                    int i4 = i2 - 1;
                    bArr2[i2] = (byte) ((charAt2 & '?') | 128);
                    this.f38084n = i4 - 1;
                    bArr2[i4] = (byte) ((charAt2 >>> 6) | HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT);
                } else if ((charAt2 < 55296 || 57343 < charAt2) && (i = this.f38084n) > this.f38080j + 1) {
                    byte[] bArr3 = this.f38079i;
                    int i5 = i - 1;
                    bArr3[i] = (byte) ((charAt2 & '?') | 128);
                    int i6 = i5 - 1;
                    bArr3[i5] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    this.f38084n = i6 - 1;
                    bArr3[i6] = (byte) ((charAt2 >>> '\f') | JsonParser.DUPLICATES_SPECIFIED);
                } else {
                    if (this.f38084n > this.f38080j + 2) {
                        if (length != 0) {
                            char charAt3 = in.charAt(length - 1);
                            if (Character.isSurrogatePair(charAt3, charAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(charAt3, charAt2);
                                byte[] bArr4 = this.f38079i;
                                int i7 = this.f38084n;
                                int i8 = i7 - 1;
                                bArr4[i7] = (byte) ((codePoint & 63) | 128);
                                int i9 = i8 - 1;
                                bArr4[i8] = (byte) (((codePoint >>> 6) & 63) | 128);
                                int i10 = i9 - 1;
                                bArr4[i9] = (byte) (((codePoint >>> 12) & 63) | 128);
                                this.f38084n = i10 - 1;
                                bArr4[i10] = (byte) ((codePoint >>> 18) | 240);
                            }
                        }
                        throw new Utf8.UnpairedSurrogateException(length - 1, length);
                    }
                    mo30050V(length);
                    length++;
                }
                length--;
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte value) {
            byte[] bArr = this.f38079i;
            int i = this.f38084n;
            this.f38084n = i - 1;
            bArr[i] = value;
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) throws IOException {
            mo30050V(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int fieldNumber, ByteString value) throws IOException {
            try {
                value.writeToReverse(this);
                mo30050V(10);
                mo30079z0(value.size());
                writeTag(fieldNumber, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int fieldNumber, int value) throws IOException {
            mo30050V(9);
            mo30056b0(value);
            writeTag(fieldNumber, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int fieldNumber, long value) throws IOException {
            mo30050V(13);
            mo30059e0(value);
            writeTag(fieldNumber, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int fieldNumber, int value) throws IOException {
            mo30050V(15);
            mo30064j0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) {
            if (spaceLeft() < length) {
                this.f38073d += length;
                this.f38072c.addFirst(AbstractC14537v9.m57759l(value, offset, length));
                m30101C0();
            } else {
                int i = this.f38084n - length;
                this.f38084n = i;
                System.arraycopy(value, offset, this.f38079i, i + 1, length);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int fieldNumber, int value) throws IOException {
            mo30050V(10);
            mo30068o0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int fieldNumber, long value) throws IOException {
            mo30050V(15);
            mo30071r0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int fieldNumber, String value) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            mo30074u0(value);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        public void writeTag(int fieldNumber, int wireType) {
            mo30079z0(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int fieldNumber, int value) throws IOException {
            mo30050V(10);
            mo30079z0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int fieldNumber, long value) throws IOException {
            mo30050V(15);
            mo30043A0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: z */
        public void mo29752z(int fieldNumber, Object value) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            d9l.m53616a().m53626k(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: z0 */
        public void mo30079z0(int value) {
            if ((value & (-128)) == 0) {
                m30106H0(value);
                return;
            }
            if ((value & TIFFTag.f97946g) == 0) {
                m30108J0(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                m30107I0(value);
            } else if (((-268435456) & value) == 0) {
                m30105G0(value);
            } else {
                m30104F0(value);
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) {
            if (spaceLeft() < length) {
                m30102D0(length);
            }
            int i = this.f38084n - length;
            this.f38084n = i;
            System.arraycopy(value, offset, this.f38079i, i + 1, length);
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) {
            int remaining = value.remaining();
            if (spaceLeft() < remaining) {
                m30102D0(remaining);
            }
            int i = this.f38084n - remaining;
            this.f38084n = i;
            value.get(this.f38079i, i + 1, remaining);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) {
            int remaining = value.remaining();
            if (spaceLeft() < remaining) {
                this.f38073d += remaining;
                this.f38072c.addFirst(AbstractC14537v9.m57757j(value));
                m30101C0();
            }
            int i = this.f38084n - remaining;
            this.f38084n = i;
            value.get(this.f38079i, i + 1, remaining);
        }
    }

    /* renamed from: com.google.protobuf.d$d */
    /* loaded from: classes6.dex */
    public static final class d extends AbstractC6865d {

        /* renamed from: h */
        public ByteBuffer f38085h;

        /* renamed from: i */
        public long f38086i;

        /* renamed from: j */
        public long f38087j;

        /* renamed from: k */
        public long f38088k;

        public d(AbstractC13849hv alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            m30123F0();
        }

        /* renamed from: B0 */
        public static /* synthetic */ boolean m30119B0() {
            return m30120E0();
        }

        /* renamed from: E0 */
        public static boolean m30120E0() {
            return dun.m53731V();
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: A0 */
        public void mo30043A0(long value) {
            switch (AbstractC6865d.m30031F(value)) {
                case 1:
                    m30135R0(value);
                    return;
                case 2:
                    m30140W0(value);
                    return;
                case 3:
                    m30139V0(value);
                    return;
                case 4:
                    m30133P0(value);
                    return;
                case 5:
                    m30132O0(value);
                    return;
                case 6:
                    m30137T0(value);
                    return;
                case 7:
                    m30136S0(value);
                    return;
                case 8:
                    m30131N0(value);
                    return;
                case 9:
                    m30134Q0(value);
                    return;
                case 10:
                    m30138U0(value);
                    return;
                default:
                    return;
            }
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: B */
        public void mo29725B(int fieldNumber, Object value) throws IOException {
            writeTag(fieldNumber, 4);
            d9l.m53616a().m53626k(value, this);
            writeTag(fieldNumber, 3);
        }

        /* renamed from: C0 */
        public final int m30121C0() {
            return (int) (this.f38088k - this.f38086i);
        }

        /* renamed from: D0 */
        public final int m30122D0() {
            return (int) (this.f38087j - this.f38088k);
        }

        /* renamed from: F0 */
        public final void m30123F0() {
            m30125H0(m30046J());
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: G */
        public void mo30045G() {
            if (this.f38085h != null) {
                this.f38073d += m30122D0();
                iri.m54775e(this.f38085h, m30121C0() + 1);
                this.f38085h = null;
                this.f38088k = 0L;
                this.f38087j = 0L;
            }
        }

        /* renamed from: G0 */
        public final void m30124G0(int capacity) {
            m30125H0(m30047K(capacity));
        }

        /* renamed from: H0 */
        public final void m30125H0(AbstractC14537v9 allocatedBuffer) {
            if (!allocatedBuffer.mo57764d()) {
                throw new RuntimeException("Allocated buffer does not have NIO buffer");
            }
            ByteBuffer mo57766f = allocatedBuffer.mo57766f();
            if (!mo57766f.isDirect()) {
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            mo30045G();
            this.f38072c.addFirst(allocatedBuffer);
            this.f38085h = mo57766f;
            iri.m54773c(mo57766f, mo57766f.capacity());
            iri.m54775e(this.f38085h, 0);
            long m53756k = dun.m53756k(this.f38085h);
            this.f38086i = m53756k;
            long limit = m53756k + (this.f38085h.limit() - 1);
            this.f38087j = limit;
            this.f38088k = limit;
        }

        /* renamed from: I0 */
        public final void m30126I0(int value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 28));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 21) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 14) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((value >>> 7) & 127) | 128));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) ((value & 127) | 128));
        }

        /* renamed from: J0 */
        public final void m30127J0(int value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 21));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 14) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 7) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) ((value & 127) | 128));
        }

        /* renamed from: K0 */
        public final void m30128K0(int value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) value);
        }

        /* renamed from: L0 */
        public final void m30129L0(int value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 14));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 7) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) ((value & 127) | 128));
        }

        /* renamed from: M0 */
        public final void m30130M0(int value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 7));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) ((value & 127) | 128));
        }

        /* renamed from: N0 */
        public final void m30131N0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 49));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 42) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 35) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((value >>> 28) & 127) | 128));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) (((value >>> 21) & 127) | 128));
            long j6 = this.f38088k;
            this.f38088k = j6 - 1;
            dun.m53745e0(j6, (byte) (((value >>> 14) & 127) | 128));
            long j7 = this.f38088k;
            this.f38088k = j7 - 1;
            dun.m53745e0(j7, (byte) (((value >>> 7) & 127) | 128));
            long j8 = this.f38088k;
            this.f38088k = j8 - 1;
            dun.m53745e0(j8, (byte) ((value & 127) | 128));
        }

        /* renamed from: O0 */
        public final void m30132O0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 28));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 21) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 14) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((value >>> 7) & 127) | 128));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) ((value & 127) | 128));
        }

        /* renamed from: P0 */
        public final void m30133P0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 21));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 14) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 7) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) ((value & 127) | 128));
        }

        /* renamed from: Q0 */
        public final void m30134Q0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 56));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 49) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 42) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((value >>> 35) & 127) | 128));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) (((value >>> 28) & 127) | 128));
            long j6 = this.f38088k;
            this.f38088k = j6 - 1;
            dun.m53745e0(j6, (byte) (((value >>> 21) & 127) | 128));
            long j7 = this.f38088k;
            this.f38088k = j7 - 1;
            dun.m53745e0(j7, (byte) (((value >>> 14) & 127) | 128));
            long j8 = this.f38088k;
            this.f38088k = j8 - 1;
            dun.m53745e0(j8, (byte) (((value >>> 7) & 127) | 128));
            long j9 = this.f38088k;
            this.f38088k = j9 - 1;
            dun.m53745e0(j9, (byte) ((value & 127) | 128));
        }

        /* renamed from: R0 */
        public final void m30135R0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) value);
        }

        /* renamed from: S0 */
        public final void m30136S0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 42));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 35) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 28) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((value >>> 21) & 127) | 128));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) (((value >>> 14) & 127) | 128));
            long j6 = this.f38088k;
            this.f38088k = j6 - 1;
            dun.m53745e0(j6, (byte) (((value >>> 7) & 127) | 128));
            long j7 = this.f38088k;
            this.f38088k = j7 - 1;
            dun.m53745e0(j7, (byte) ((value & 127) | 128));
        }

        /* renamed from: T0 */
        public final void m30137T0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 35));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 28) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 21) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((value >>> 14) & 127) | 128));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) (((value >>> 7) & 127) | 128));
            long j6 = this.f38088k;
            this.f38088k = j6 - 1;
            dun.m53745e0(j6, (byte) ((value & 127) | 128));
        }

        /* renamed from: U0 */
        public final void m30138U0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 63));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 56) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((value >>> 49) & 127) | 128));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((value >>> 42) & 127) | 128));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) (((value >>> 35) & 127) | 128));
            long j6 = this.f38088k;
            this.f38088k = j6 - 1;
            dun.m53745e0(j6, (byte) (((value >>> 28) & 127) | 128));
            long j7 = this.f38088k;
            this.f38088k = j7 - 1;
            dun.m53745e0(j7, (byte) (((value >>> 21) & 127) | 128));
            long j8 = this.f38088k;
            this.f38088k = j8 - 1;
            dun.m53745e0(j8, (byte) (((value >>> 14) & 127) | 128));
            long j9 = this.f38088k;
            this.f38088k = j9 - 1;
            dun.m53745e0(j9, (byte) (((value >>> 7) & 127) | 128));
            long j10 = this.f38088k;
            this.f38088k = j10 - 1;
            dun.m53745e0(j10, (byte) ((value & 127) | 128));
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: V */
        public void mo30050V(int size) {
            if (spaceLeft() < size) {
                m30124G0(size);
            }
        }

        /* renamed from: V0 */
        public final void m30139V0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (((int) value) >>> 14));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((value >>> 7) & 127) | 128));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) ((value & 127) | 128));
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: W */
        public void mo30051W(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        /* renamed from: W0 */
        public final void m30140W0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (value >>> 7));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) ((((int) value) & 127) | 128));
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: b0 */
        public void mo30056b0(int value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) ((value >> 24) & 255));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) ((value >> 16) & 255));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) ((value >> 8) & 255));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (value & 255));
        }

        @Override // com.google.protobuf.Writer
        @Deprecated
        /* renamed from: e */
        public void mo29731e(int fieldNumber) {
            writeTag(fieldNumber, 4);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: e0 */
        public void mo30059e0(long value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, (byte) (((int) (value >> 56)) & 255));
            long j2 = this.f38088k;
            this.f38088k = j2 - 1;
            dun.m53745e0(j2, (byte) (((int) (value >> 48)) & 255));
            long j3 = this.f38088k;
            this.f38088k = j3 - 1;
            dun.m53745e0(j3, (byte) (((int) (value >> 40)) & 255));
            long j4 = this.f38088k;
            this.f38088k = j4 - 1;
            dun.m53745e0(j4, (byte) (((int) (value >> 32)) & 255));
            long j5 = this.f38088k;
            this.f38088k = j5 - 1;
            dun.m53745e0(j5, (byte) (((int) (value >> 24)) & 255));
            long j6 = this.f38088k;
            this.f38088k = j6 - 1;
            dun.m53745e0(j6, (byte) (((int) (value >> 16)) & 255));
            long j7 = this.f38088k;
            this.f38088k = j7 - 1;
            dun.m53745e0(j7, (byte) (((int) (value >> 8)) & 255));
            long j8 = this.f38088k;
            this.f38088k = j8 - 1;
            dun.m53745e0(j8, (byte) (((int) value) & 255));
        }

        @Override // com.google.protobuf.AbstractC6865d
        public int getTotalBytesWritten() {
            return this.f38073d + m30122D0();
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: h */
        public void mo29734h(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 4);
            schema.mo30371e(value, this);
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: j0 */
        public void mo30064j0(int value) {
            if (value >= 0) {
                mo30079z0(value);
            } else {
                mo30043A0(value);
            }
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: k */
        public void mo29737k(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.mo30371e(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: o0 */
        public void mo30068o0(int value) {
            mo30079z0(CodedOutputStream.encodeZigZag32(value));
        }

        @Override // com.google.protobuf.Writer
        @Deprecated
        /* renamed from: r */
        public void mo29744r(int fieldNumber) {
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: r0 */
        public void mo30071r0(long value) {
            mo30043A0(CodedOutputStream.encodeZigZag64(value));
        }

        public final int spaceLeft() {
            return m30121C0() + 1;
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: u0 */
        public void mo30074u0(String in) {
            char charAt;
            mo30050V(in.length());
            int length = in.length();
            while (true) {
                length--;
                if (length < 0 || (charAt = in.charAt(length)) >= 128) {
                    break;
                }
                long j = this.f38088k;
                this.f38088k = j - 1;
                dun.m53745e0(j, (byte) charAt);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char charAt2 = in.charAt(length);
                if (charAt2 < 128) {
                    long j2 = this.f38088k;
                    if (j2 >= this.f38086i) {
                        this.f38088k = j2 - 1;
                        dun.m53745e0(j2, (byte) charAt2);
                        length--;
                    }
                }
                if (charAt2 < 2048) {
                    long j3 = this.f38088k;
                    if (j3 > this.f38086i) {
                        this.f38088k = j3 - 1;
                        dun.m53745e0(j3, (byte) ((charAt2 & '?') | 128));
                        long j4 = this.f38088k;
                        this.f38088k = j4 - 1;
                        dun.m53745e0(j4, (byte) ((charAt2 >>> 6) | HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT));
                        length--;
                    }
                }
                if (charAt2 < 55296 || 57343 < charAt2) {
                    long j5 = this.f38088k;
                    if (j5 > this.f38086i + 1) {
                        this.f38088k = j5 - 1;
                        dun.m53745e0(j5, (byte) ((charAt2 & '?') | 128));
                        long j6 = this.f38088k;
                        this.f38088k = j6 - 1;
                        dun.m53745e0(j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                        long j7 = this.f38088k;
                        this.f38088k = j7 - 1;
                        dun.m53745e0(j7, (byte) ((charAt2 >>> '\f') | JsonParser.DUPLICATES_SPECIFIED));
                        length--;
                    }
                }
                if (this.f38088k > this.f38086i + 2) {
                    if (length != 0) {
                        char charAt3 = in.charAt(length - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            length--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            long j8 = this.f38088k;
                            this.f38088k = j8 - 1;
                            dun.m53745e0(j8, (byte) ((codePoint & 63) | 128));
                            long j9 = this.f38088k;
                            this.f38088k = j9 - 1;
                            dun.m53745e0(j9, (byte) (((codePoint >>> 6) & 63) | 128));
                            long j10 = this.f38088k;
                            this.f38088k = j10 - 1;
                            dun.m53745e0(j10, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j11 = this.f38088k;
                            this.f38088k = j11 - 1;
                            dun.m53745e0(j11, (byte) ((codePoint >>> 18) | 240));
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                }
                mo30050V(length);
                length++;
                length--;
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte value) {
            long j = this.f38088k;
            this.f38088k = j - 1;
            dun.m53745e0(j, value);
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) {
            mo30050V(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int fieldNumber, ByteString value) {
            try {
                value.writeToReverse(this);
                mo30050V(10);
                mo30079z0(value.size());
                writeTag(fieldNumber, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int fieldNumber, int value) {
            mo30050V(9);
            mo30056b0(value);
            writeTag(fieldNumber, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int fieldNumber, long value) {
            mo30050V(13);
            mo30059e0(value);
            writeTag(fieldNumber, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int fieldNumber, int value) {
            mo30050V(15);
            mo30064j0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) {
            if (spaceLeft() < length) {
                this.f38073d += length;
                this.f38072c.addFirst(AbstractC14537v9.m57759l(value, offset, length));
                m30123F0();
            } else {
                this.f38088k -= length;
                iri.m54775e(this.f38085h, m30121C0() + 1);
                this.f38085h.put(value, offset, length);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int fieldNumber, int value) {
            mo30050V(10);
            mo30068o0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int fieldNumber, long value) {
            mo30050V(15);
            mo30071r0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int fieldNumber, String value) {
            int totalBytesWritten = getTotalBytesWritten();
            mo30074u0(value);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        public void writeTag(int fieldNumber, int wireType) {
            mo30079z0(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int fieldNumber, int value) {
            mo30050V(10);
            mo30079z0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int fieldNumber, long value) {
            mo30050V(15);
            mo30043A0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: z */
        public void mo29752z(int fieldNumber, Object value) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            d9l.m53616a().m53626k(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: z0 */
        public void mo30079z0(int value) {
            if ((value & (-128)) == 0) {
                m30128K0(value);
                return;
            }
            if ((value & TIFFTag.f97946g) == 0) {
                m30130M0(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                m30129L0(value);
            } else if (((-268435456) & value) == 0) {
                m30127J0(value);
            } else {
                m30126I0(value);
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) {
            if (spaceLeft() < length) {
                m30124G0(length);
            }
            this.f38088k -= length;
            iri.m54775e(this.f38085h, m30121C0() + 1);
            this.f38085h.put(value, offset, length);
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) {
            int remaining = value.remaining();
            if (spaceLeft() < remaining) {
                m30124G0(remaining);
            }
            this.f38088k -= remaining;
            iri.m54775e(this.f38085h, m30121C0() + 1);
            this.f38085h.put(value);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) {
            int remaining = value.remaining();
            if (spaceLeft() < remaining) {
                this.f38073d += remaining;
                this.f38072c.addFirst(AbstractC14537v9.m57757j(value));
                m30123F0();
            } else {
                this.f38088k -= remaining;
                iri.m54775e(this.f38085h, m30121C0() + 1);
                this.f38085h.put(value);
            }
        }
    }

    /* renamed from: com.google.protobuf.d$e */
    /* loaded from: classes6.dex */
    public static final class e extends AbstractC6865d {

        /* renamed from: h */
        public AbstractC14537v9 f38089h;

        /* renamed from: i */
        public byte[] f38090i;

        /* renamed from: j */
        public long f38091j;

        /* renamed from: k */
        public long f38092k;

        /* renamed from: l */
        public long f38093l;

        /* renamed from: m */
        public long f38094m;

        /* renamed from: n */
        public long f38095n;

        public e(AbstractC13849hv alloc, int chunkSize) {
            super(alloc, chunkSize, null);
            m30144E0();
        }

        /* renamed from: D0 */
        public static boolean m30141D0() {
            return dun.m53730U();
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: A0 */
        public void mo30043A0(long value) {
            switch (AbstractC6865d.m30031F(value)) {
                case 1:
                    m30156Q0(value);
                    return;
                case 2:
                    m30161V0(value);
                    return;
                case 3:
                    m30160U0(value);
                    return;
                case 4:
                    m30154O0(value);
                    return;
                case 5:
                    m30153N0(value);
                    return;
                case 6:
                    m30158S0(value);
                    return;
                case 7:
                    m30157R0(value);
                    return;
                case 8:
                    m30152M0(value);
                    return;
                case 9:
                    m30155P0(value);
                    return;
                case 10:
                    m30159T0(value);
                    return;
                default:
                    return;
            }
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: B */
        public void mo29725B(int fieldNumber, Object value) throws IOException {
            writeTag(fieldNumber, 4);
            d9l.m53616a().m53626k(value, this);
            writeTag(fieldNumber, 3);
        }

        /* renamed from: B0 */
        public final int m30142B0() {
            return (int) this.f38095n;
        }

        /* renamed from: C0 */
        public int m30143C0() {
            return (int) (this.f38094m - this.f38095n);
        }

        /* renamed from: E0 */
        public final void m30144E0() {
            m30146G0(m30048N());
        }

        /* renamed from: F0 */
        public final void m30145F0(int capacity) {
            m30146G0(m30049O(capacity));
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: G */
        public void mo30045G() {
            if (this.f38089h != null) {
                this.f38073d += m30143C0();
                this.f38089h.mo57768h((m30142B0() - this.f38089h.mo57762b()) + 1);
                this.f38089h = null;
                this.f38095n = 0L;
                this.f38094m = 0L;
            }
        }

        /* renamed from: G0 */
        public final void m30146G0(AbstractC14537v9 allocatedBuffer) {
            if (!allocatedBuffer.mo57763c()) {
                throw new RuntimeException("Allocator returned non-heap buffer");
            }
            mo30045G();
            this.f38072c.addFirst(allocatedBuffer);
            this.f38089h = allocatedBuffer;
            this.f38090i = allocatedBuffer.mo57761a();
            long mo57762b = allocatedBuffer.mo57762b();
            this.f38092k = allocatedBuffer.mo57765e() + mo57762b;
            long mo57767g = mo57762b + allocatedBuffer.mo57767g();
            this.f38091j = mo57767g;
            this.f38093l = mo57767g - 1;
            long j = this.f38092k - 1;
            this.f38094m = j;
            this.f38095n = j;
        }

        /* renamed from: H0 */
        public final void m30147H0(int value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 28));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) ((value & 127) | 128));
        }

        /* renamed from: I0 */
        public final void m30148I0(int value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 21));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) ((value & 127) | 128));
        }

        /* renamed from: J0 */
        public final void m30149J0(int value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) value);
        }

        /* renamed from: K0 */
        public final void m30150K0(int value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 14));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) ((value & 127) | 128));
        }

        /* renamed from: L0 */
        public final void m30151L0(int value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 7));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) ((value & 127) | 128));
        }

        /* renamed from: M0 */
        public final void m30152M0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 49));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 42) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr6 = this.f38090i;
            long j6 = this.f38095n;
            this.f38095n = j6 - 1;
            dun.m53749g0(bArr6, j6, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr7 = this.f38090i;
            long j7 = this.f38095n;
            this.f38095n = j7 - 1;
            dun.m53749g0(bArr7, j7, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr8 = this.f38090i;
            long j8 = this.f38095n;
            this.f38095n = j8 - 1;
            dun.m53749g0(bArr8, j8, (byte) ((value & 127) | 128));
        }

        /* renamed from: N0 */
        public final void m30153N0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 28));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) ((value & 127) | 128));
        }

        /* renamed from: O0 */
        public final void m30154O0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 21));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) ((value & 127) | 128));
        }

        /* renamed from: P0 */
        public final void m30155P0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 56));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 49) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 42) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr6 = this.f38090i;
            long j6 = this.f38095n;
            this.f38095n = j6 - 1;
            dun.m53749g0(bArr6, j6, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr7 = this.f38090i;
            long j7 = this.f38095n;
            this.f38095n = j7 - 1;
            dun.m53749g0(bArr7, j7, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr8 = this.f38090i;
            long j8 = this.f38095n;
            this.f38095n = j8 - 1;
            dun.m53749g0(bArr8, j8, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr9 = this.f38090i;
            long j9 = this.f38095n;
            this.f38095n = j9 - 1;
            dun.m53749g0(bArr9, j9, (byte) ((value & 127) | 128));
        }

        /* renamed from: Q0 */
        public final void m30156Q0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) value);
        }

        /* renamed from: R0 */
        public final void m30157R0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 42));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr6 = this.f38090i;
            long j6 = this.f38095n;
            this.f38095n = j6 - 1;
            dun.m53749g0(bArr6, j6, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr7 = this.f38090i;
            long j7 = this.f38095n;
            this.f38095n = j7 - 1;
            dun.m53749g0(bArr7, j7, (byte) ((value & 127) | 128));
        }

        /* renamed from: S0 */
        public final void m30158S0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 35));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr6 = this.f38090i;
            long j6 = this.f38095n;
            this.f38095n = j6 - 1;
            dun.m53749g0(bArr6, j6, (byte) ((value & 127) | 128));
        }

        /* renamed from: T0 */
        public final void m30159T0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 63));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 56) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((value >>> 49) & 127) | 128));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((value >>> 42) & 127) | 128));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) (((value >>> 35) & 127) | 128));
            byte[] bArr6 = this.f38090i;
            long j6 = this.f38095n;
            this.f38095n = j6 - 1;
            dun.m53749g0(bArr6, j6, (byte) (((value >>> 28) & 127) | 128));
            byte[] bArr7 = this.f38090i;
            long j7 = this.f38095n;
            this.f38095n = j7 - 1;
            dun.m53749g0(bArr7, j7, (byte) (((value >>> 21) & 127) | 128));
            byte[] bArr8 = this.f38090i;
            long j8 = this.f38095n;
            this.f38095n = j8 - 1;
            dun.m53749g0(bArr8, j8, (byte) (((value >>> 14) & 127) | 128));
            byte[] bArr9 = this.f38090i;
            long j9 = this.f38095n;
            this.f38095n = j9 - 1;
            dun.m53749g0(bArr9, j9, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr10 = this.f38090i;
            long j10 = this.f38095n;
            this.f38095n = j10 - 1;
            dun.m53749g0(bArr10, j10, (byte) ((value & 127) | 128));
        }

        /* renamed from: U0 */
        public final void m30160U0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (((int) value) >>> 14));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((value >>> 7) & 127) | 128));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) ((value & 127) | 128));
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: V */
        public void mo30050V(int size) {
            if (spaceLeft() < size) {
                m30145F0(size);
            }
        }

        /* renamed from: V0 */
        public final void m30161V0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (value >>> 7));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) ((((int) value) & 127) | 128));
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: W */
        public void mo30051W(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: b0 */
        public void mo30056b0(int value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) ((value >> 24) & 255));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) ((value >> 16) & 255));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) ((value >> 8) & 255));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (value & 255));
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: e */
        public void mo29731e(int fieldNumber) {
            writeTag(fieldNumber, 4);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: e0 */
        public void mo30059e0(long value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, (byte) (((int) (value >> 56)) & 255));
            byte[] bArr2 = this.f38090i;
            long j2 = this.f38095n;
            this.f38095n = j2 - 1;
            dun.m53749g0(bArr2, j2, (byte) (((int) (value >> 48)) & 255));
            byte[] bArr3 = this.f38090i;
            long j3 = this.f38095n;
            this.f38095n = j3 - 1;
            dun.m53749g0(bArr3, j3, (byte) (((int) (value >> 40)) & 255));
            byte[] bArr4 = this.f38090i;
            long j4 = this.f38095n;
            this.f38095n = j4 - 1;
            dun.m53749g0(bArr4, j4, (byte) (((int) (value >> 32)) & 255));
            byte[] bArr5 = this.f38090i;
            long j5 = this.f38095n;
            this.f38095n = j5 - 1;
            dun.m53749g0(bArr5, j5, (byte) (((int) (value >> 24)) & 255));
            byte[] bArr6 = this.f38090i;
            long j6 = this.f38095n;
            this.f38095n = j6 - 1;
            dun.m53749g0(bArr6, j6, (byte) (((int) (value >> 16)) & 255));
            byte[] bArr7 = this.f38090i;
            long j7 = this.f38095n;
            this.f38095n = j7 - 1;
            dun.m53749g0(bArr7, j7, (byte) (((int) (value >> 8)) & 255));
            byte[] bArr8 = this.f38090i;
            long j8 = this.f38095n;
            this.f38095n = j8 - 1;
            dun.m53749g0(bArr8, j8, (byte) (((int) value) & 255));
        }

        @Override // com.google.protobuf.AbstractC6865d
        public int getTotalBytesWritten() {
            return this.f38073d + m30143C0();
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: h */
        public void mo29734h(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            writeTag(fieldNumber, 4);
            schema.mo30371e(value, this);
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: j0 */
        public void mo30064j0(int value) {
            if (value >= 0) {
                mo30079z0(value);
            } else {
                mo30043A0(value);
            }
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: k */
        public void mo29737k(int fieldNumber, Object value, InterfaceC6889z schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.mo30371e(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: o0 */
        public void mo30068o0(int value) {
            mo30079z0(CodedOutputStream.encodeZigZag32(value));
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: r */
        public void mo29744r(int fieldNumber) {
            writeTag(fieldNumber, 3);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: r0 */
        public void mo30071r0(long value) {
            mo30043A0(CodedOutputStream.encodeZigZag64(value));
        }

        public int spaceLeft() {
            return (int) (this.f38095n - this.f38093l);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: u0 */
        public void mo30074u0(String in) {
            char charAt;
            mo30050V(in.length());
            int length = in.length();
            while (true) {
                length--;
                if (length < 0 || (charAt = in.charAt(length)) >= 128) {
                    break;
                }
                byte[] bArr = this.f38090i;
                long j = this.f38095n;
                this.f38095n = j - 1;
                dun.m53749g0(bArr, j, (byte) charAt);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char charAt2 = in.charAt(length);
                if (charAt2 < 128) {
                    long j2 = this.f38095n;
                    if (j2 > this.f38093l) {
                        byte[] bArr2 = this.f38090i;
                        this.f38095n = j2 - 1;
                        dun.m53749g0(bArr2, j2, (byte) charAt2);
                        length--;
                    }
                }
                if (charAt2 < 2048) {
                    long j3 = this.f38095n;
                    if (j3 > this.f38091j) {
                        byte[] bArr3 = this.f38090i;
                        this.f38095n = j3 - 1;
                        dun.m53749g0(bArr3, j3, (byte) ((charAt2 & '?') | 128));
                        byte[] bArr4 = this.f38090i;
                        long j4 = this.f38095n;
                        this.f38095n = j4 - 1;
                        dun.m53749g0(bArr4, j4, (byte) ((charAt2 >>> 6) | HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT));
                        length--;
                    }
                }
                if (charAt2 < 55296 || 57343 < charAt2) {
                    long j5 = this.f38095n;
                    if (j5 > this.f38091j + 1) {
                        byte[] bArr5 = this.f38090i;
                        this.f38095n = j5 - 1;
                        dun.m53749g0(bArr5, j5, (byte) ((charAt2 & '?') | 128));
                        byte[] bArr6 = this.f38090i;
                        long j6 = this.f38095n;
                        this.f38095n = j6 - 1;
                        dun.m53749g0(bArr6, j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                        byte[] bArr7 = this.f38090i;
                        long j7 = this.f38095n;
                        this.f38095n = j7 - 1;
                        dun.m53749g0(bArr7, j7, (byte) ((charAt2 >>> '\f') | JsonParser.DUPLICATES_SPECIFIED));
                        length--;
                    }
                }
                if (this.f38095n > this.f38091j + 2) {
                    if (length != 0) {
                        char charAt3 = in.charAt(length - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            length--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            byte[] bArr8 = this.f38090i;
                            long j8 = this.f38095n;
                            this.f38095n = j8 - 1;
                            dun.m53749g0(bArr8, j8, (byte) ((codePoint & 63) | 128));
                            byte[] bArr9 = this.f38090i;
                            long j9 = this.f38095n;
                            this.f38095n = j9 - 1;
                            dun.m53749g0(bArr9, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                            byte[] bArr10 = this.f38090i;
                            long j10 = this.f38095n;
                            this.f38095n = j10 - 1;
                            dun.m53749g0(bArr10, j10, (byte) (((codePoint >>> 12) & 63) | 128));
                            byte[] bArr11 = this.f38090i;
                            long j11 = this.f38095n;
                            this.f38095n = j11 - 1;
                            dun.m53749g0(bArr11, j11, (byte) ((codePoint >>> 18) | 240));
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                }
                mo30050V(length);
                length++;
                length--;
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte value) {
            byte[] bArr = this.f38090i;
            long j = this.f38095n;
            this.f38095n = j - 1;
            dun.m53749g0(bArr, j, value);
        }

        @Override // com.google.protobuf.Writer
        public void writeBool(int i, boolean z) {
            mo30050V(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeBytes(int fieldNumber, ByteString value) {
            try {
                value.writeToReverse(this);
                mo30050V(10);
                mo30079z0(value.size());
                writeTag(fieldNumber, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed32(int fieldNumber, int value) {
            mo30050V(9);
            mo30056b0(value);
            writeTag(fieldNumber, 5);
        }

        @Override // com.google.protobuf.Writer
        public void writeFixed64(int fieldNumber, long value) {
            mo30050V(13);
            mo30059e0(value);
            writeTag(fieldNumber, 1);
        }

        @Override // com.google.protobuf.Writer
        public void writeInt32(int fieldNumber, int value) {
            mo30050V(15);
            mo30064j0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(byte[] value, int offset, int length) {
            if (offset >= 0 && offset + length <= value.length) {
                if (spaceLeft() < length) {
                    this.f38073d += length;
                    this.f38072c.addFirst(AbstractC14537v9.m57759l(value, offset, length));
                    m30144E0();
                    return;
                } else {
                    this.f38095n -= length;
                    System.arraycopy(value, offset, this.f38090i, m30142B0() + 1, length);
                    return;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(value.length), Integer.valueOf(offset), Integer.valueOf(length)));
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt32(int fieldNumber, int value) {
            mo30050V(10);
            mo30068o0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeSInt64(int fieldNumber, long value) {
            mo30050V(15);
            mo30071r0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeString(int fieldNumber, String value) {
            int totalBytesWritten = getTotalBytesWritten();
            mo30074u0(value);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        public void writeTag(int fieldNumber, int wireType) {
            mo30079z0(WireFormat.m29722a(fieldNumber, wireType));
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt32(int fieldNumber, int value) {
            mo30050V(10);
            mo30079z0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        public void writeUInt64(int fieldNumber, long value) {
            mo30050V(15);
            mo30043A0(value);
            writeTag(fieldNumber, 0);
        }

        @Override // com.google.protobuf.Writer
        /* renamed from: z */
        public void mo29752z(int fieldNumber, Object value) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            d9l.m53616a().m53626k(value, this);
            int totalBytesWritten2 = getTotalBytesWritten() - totalBytesWritten;
            mo30050V(10);
            mo30079z0(totalBytesWritten2);
            writeTag(fieldNumber, 2);
        }

        @Override // com.google.protobuf.AbstractC6865d
        /* renamed from: z0 */
        public void mo30079z0(int value) {
            if ((value & (-128)) == 0) {
                m30149J0(value);
                return;
            }
            if ((value & TIFFTag.f97946g) == 0) {
                m30151L0(value);
                return;
            }
            if (((-2097152) & value) == 0) {
                m30150K0(value);
            } else if (((-268435456) & value) == 0) {
                m30148I0(value);
            } else {
                m30147H0(value);
            }
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(byte[] value, int offset, int length) {
            if (offset >= 0 && offset + length <= value.length) {
                mo30050V(length);
                this.f38095n -= length;
                System.arraycopy(value, offset, this.f38090i, m30142B0() + 1, length);
                return;
            }
            throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(value.length), Integer.valueOf(offset), Integer.valueOf(length)));
        }

        @Override // com.google.protobuf.ByteOutput
        public void write(ByteBuffer value) {
            int remaining = value.remaining();
            mo30050V(remaining);
            this.f38095n -= remaining;
            value.get(this.f38090i, m30142B0() + 1, remaining);
        }

        @Override // com.google.protobuf.ByteOutput
        public void writeLazy(ByteBuffer value) {
            int remaining = value.remaining();
            if (spaceLeft() < remaining) {
                this.f38073d += remaining;
                this.f38072c.addFirst(AbstractC14537v9.m57757j(value));
                m30144E0();
            }
            this.f38095n -= remaining;
            value.get(this.f38090i, m30142B0() + 1, remaining);
        }
    }

    public /* synthetic */ AbstractC6865d(AbstractC13849hv abstractC13849hv, int i, a aVar) {
        this(abstractC13849hv, i);
    }

    /* renamed from: F */
    public static byte m30031F(long value) {
        byte b2;
        if (((-128) & value) == 0) {
            return (byte) 1;
        }
        if (value < 0) {
            return (byte) 10;
        }
        if (((-34359738368L) & value) != 0) {
            b2 = (byte) 6;
            value >>>= 28;
        } else {
            b2 = 2;
        }
        if ((CoroutineScheduler.f98641q & value) != 0) {
            b2 = (byte) (b2 + 2);
            value >>>= 14;
        }
        return (value & (-16384)) != 0 ? (byte) (b2 + 1) : b2;
    }

    /* renamed from: H */
    public static boolean m30032H() {
        return d.m30119B0();
    }

    /* renamed from: I */
    public static boolean m30033I() {
        return e.m30141D0();
    }

    /* renamed from: L */
    public static AbstractC6865d m30034L(AbstractC13849hv alloc) {
        return m30035M(alloc, 4096);
    }

    /* renamed from: M */
    public static AbstractC6865d m30035M(AbstractC13849hv alloc, int chunkSize) {
        return m30032H() ? m30040T(alloc, chunkSize) : m30038R(alloc, chunkSize);
    }

    /* renamed from: P */
    public static AbstractC6865d m30036P(AbstractC13849hv alloc) {
        return m30037Q(alloc, 4096);
    }

    /* renamed from: Q */
    public static AbstractC6865d m30037Q(AbstractC13849hv alloc, int chunkSize) {
        return m30033I() ? m30041U(alloc, chunkSize) : m30039S(alloc, chunkSize);
    }

    /* renamed from: R */
    public static AbstractC6865d m30038R(AbstractC13849hv alloc, int chunkSize) {
        return new b(alloc, chunkSize);
    }

    /* renamed from: S */
    public static AbstractC6865d m30039S(AbstractC13849hv alloc, int chunkSize) {
        return new c(alloc, chunkSize);
    }

    /* renamed from: T */
    public static AbstractC6865d m30040T(AbstractC13849hv alloc, int chunkSize) {
        if (m30032H()) {
            return new d(alloc, chunkSize);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    /* renamed from: U */
    public static AbstractC6865d m30041U(AbstractC13849hv alloc, int chunkSize) {
        if (m30033I()) {
            return new e(alloc, chunkSize);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    /* renamed from: n0 */
    public static final void m30042n0(Writer writer, int fieldNumber, WireFormat.FieldType fieldType, Object object) throws IOException {
        switch (a.f38074a[fieldType.ordinal()]) {
            case 1:
                writer.writeBool(fieldNumber, ((Boolean) object).booleanValue());
                return;
            case 2:
                writer.writeFixed32(fieldNumber, ((Integer) object).intValue());
                return;
            case 3:
                writer.writeFixed64(fieldNumber, ((Long) object).longValue());
                return;
            case 4:
                writer.writeInt32(fieldNumber, ((Integer) object).intValue());
                return;
            case 5:
                writer.writeInt64(fieldNumber, ((Long) object).longValue());
                return;
            case 6:
                writer.writeSFixed32(fieldNumber, ((Integer) object).intValue());
                return;
            case 7:
                writer.writeSFixed64(fieldNumber, ((Long) object).longValue());
                return;
            case 8:
                writer.writeSInt32(fieldNumber, ((Integer) object).intValue());
                return;
            case 9:
                writer.writeSInt64(fieldNumber, ((Long) object).longValue());
                return;
            case 10:
                writer.writeString(fieldNumber, (String) object);
                return;
            case 11:
                writer.writeUInt32(fieldNumber, ((Integer) object).intValue());
                return;
            case 12:
                writer.writeUInt64(fieldNumber, ((Long) object).longValue());
                return;
            case 13:
                writer.writeFloat(fieldNumber, ((Float) object).floatValue());
                return;
            case 14:
                writer.writeDouble(fieldNumber, ((Double) object).doubleValue());
                return;
            case 15:
                writer.mo29752z(fieldNumber, object);
                return;
            case 16:
                writer.writeBytes(fieldNumber, (ByteString) object);
                return;
            case 17:
                if (object instanceof Internal.EnumLite) {
                    writer.writeEnum(fieldNumber, ((Internal.EnumLite) object).getNumber());
                    return;
                } else {
                    if (!(object instanceof Integer)) {
                        throw new IllegalArgumentException("Unexpected type for enum in map.");
                    }
                    writer.writeEnum(fieldNumber, ((Integer) object).intValue());
                    return;
                }
            default:
                throw new IllegalArgumentException("Unsupported map value type for: " + fieldType);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: A */
    public final void mo29724A(int fieldNumber, List<Boolean> list, boolean packed) throws IOException {
        if (list instanceof C6867e) {
            m30052X(fieldNumber, (C6867e) list, packed);
        } else {
            m30053Y(fieldNumber, list, packed);
        }
    }

    /* renamed from: A0 */
    public abstract void mo30043A0(long value);

    @Override // com.google.protobuf.Writer
    /* renamed from: C */
    public final void mo29726C(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        mo29730d(fieldNumber, list, packed);
    }

    @bnd
    /* renamed from: E */
    public final Queue<AbstractC14537v9> m30044E() {
        mo30045G();
        return this.f38072c;
    }

    /* renamed from: G */
    public abstract void mo30045G();

    /* renamed from: J */
    public final AbstractC14537v9 m30046J() {
        return this.f38070a.mo54631a(this.f38071b);
    }

    /* renamed from: K */
    public final AbstractC14537v9 m30047K(int capacity) {
        return this.f38070a.mo54631a(Math.max(capacity, this.f38071b));
    }

    /* renamed from: N */
    public final AbstractC14537v9 m30048N() {
        return this.f38070a.mo54632b(this.f38071b);
    }

    /* renamed from: O */
    public final AbstractC14537v9 m30049O(int capacity) {
        return this.f38070a.mo54632b(Math.max(capacity, this.f38071b));
    }

    /* renamed from: V */
    public abstract void mo30050V(int size);

    /* renamed from: W */
    public abstract void mo30051W(boolean value);

    /* renamed from: X */
    public final void m30052X(int fieldNumber, C6867e list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeBool(fieldNumber, list.getBoolean(size));
            }
            return;
        }
        mo30050V(list.size() + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30051W(list.getBoolean(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    /* renamed from: Y */
    public final void m30053Y(int fieldNumber, List<Boolean> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeBool(fieldNumber, list.get(size).booleanValue());
            }
            return;
        }
        mo30050V(list.size() + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30051W(list.get(size2).booleanValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    /* renamed from: Z */
    public final void m30054Z(int fieldNumber, C6872i list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeDouble(fieldNumber, list.getDouble(size));
            }
            return;
        }
        mo30050V((list.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30059e0(Double.doubleToRawLongBits(list.getDouble(size2)));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    /* renamed from: a */
    public final void mo29727a(int fieldNumber, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            mo29725B(fieldNumber, list.get(size));
        }
    }

    /* renamed from: a0 */
    public final void m30055a0(int fieldNumber, List<Double> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeDouble(fieldNumber, list.get(size).doubleValue());
            }
            return;
        }
        mo30050V((list.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30059e0(Double.doubleToRawLongBits(list.get(size2).doubleValue()));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: b */
    public final void mo29728b(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C6877n) {
            m30065k0(fieldNumber, (C6877n) list, packed);
        } else {
            m30066l0(fieldNumber, list, packed);
        }
    }

    /* renamed from: b0 */
    public abstract void mo30056b0(int value);

    @Override // com.google.protobuf.Writer
    /* renamed from: c */
    public final void mo29729c(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C6877n) {
            m30057c0(fieldNumber, (C6877n) list, packed);
        } else {
            m30058d0(fieldNumber, list, packed);
        }
    }

    /* renamed from: c0 */
    public final void m30057c0(int fieldNumber, C6877n list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed32(fieldNumber, list.getInt(size));
            }
            return;
        }
        mo30050V((list.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30056b0(list.getInt(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: d */
    public final void mo29730d(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (list instanceof C6879p) {
            m30077x0(fieldNumber, (C6879p) list, packed);
        } else {
            m30078y0(fieldNumber, list, packed);
        }
    }

    /* renamed from: d0 */
    public final void m30058d0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed32(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        mo30050V((list.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30056b0(list.get(size2).intValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    /* renamed from: e0 */
    public abstract void mo30059e0(long value);

    @Override // com.google.protobuf.Writer
    /* renamed from: f */
    public final void mo29732f(int fieldNumber, List<ByteString> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeBytes(fieldNumber, list.get(size));
        }
    }

    /* renamed from: f0 */
    public final void m30060f0(int fieldNumber, C6879p list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed64(fieldNumber, list.getLong(size));
            }
            return;
        }
        mo30050V((list.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30059e0(list.getLong(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: g */
    public final void mo29733g(int fieldNumber, List<?> list, InterfaceC6889z schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            mo29737k(fieldNumber, list.get(size), schema);
        }
    }

    /* renamed from: g0 */
    public final void m30061g0(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed64(fieldNumber, list.get(size).longValue());
            }
            return;
        }
        mo30050V((list.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30059e0(list.get(size2).longValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    public abstract int getTotalBytesWritten();

    /* renamed from: h0 */
    public final void m30062h0(int fieldNumber, C6876m list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFloat(fieldNumber, list.getFloat(size));
            }
            return;
        }
        mo30050V((list.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30056b0(Float.floatToRawIntBits(list.getFloat(size2)));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: i */
    public final void mo29735i(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (list instanceof C6879p) {
            m30072s0(fieldNumber, (C6879p) list, packed);
        } else {
            m30073t0(fieldNumber, list, packed);
        }
    }

    /* renamed from: i0 */
    public final void m30063i0(int fieldNumber, List<Float> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFloat(fieldNumber, list.get(size).floatValue());
            }
            return;
        }
        mo30050V((list.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30056b0(Float.floatToRawIntBits(list.get(size2).floatValue()));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    @Deprecated
    /* renamed from: j */
    public final void mo29736j(int fieldNumber, List<?> list, InterfaceC6889z schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            mo29734h(fieldNumber, list.get(size), schema);
        }
    }

    /* renamed from: j0 */
    public abstract void mo30064j0(int value);

    /* renamed from: k0 */
    public final void m30065k0(int fieldNumber, C6877n list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeInt32(fieldNumber, list.getInt(size));
            }
            return;
        }
        mo30050V((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30064j0(list.getInt(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: l */
    public final Writer.FieldOrder mo29738l() {
        return Writer.FieldOrder.DESCENDING;
    }

    /* renamed from: l0 */
    public final void m30066l0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeInt32(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        mo30050V((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30064j0(list.get(size2).intValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: m */
    public final void mo29739m(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        mo29729c(fieldNumber, list, packed);
    }

    /* renamed from: m0 */
    public final void m30067m0(int fieldNumber, Object value) throws IOException {
        if (value instanceof String) {
            writeString(fieldNumber, (String) value);
        } else {
            writeBytes(fieldNumber, (ByteString) value);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: n */
    public final void mo29740n(int fieldNumber, List<Float> list, boolean packed) throws IOException {
        if (list instanceof C6876m) {
            m30062h0(fieldNumber, (C6876m) list, packed);
        } else {
            m30063i0(fieldNumber, list, packed);
        }
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: o */
    public final void mo29741o(int fieldNumber, Object value) throws IOException {
        writeTag(1, 4);
        if (value instanceof ByteString) {
            writeBytes(3, (ByteString) value);
        } else {
            mo29752z(3, value);
        }
        writeUInt32(2, fieldNumber);
        writeTag(1, 3);
    }

    /* renamed from: o0 */
    public abstract void mo30068o0(int value);

    @Override // com.google.protobuf.Writer
    /* renamed from: p */
    public final void mo29742p(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C6877n) {
            m30075v0(fieldNumber, (C6877n) list, packed);
        } else {
            m30076w0(fieldNumber, list, packed);
        }
    }

    /* renamed from: p0 */
    public final void m30069p0(int fieldNumber, C6877n list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt32(fieldNumber, list.getInt(size));
            }
            return;
        }
        mo30050V((list.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30068o0(list.getInt(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: q */
    public final void mo29743q(int fieldNumber, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            mo29752z(fieldNumber, list.get(size));
        }
    }

    /* renamed from: q0 */
    public final void m30070q0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt32(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        mo30050V((list.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30068o0(list.get(size2).intValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    /* renamed from: r0 */
    public abstract void mo30071r0(long value);

    @Override // com.google.protobuf.Writer
    /* renamed from: s */
    public final void mo29745s(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (list instanceof C6879p) {
            m30060f0(fieldNumber, (C6879p) list, packed);
        } else {
            m30061g0(fieldNumber, list, packed);
        }
    }

    /* renamed from: s0 */
    public final void m30072s0(int fieldNumber, C6879p list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt64(fieldNumber, list.getLong(size));
            }
            return;
        }
        mo30050V((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30071r0(list.getLong(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: t */
    public <K, V> void mo29746t(int fieldNumber, MapEntryLite.C6795b<K, V> metadata, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            int totalBytesWritten = getTotalBytesWritten();
            m30042n0(this, 2, metadata.f37717c, entry.getValue());
            m30042n0(this, 1, metadata.f37715a, entry.getKey());
            mo30079z0(getTotalBytesWritten() - totalBytesWritten);
            writeTag(fieldNumber, 2);
        }
    }

    /* renamed from: t0 */
    public final void m30073t0(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt64(fieldNumber, list.get(size).longValue());
            }
            return;
        }
        mo30050V((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30071r0(list.get(size2).longValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: u */
    public final void mo29747u(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (list instanceof C6877n) {
            m30069p0(fieldNumber, (C6877n) list, packed);
        } else {
            m30070q0(fieldNumber, list, packed);
        }
    }

    /* renamed from: u0 */
    public abstract void mo30074u0(String in);

    @Override // com.google.protobuf.Writer
    /* renamed from: v */
    public final void mo29748v(int fieldNumber, List<Double> list, boolean packed) throws IOException {
        if (list instanceof C6872i) {
            m30054Z(fieldNumber, (C6872i) list, packed);
        } else {
            m30055a0(fieldNumber, list, packed);
        }
    }

    /* renamed from: v0 */
    public final void m30075v0(int fieldNumber, C6877n list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt32(fieldNumber, list.getInt(size));
            }
            return;
        }
        mo30050V((list.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30079z0(list.getInt(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: w */
    public final void mo29749w(int fieldNumber, List<String> list) throws IOException {
        if (!(list instanceof LazyStringList)) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeString(fieldNumber, list.get(size));
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            m30067m0(fieldNumber, lazyStringList.getRaw(size2));
        }
    }

    /* renamed from: w0 */
    public final void m30076w0(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt32(fieldNumber, list.get(size).intValue());
            }
            return;
        }
        mo30050V((list.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30079z0(list.get(size2).intValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    public final void writeDouble(int fieldNumber, double value) throws IOException {
        writeFixed64(fieldNumber, Double.doubleToRawLongBits(value));
    }

    @Override // com.google.protobuf.Writer
    public final void writeEnum(int fieldNumber, int value) throws IOException {
        writeInt32(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public final void writeFloat(int fieldNumber, float value) throws IOException {
        writeFixed32(fieldNumber, Float.floatToRawIntBits(value));
    }

    @Override // com.google.protobuf.Writer
    public final void writeInt64(int fieldNumber, long value) throws IOException {
        writeUInt64(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public final void writeSFixed32(int fieldNumber, int value) throws IOException {
        writeFixed32(fieldNumber, value);
    }

    @Override // com.google.protobuf.Writer
    public final void writeSFixed64(int fieldNumber, long value) throws IOException {
        writeFixed64(fieldNumber, value);
    }

    public abstract void writeTag(int fieldNumber, int wireType);

    @Override // com.google.protobuf.Writer
    /* renamed from: x */
    public final void mo29750x(int fieldNumber, List<Integer> list, boolean packed) throws IOException {
        mo29728b(fieldNumber, list, packed);
    }

    /* renamed from: x0 */
    public final void m30077x0(int fieldNumber, C6879p list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt64(fieldNumber, list.getLong(size));
            }
            return;
        }
        mo30050V((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30043A0(list.getLong(size2));
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    @Override // com.google.protobuf.Writer
    /* renamed from: y */
    public final void mo29751y(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        mo29745s(fieldNumber, list, packed);
    }

    /* renamed from: y0 */
    public final void m30078y0(int fieldNumber, List<Long> list, boolean packed) throws IOException {
        if (!packed) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt64(fieldNumber, list.get(size).longValue());
            }
            return;
        }
        mo30050V((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            mo30043A0(list.get(size2).longValue());
        }
        mo30079z0(getTotalBytesWritten() - totalBytesWritten);
        writeTag(fieldNumber, 2);
    }

    /* renamed from: z0 */
    public abstract void mo30079z0(int value);

    public AbstractC6865d(AbstractC13849hv alloc, int chunkSize) {
        this.f38072c = new ArrayDeque<>(4);
        if (chunkSize > 0) {
            this.f38070a = (AbstractC13849hv) Internal.m29344b(alloc, "alloc");
            this.f38071b = chunkSize;
            return;
        }
        throw new IllegalArgumentException("chunkSize must be > 0");
    }
}
