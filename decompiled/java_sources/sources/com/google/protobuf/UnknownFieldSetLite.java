package com.google.protobuf;

import com.google.protobuf.Writer;
import com.sunia.HTREnginev2.bnd;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes6.dex */
public final class UnknownFieldSetLite {

    /* renamed from: f */
    public static final int f37933f = 8;

    /* renamed from: g */
    public static final UnknownFieldSetLite f37934g = new UnknownFieldSetLite(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f37935a;

    /* renamed from: b */
    public int[] f37936b;

    /* renamed from: c */
    public Object[] f37937c;

    /* renamed from: d */
    public int f37938d;

    /* renamed from: e */
    public boolean f37939e;

    public UnknownFieldSetLite() {
        this(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    public static int m29629c(int[] tags, int count) {
        int i = 17;
        for (int i2 = 0; i2 < count; i2++) {
            i = (i * 31) + tags[i2];
        }
        return i;
    }

    /* renamed from: d */
    public static int m29630d(Object[] objects, int count) {
        int i = 17;
        for (int i2 = 0; i2 < count; i2++) {
            i = (i * 31) + objects[i2].hashCode();
        }
        return i;
    }

    public static UnknownFieldSetLite getDefaultInstance() {
        return f37934g;
    }

    /* renamed from: j */
    public static UnknownFieldSetLite m29631j(UnknownFieldSetLite first, UnknownFieldSetLite second) {
        int i = first.f37935a + second.f37935a;
        int[] copyOf = Arrays.copyOf(first.f37936b, i);
        System.arraycopy(second.f37936b, 0, copyOf, first.f37935a, second.f37935a);
        Object[] copyOf2 = Arrays.copyOf(first.f37937c, i);
        System.arraycopy(second.f37937c, 0, copyOf2, first.f37935a, second.f37935a);
        return new UnknownFieldSetLite(i, copyOf, copyOf2, true);
    }

    /* renamed from: k */
    public static UnknownFieldSetLite m29632k() {
        return new UnknownFieldSetLite();
    }

    /* renamed from: l */
    public static boolean m29633l(Object[] objects1, Object[] objects2, int count) {
        for (int i = 0; i < count; i++) {
            if (!objects1[i].equals(objects2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: o */
    public static boolean m29634o(int[] tags1, int[] tags2, int count) {
        for (int i = 0; i < count; i++) {
            if (tags1[i] != tags2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: q */
    public static void m29635q(int tag, Object object, Writer writer) throws IOException {
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            writer.writeInt64(tagFieldNumber, ((Long) object).longValue());
            return;
        }
        if (tagWireType == 1) {
            writer.writeFixed64(tagFieldNumber, ((Long) object).longValue());
            return;
        }
        if (tagWireType == 2) {
            writer.writeBytes(tagFieldNumber, (ByteString) object);
            return;
        }
        if (tagWireType != 3) {
            if (tagWireType != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
            }
            writer.writeFixed32(tagFieldNumber, ((Integer) object).intValue());
        } else if (writer.mo29738l() == Writer.FieldOrder.ASCENDING) {
            writer.mo29744r(tagFieldNumber);
            ((UnknownFieldSetLite) object).writeTo(writer);
            writer.mo29731e(tagFieldNumber);
        } else {
            writer.mo29731e(tagFieldNumber);
            ((UnknownFieldSetLite) object).writeTo(writer);
            writer.mo29744r(tagFieldNumber);
        }
    }

    /* renamed from: a */
    public void m29636a() {
        if (!this.f37939e) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: b */
    public final void m29637b(int minCapacity) {
        int[] iArr = this.f37936b;
        if (minCapacity > iArr.length) {
            int i = this.f37935a;
            int i2 = i + (i / 2);
            if (i2 >= minCapacity) {
                minCapacity = i2;
            }
            if (minCapacity < 8) {
                minCapacity = 8;
            }
            this.f37936b = Arrays.copyOf(iArr, minCapacity);
            this.f37937c = Arrays.copyOf(this.f37937c, minCapacity);
        }
    }

    /* renamed from: e */
    public boolean m29638e(final int tag, final CodedInputStream input) throws IOException {
        m29636a();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            m29644n(tag, Long.valueOf(input.readInt64()));
            return true;
        }
        if (tagWireType == 1) {
            m29644n(tag, Long.valueOf(input.readFixed64()));
            return true;
        }
        if (tagWireType == 2) {
            m29644n(tag, input.readBytes());
            return true;
        }
        if (tagWireType == 3) {
            UnknownFieldSetLite unknownFieldSetLite = new UnknownFieldSetLite();
            unknownFieldSetLite.m29639f(input);
            input.checkLastTagWas(WireFormat.m29722a(tagFieldNumber, 4));
            m29644n(tag, unknownFieldSetLite);
            return true;
        }
        if (tagWireType == 4) {
            return false;
        }
        if (tagWireType != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        m29644n(tag, Integer.valueOf(input.readFixed32()));
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnknownFieldSetLite)) {
            return false;
        }
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        int i = this.f37935a;
        return i == unknownFieldSetLite.f37935a && m29634o(this.f37936b, unknownFieldSetLite.f37936b, i) && m29633l(this.f37937c, unknownFieldSetLite.f37937c, this.f37935a);
    }

    /* renamed from: f */
    public final UnknownFieldSetLite m29639f(final CodedInputStream input) throws IOException {
        int readTag;
        do {
            readTag = input.readTag();
            if (readTag == 0) {
                break;
            }
        } while (m29638e(readTag, input));
        return this;
    }

    @bnd
    /* renamed from: g */
    public UnknownFieldSetLite m29640g(UnknownFieldSetLite other) {
        if (other.equals(getDefaultInstance())) {
            return this;
        }
        m29636a();
        int i = this.f37935a + other.f37935a;
        m29637b(i);
        System.arraycopy(other.f37936b, 0, this.f37936b, this.f37935a, other.f37935a);
        System.arraycopy(other.f37937c, 0, this.f37937c, this.f37935a, other.f37935a);
        this.f37935a = i;
        return this;
    }

    public int getSerializedSize() {
        int computeUInt64Size;
        int i = this.f37938d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f37935a; i3++) {
            int i4 = this.f37936b[i3];
            int tagFieldNumber = WireFormat.getTagFieldNumber(i4);
            int tagWireType = WireFormat.getTagWireType(i4);
            if (tagWireType == 0) {
                computeUInt64Size = CodedOutputStream.computeUInt64Size(tagFieldNumber, ((Long) this.f37937c[i3]).longValue());
            } else if (tagWireType == 1) {
                computeUInt64Size = CodedOutputStream.computeFixed64Size(tagFieldNumber, ((Long) this.f37937c[i3]).longValue());
            } else if (tagWireType == 2) {
                computeUInt64Size = CodedOutputStream.computeBytesSize(tagFieldNumber, (ByteString) this.f37937c[i3]);
            } else if (tagWireType == 3) {
                computeUInt64Size = (CodedOutputStream.computeTagSize(tagFieldNumber) * 2) + ((UnknownFieldSetLite) this.f37937c[i3]).getSerializedSize();
            } else {
                if (tagWireType != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
                }
                computeUInt64Size = CodedOutputStream.computeFixed32Size(tagFieldNumber, ((Integer) this.f37937c[i3]).intValue());
            }
            i2 += computeUInt64Size;
        }
        this.f37938d = i2;
        return i2;
    }

    public int getSerializedSizeAsMessageSet() {
        int i = this.f37938d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f37935a; i3++) {
            i2 += CodedOutputStream.computeRawMessageSetExtensionSize(WireFormat.getTagFieldNumber(this.f37936b[i3]), (ByteString) this.f37937c[i3]);
        }
        this.f37938d = i2;
        return i2;
    }

    /* renamed from: h */
    public UnknownFieldSetLite m29641h(final int fieldNumber, final ByteString value) {
        m29636a();
        if (fieldNumber == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        m29644n(WireFormat.m29722a(fieldNumber, 2), value);
        return this;
    }

    public int hashCode() {
        int i = this.f37935a;
        return ((((527 + i) * 31) + m29629c(this.f37936b, i)) * 31) + m29630d(this.f37937c, this.f37935a);
    }

    /* renamed from: i */
    public UnknownFieldSetLite m29642i(int fieldNumber, int value) {
        m29636a();
        if (fieldNumber == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        m29644n(WireFormat.m29722a(fieldNumber, 0), Long.valueOf(value));
        return this;
    }

    /* renamed from: m */
    public final void m29643m(StringBuilder buffer, int indent) {
        for (int i = 0; i < this.f37935a; i++) {
            C6883t.m30323d(buffer, indent, String.valueOf(WireFormat.getTagFieldNumber(this.f37936b[i])), this.f37937c[i]);
        }
    }

    public void makeImmutable() {
        if (this.f37939e) {
            this.f37939e = false;
        }
    }

    /* renamed from: n */
    public void m29644n(int tag, Object value) {
        m29636a();
        m29637b(this.f37935a + 1);
        int[] iArr = this.f37936b;
        int i = this.f37935a;
        iArr[i] = tag;
        this.f37937c[i] = value;
        this.f37935a = i + 1;
    }

    /* renamed from: p */
    public void m29645p(Writer writer) throws IOException {
        if (writer.mo29738l() == Writer.FieldOrder.DESCENDING) {
            for (int i = this.f37935a - 1; i >= 0; i--) {
                writer.mo29741o(WireFormat.getTagFieldNumber(this.f37936b[i]), this.f37937c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f37935a; i2++) {
            writer.mo29741o(WireFormat.getTagFieldNumber(this.f37936b[i2]), this.f37937c[i2]);
        }
    }

    public void writeAsMessageSetTo(CodedOutputStream output) throws IOException {
        for (int i = 0; i < this.f37935a; i++) {
            output.writeRawMessageSetExtension(WireFormat.getTagFieldNumber(this.f37936b[i]), (ByteString) this.f37937c[i]);
        }
    }

    public void writeTo(CodedOutputStream output) throws IOException {
        for (int i = 0; i < this.f37935a; i++) {
            int i2 = this.f37936b[i];
            int tagFieldNumber = WireFormat.getTagFieldNumber(i2);
            int tagWireType = WireFormat.getTagWireType(i2);
            if (tagWireType == 0) {
                output.writeUInt64(tagFieldNumber, ((Long) this.f37937c[i]).longValue());
            } else if (tagWireType == 1) {
                output.writeFixed64(tagFieldNumber, ((Long) this.f37937c[i]).longValue());
            } else if (tagWireType == 2) {
                output.writeBytes(tagFieldNumber, (ByteString) this.f37937c[i]);
            } else if (tagWireType == 3) {
                output.writeTag(tagFieldNumber, 3);
                ((UnknownFieldSetLite) this.f37937c[i]).writeTo(output);
                output.writeTag(tagFieldNumber, 4);
            } else if (tagWireType == 5) {
                output.writeFixed32(tagFieldNumber, ((Integer) this.f37937c[i]).intValue());
            } else {
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }
    }

    public UnknownFieldSetLite(int count, int[] tags, Object[] objects, boolean isMutable) {
        this.f37938d = -1;
        this.f37935a = count;
        this.f37936b = tags;
        this.f37937c = objects;
        this.f37939e = isMutable;
    }

    public void writeTo(Writer writer) throws IOException {
        if (this.f37935a == 0) {
            return;
        }
        if (writer.mo29738l() == Writer.FieldOrder.ASCENDING) {
            for (int i = 0; i < this.f37935a; i++) {
                m29635q(this.f37936b[i], this.f37937c[i], writer);
            }
            return;
        }
        for (int i2 = this.f37935a - 1; i2 >= 0; i2--) {
            m29635q(this.f37936b[i2], this.f37937c[i2], writer);
        }
    }
}
