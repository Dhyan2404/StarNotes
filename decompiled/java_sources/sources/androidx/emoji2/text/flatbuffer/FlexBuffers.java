package androidx.emoji2.text.flatbuffer;

import com.sunia.HTREnginev2.bdl;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class FlexBuffers {
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    /* renamed from: a */
    public static final bdl f7073a = new ArrayReadWriteBuf(new byte[]{0}, 1);

    /* renamed from: b */
    public static final /* synthetic */ boolean f7074b = false;

    /* loaded from: classes3.dex */
    public static class Blob extends AbstractC1046b {

        /* renamed from: d */
        public static final Blob f7075d = new Blob(FlexBuffers.f7073a, 1, 1);

        /* renamed from: e */
        public static final /* synthetic */ boolean f7076e = false;

        public Blob(bdl bdlVar, int i, int i2) {
            super(bdlVar, i, i2);
        }

        public static Blob empty() {
            return f7075d;
        }

        public ByteBuffer data() {
            ByteBuffer wrap = ByteBuffer.wrap(this.f7089a.data());
            wrap.position(this.f7090b);
            wrap.limit(this.f7090b + size());
            return wrap.asReadOnlyBuffer().slice();
        }

        public byte get(int i) {
            return this.f7089a.get(this.f7090b + i);
        }

        public byte[] getBytes() {
            int size = size();
            byte[] bArr = new byte[size];
            for (int i = 0; i < size; i++) {
                bArr[i] = this.f7089a.get(this.f7090b + i);
            }
            return bArr;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1046b
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1045a
        public String toString() {
            return this.f7089a.getString(this.f7090b, size());
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1045a
        public StringBuilder toString(StringBuilder sb) {
            sb.append('\"');
            sb.append(this.f7089a.getString(this.f7090b, size()));
            sb.append('\"');
            return sb;
        }
    }

    /* loaded from: classes3.dex */
    public static class FlexBufferException extends RuntimeException {
        public FlexBufferException(String str) {
            super(str);
        }
    }

    /* loaded from: classes3.dex */
    public static class Key extends AbstractC1045a {

        /* renamed from: d */
        public static final Key f7077d = new Key(FlexBuffers.f7073a, 0, 0);

        public Key(bdl bdlVar, int i, int i2) {
            super(bdlVar, i, i2);
        }

        public static Key empty() {
            return f7077d;
        }

        /* renamed from: b */
        public int m4315b(byte[] bArr) {
            byte b;
            byte b2;
            int i = this.f7090b;
            int i2 = 0;
            do {
                b = this.f7089a.get(i);
                b2 = bArr[i2];
                if (b == 0) {
                    return b - b2;
                }
                i++;
                i2++;
                if (i2 == bArr.length) {
                    return b - b2;
                }
            } while (b == b2);
            return b - b2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return key.f7090b == this.f7090b && key.f7091c == this.f7091c;
        }

        public int hashCode() {
            return this.f7091c ^ this.f7090b;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1045a
        public StringBuilder toString(StringBuilder sb) {
            sb.append(toString());
            return sb;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1045a
        public String toString() {
            int i = this.f7090b;
            while (this.f7089a.get(i) != 0) {
                i++;
            }
            int i2 = this.f7090b;
            return this.f7089a.getString(i2, i - i2);
        }
    }

    /* loaded from: classes3.dex */
    public static class KeyVector {

        /* renamed from: a */
        public final TypedVector f7078a;

        public KeyVector(TypedVector typedVector) {
            this.f7078a = typedVector;
        }

        public Key get(int i) {
            if (i >= size()) {
                return Key.f7077d;
            }
            TypedVector typedVector = this.f7078a;
            int i2 = typedVector.f7090b + (i * typedVector.f7091c);
            TypedVector typedVector2 = this.f7078a;
            bdl bdlVar = typedVector2.f7089a;
            return new Key(bdlVar, FlexBuffers.m4304g(bdlVar, i2, typedVector2.f7091c), 1);
        }

        public int size() {
            return this.f7078a.size();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (int i = 0; i < this.f7078a.size(); i++) {
                this.f7078a.get(i).m4318b(sb);
                if (i != this.f7078a.size() - 1) {
                    sb.append(", ");
                }
            }
            sb.append(IteratorUtils.f104924b);
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static class Map extends Vector {

        /* renamed from: e */
        public static final Map f7079e = new Map(FlexBuffers.f7073a, 1, 1);

        public Map(bdl bdlVar, int i, int i2) {
            super(bdlVar, i, i2);
        }

        public static Map empty() {
            return f7079e;
        }

        /* renamed from: a */
        public final int m4316a(KeyVector keyVector, byte[] bArr) {
            int size = keyVector.size() - 1;
            int i = 0;
            while (i <= size) {
                int i2 = (i + size) >>> 1;
                int m4315b = keyVector.get(i2).m4315b(bArr);
                if (m4315b < 0) {
                    i = i2 + 1;
                } else {
                    if (m4315b <= 0) {
                        return i2;
                    }
                    size = i2 - 1;
                }
            }
            return -(i + 1);
        }

        public Reference get(String str) {
            return get(str.getBytes(StandardCharsets.UTF_8));
        }

        public KeyVector keys() {
            int i = this.f7090b - (this.f7091c * 3);
            bdl bdlVar = this.f7089a;
            int m4304g = FlexBuffers.m4304g(bdlVar, i, this.f7091c);
            bdl bdlVar2 = this.f7089a;
            int i2 = this.f7091c;
            return new KeyVector(new TypedVector(bdlVar, m4304g, FlexBuffers.m4309l(bdlVar2, i + i2, i2), 4));
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1045a
        public StringBuilder toString(StringBuilder sb) {
            sb.append("{ ");
            KeyVector keys = keys();
            int size = size();
            Vector values = values();
            for (int i = 0; i < size; i++) {
                sb.append('\"');
                sb.append(keys.get(i).toString());
                sb.append("\" : ");
                sb.append(values.get(i).toString());
                if (i != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" }");
            return sb;
        }

        public Vector values() {
            return new Vector(this.f7089a, this.f7090b, this.f7091c);
        }

        public Reference get(byte[] bArr) {
            KeyVector keys = keys();
            int size = keys.size();
            int m4316a = m4316a(keys, bArr);
            if (m4316a >= 0 && m4316a < size) {
                return get(m4316a);
            }
            return Reference.f7080f;
        }
    }

    /* loaded from: classes3.dex */
    public static class Reference {

        /* renamed from: f */
        public static final Reference f7080f = new Reference(FlexBuffers.f7073a, 0, 1, 0);

        /* renamed from: a */
        public bdl f7081a;

        /* renamed from: b */
        public int f7082b;

        /* renamed from: c */
        public int f7083c;

        /* renamed from: d */
        public int f7084d;

        /* renamed from: e */
        public int f7085e;

        public Reference(bdl bdlVar, int i, int i2, int i3) {
            this(bdlVar, i, i2, 1 << (i3 & 3), i3 >> 2);
        }

        public Blob asBlob() {
            if (!isBlob() && !isString()) {
                return Blob.empty();
            }
            bdl bdlVar = this.f7081a;
            return new Blob(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
        }

        public boolean asBoolean() {
            return isBoolean() ? this.f7081a.get(this.f7082b) != 0 : asUInt() != 0;
        }

        public double asFloat() {
            int i = this.f7085e;
            if (i == 3) {
                return FlexBuffers.m4308k(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 1) {
                return FlexBuffers.m4309l(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i != 2) {
                if (i == 5) {
                    return Double.parseDouble(asString());
                }
                if (i == 6) {
                    bdl bdlVar = this.f7081a;
                    return FlexBuffers.m4309l(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
                }
                if (i == 7) {
                    bdl bdlVar2 = this.f7081a;
                    return FlexBuffers.m4311n(bdlVar2, FlexBuffers.m4304g(bdlVar2, this.f7082b, this.f7083c), this.f7084d);
                }
                if (i == 8) {
                    bdl bdlVar3 = this.f7081a;
                    return FlexBuffers.m4308k(bdlVar3, FlexBuffers.m4304g(bdlVar3, this.f7082b, this.f7083c), this.f7084d);
                }
                if (i == 10) {
                    return asVector().size();
                }
                if (i != 26) {
                    return 0.0d;
                }
            }
            return FlexBuffers.m4311n(this.f7081a, this.f7082b, this.f7083c);
        }

        public int asInt() {
            int i = this.f7085e;
            if (i == 1) {
                return FlexBuffers.m4309l(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 2) {
                return (int) FlexBuffers.m4311n(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 3) {
                return (int) FlexBuffers.m4308k(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 5) {
                return Integer.parseInt(asString());
            }
            if (i == 6) {
                bdl bdlVar = this.f7081a;
                return FlexBuffers.m4309l(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
            }
            if (i == 7) {
                bdl bdlVar2 = this.f7081a;
                return (int) FlexBuffers.m4311n(bdlVar2, FlexBuffers.m4304g(bdlVar2, this.f7082b, this.f7083c), this.f7083c);
            }
            if (i == 8) {
                bdl bdlVar3 = this.f7081a;
                return (int) FlexBuffers.m4308k(bdlVar3, FlexBuffers.m4304g(bdlVar3, this.f7082b, this.f7083c), this.f7084d);
            }
            if (i == 10) {
                return asVector().size();
            }
            if (i != 26) {
                return 0;
            }
            return FlexBuffers.m4309l(this.f7081a, this.f7082b, this.f7083c);
        }

        public Key asKey() {
            if (!isKey()) {
                return Key.empty();
            }
            bdl bdlVar = this.f7081a;
            return new Key(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
        }

        public long asLong() {
            int i = this.f7085e;
            if (i == 1) {
                return FlexBuffers.m4310m(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 2) {
                return FlexBuffers.m4311n(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 3) {
                return (long) FlexBuffers.m4308k(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 5) {
                try {
                    return Long.parseLong(asString());
                } catch (NumberFormatException unused) {
                    return 0L;
                }
            }
            if (i == 6) {
                bdl bdlVar = this.f7081a;
                return FlexBuffers.m4310m(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
            }
            if (i == 7) {
                bdl bdlVar2 = this.f7081a;
                return FlexBuffers.m4311n(bdlVar2, FlexBuffers.m4304g(bdlVar2, this.f7082b, this.f7083c), this.f7083c);
            }
            if (i == 8) {
                bdl bdlVar3 = this.f7081a;
                return (long) FlexBuffers.m4308k(bdlVar3, FlexBuffers.m4304g(bdlVar3, this.f7082b, this.f7083c), this.f7084d);
            }
            if (i == 10) {
                return asVector().size();
            }
            if (i != 26) {
                return 0L;
            }
            return FlexBuffers.m4309l(this.f7081a, this.f7082b, this.f7083c);
        }

        public Map asMap() {
            if (!isMap()) {
                return Map.empty();
            }
            bdl bdlVar = this.f7081a;
            return new Map(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
        }

        public String asString() {
            if (isString()) {
                int m4304g = FlexBuffers.m4304g(this.f7081a, this.f7082b, this.f7083c);
                bdl bdlVar = this.f7081a;
                int i = this.f7084d;
                return this.f7081a.getString(m4304g, (int) FlexBuffers.m4311n(bdlVar, m4304g - i, i));
            }
            if (!isKey()) {
                return "";
            }
            int m4304g2 = FlexBuffers.m4304g(this.f7081a, this.f7082b, this.f7084d);
            int i2 = m4304g2;
            while (this.f7081a.get(i2) != 0) {
                i2++;
            }
            return this.f7081a.getString(m4304g2, i2 - m4304g2);
        }

        public long asUInt() {
            int i = this.f7085e;
            if (i == 2) {
                return FlexBuffers.m4311n(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 1) {
                return FlexBuffers.m4310m(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 3) {
                return (long) FlexBuffers.m4308k(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 10) {
                return asVector().size();
            }
            if (i == 26) {
                return FlexBuffers.m4309l(this.f7081a, this.f7082b, this.f7083c);
            }
            if (i == 5) {
                return Long.parseLong(asString());
            }
            if (i == 6) {
                bdl bdlVar = this.f7081a;
                return FlexBuffers.m4310m(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
            }
            if (i == 7) {
                bdl bdlVar2 = this.f7081a;
                return FlexBuffers.m4311n(bdlVar2, FlexBuffers.m4304g(bdlVar2, this.f7082b, this.f7083c), this.f7084d);
            }
            if (i != 8) {
                return 0L;
            }
            bdl bdlVar3 = this.f7081a;
            return (long) FlexBuffers.m4308k(bdlVar3, FlexBuffers.m4304g(bdlVar3, this.f7082b, this.f7083c), this.f7083c);
        }

        public Vector asVector() {
            if (isVector()) {
                bdl bdlVar = this.f7081a;
                return new Vector(bdlVar, FlexBuffers.m4304g(bdlVar, this.f7082b, this.f7083c), this.f7084d);
            }
            int i = this.f7085e;
            if (i == 15) {
                bdl bdlVar2 = this.f7081a;
                return new TypedVector(bdlVar2, FlexBuffers.m4304g(bdlVar2, this.f7082b, this.f7083c), this.f7084d, 4);
            }
            if (!FlexBuffers.m4306i(i)) {
                return Vector.empty();
            }
            bdl bdlVar3 = this.f7081a;
            return new TypedVector(bdlVar3, FlexBuffers.m4304g(bdlVar3, this.f7082b, this.f7083c), this.f7084d, FlexBuffers.m4313p(this.f7085e));
        }

        /* renamed from: b */
        public StringBuilder m4318b(StringBuilder sb) {
            int i = this.f7085e;
            if (i != 36) {
                switch (i) {
                    case 0:
                        sb.append("null");
                        return sb;
                    case 1:
                    case 6:
                        sb.append(asLong());
                        return sb;
                    case 2:
                    case 7:
                        sb.append(asUInt());
                        return sb;
                    case 3:
                    case 8:
                        sb.append(asFloat());
                        return sb;
                    case 4:
                        Key asKey = asKey();
                        sb.append('\"');
                        StringBuilder key = asKey.toString(sb);
                        key.append('\"');
                        return key;
                    case 5:
                        sb.append('\"');
                        sb.append(asString());
                        sb.append('\"');
                        return sb;
                    case 9:
                        return asMap().toString(sb);
                    case 10:
                        return asVector().toString(sb);
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        throw new FlexBufferException("not_implemented:" + this.f7085e);
                    case 25:
                        return asBlob().toString(sb);
                    case 26:
                        sb.append(asBoolean());
                        return sb;
                    default:
                        return sb;
                }
            }
            sb.append(asVector());
            return sb;
        }

        public int getType() {
            return this.f7085e;
        }

        public boolean isBlob() {
            return this.f7085e == 25;
        }

        public boolean isBoolean() {
            return this.f7085e == 26;
        }

        public boolean isFloat() {
            int i = this.f7085e;
            return i == 3 || i == 8;
        }

        public boolean isInt() {
            int i = this.f7085e;
            return i == 1 || i == 6;
        }

        public boolean isIntOrUInt() {
            return isInt() || isUInt();
        }

        public boolean isKey() {
            return this.f7085e == 4;
        }

        public boolean isMap() {
            return this.f7085e == 9;
        }

        public boolean isNull() {
            return this.f7085e == 0;
        }

        public boolean isNumeric() {
            return isIntOrUInt() || isFloat();
        }

        public boolean isString() {
            return this.f7085e == 5;
        }

        public boolean isTypedVector() {
            return FlexBuffers.m4306i(this.f7085e);
        }

        public boolean isUInt() {
            int i = this.f7085e;
            return i == 2 || i == 7;
        }

        public boolean isVector() {
            int i = this.f7085e;
            return i == 10 || i == 9;
        }

        public String toString() {
            return m4318b(new StringBuilder(128)).toString();
        }

        public Reference(bdl bdlVar, int i, int i2, int i3, int i4) {
            this.f7081a = bdlVar;
            this.f7082b = i;
            this.f7083c = i2;
            this.f7084d = i3;
            this.f7085e = i4;
        }
    }

    /* loaded from: classes3.dex */
    public static class TypedVector extends Vector {

        /* renamed from: f */
        public static final TypedVector f7086f = new TypedVector(FlexBuffers.f7073a, 1, 1, 1);

        /* renamed from: e */
        public final int f7087e;

        public TypedVector(bdl bdlVar, int i, int i2, int i3) {
            super(bdlVar, i, i2);
            this.f7087e = i3;
        }

        public static TypedVector empty() {
            return f7086f;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public Reference get(int i) {
            if (i >= size()) {
                return Reference.f7080f;
            }
            return new Reference(this.f7089a, this.f7090b + (i * this.f7091c), this.f7091c, 1, this.f7087e);
        }

        public int getElemType() {
            return this.f7087e;
        }

        public boolean isEmptyVector() {
            return this == f7086f;
        }
    }

    /* loaded from: classes3.dex */
    public static class Vector extends AbstractC1046b {

        /* renamed from: d */
        public static final Vector f7088d = new Vector(FlexBuffers.f7073a, 1, 1);

        public Vector(bdl bdlVar, int i, int i2) {
            super(bdlVar, i, i2);
        }

        public static Vector empty() {
            return f7088d;
        }

        public Reference get(int i) {
            long size = size();
            long j = i;
            if (j >= size) {
                return Reference.f7080f;
            }
            return new Reference(this.f7089a, this.f7090b + (i * this.f7091c), this.f7091c, C1047c.m4319a(this.f7089a.get((int) (this.f7090b + (size * this.f7091c) + j))));
        }

        public boolean isEmpty() {
            return this == f7088d;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1046b
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1045a
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.AbstractC1045a
        public StringBuilder toString(StringBuilder sb) {
            sb.append("[ ");
            int size = size();
            for (int i = 0; i < size; i++) {
                get(i).m4318b(sb);
                if (i != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" ]");
            return sb;
        }
    }

    /* renamed from: androidx.emoji2.text.flatbuffer.FlexBuffers$a */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1045a {

        /* renamed from: a */
        public bdl f7089a;

        /* renamed from: b */
        public int f7090b;

        /* renamed from: c */
        public int f7091c;

        public AbstractC1045a(bdl bdlVar, int i, int i2) {
            this.f7089a = bdlVar;
            this.f7090b = i;
            this.f7091c = i2;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }

        public abstract StringBuilder toString(StringBuilder sb);
    }

    /* renamed from: androidx.emoji2.text.flatbuffer.FlexBuffers$b */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1046b extends AbstractC1045a {
        protected final int size;

        public AbstractC1046b(bdl bdlVar, int i, int i2) {
            super(bdlVar, i, i2);
            this.size = FlexBuffers.m4309l(this.f7089a, i - i2, i2);
        }

        public int size() {
            return this.size;
        }
    }

    /* renamed from: androidx.emoji2.text.flatbuffer.FlexBuffers$c */
    /* loaded from: classes3.dex */
    public static class C1047c {
        /* renamed from: a */
        public static int m4319a(byte b) {
            return b & 255;
        }

        /* renamed from: b */
        public static long m4320b(int i) {
            return i & 4294967295L;
        }

        /* renamed from: c */
        public static int m4321c(short s) {
            return s & 65535;
        }
    }

    /* renamed from: g */
    public static int m4304g(bdl bdlVar, int i, int i2) {
        return (int) (i - m4311n(bdlVar, i, i2));
    }

    @Deprecated
    public static Reference getRoot(ByteBuffer byteBuffer) {
        return getRoot(byteBuffer.hasArray() ? new ArrayReadWriteBuf(byteBuffer.array(), byteBuffer.limit()) : new ByteBufferReadWriteBuf(byteBuffer));
    }

    /* renamed from: h */
    public static boolean m4305h(int i) {
        return i <= 3 || i == 26;
    }

    /* renamed from: i */
    public static boolean m4306i(int i) {
        return (i >= 11 && i <= 15) || i == 36;
    }

    /* renamed from: j */
    public static boolean m4307j(int i) {
        return (i >= 1 && i <= 4) || i == 26;
    }

    /* renamed from: k */
    public static double m4308k(bdl bdlVar, int i, int i2) {
        if (i2 == 4) {
            return bdlVar.getFloat(i);
        }
        if (i2 != 8) {
            return -1.0d;
        }
        return bdlVar.getDouble(i);
    }

    /* renamed from: l */
    public static int m4309l(bdl bdlVar, int i, int i2) {
        return (int) m4310m(bdlVar, i, i2);
    }

    /* renamed from: m */
    public static long m4310m(bdl bdlVar, int i, int i2) {
        int i3;
        if (i2 == 1) {
            i3 = bdlVar.get(i);
        } else if (i2 == 2) {
            i3 = bdlVar.getShort(i);
        } else {
            if (i2 != 4) {
                if (i2 != 8) {
                    return -1L;
                }
                return bdlVar.getLong(i);
            }
            i3 = bdlVar.getInt(i);
        }
        return i3;
    }

    /* renamed from: n */
    public static long m4311n(bdl bdlVar, int i, int i2) {
        if (i2 == 1) {
            return C1047c.m4319a(bdlVar.get(i));
        }
        if (i2 == 2) {
            return C1047c.m4321c(bdlVar.getShort(i));
        }
        if (i2 == 4) {
            return C1047c.m4320b(bdlVar.getInt(i));
        }
        if (i2 != 8) {
            return -1L;
        }
        return bdlVar.getLong(i);
    }

    /* renamed from: o */
    public static int m4312o(int i, int i2) {
        if (i2 == 0) {
            return (i - 1) + 11;
        }
        if (i2 == 2) {
            return (i - 1) + 16;
        }
        if (i2 == 3) {
            return (i - 1) + 19;
        }
        if (i2 != 4) {
            return 0;
        }
        return (i - 1) + 22;
    }

    /* renamed from: p */
    public static int m4313p(int i) {
        return (i - 11) + 1;
    }

    public static Reference getRoot(bdl bdlVar) {
        int limit = bdlVar.limit() - 1;
        byte b = bdlVar.get(limit);
        int i = limit - 1;
        return new Reference(bdlVar, i - b, b, C1047c.m4319a(bdlVar.get(i)));
    }
}
