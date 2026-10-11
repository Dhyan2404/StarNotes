package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.proto.C6462a;
import com.google.firebase.encoders.proto.Protobuf;
import com.sunia.HTREnginev2.g9l;
import com.sunia.HTREnginev2.xxi;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.firebase.encoders.proto.a */
/* loaded from: classes6.dex */
public final class C6462a implements ObjectEncoderContext {

    /* renamed from: f */
    public static final Charset f35876f = Charset.forName("UTF-8");

    /* renamed from: g */
    public static final FieldDescriptor f35877g = FieldDescriptor.builder("key").withProperty(AtProtobuf.builder().tag(1).build()).build();

    /* renamed from: h */
    public static final FieldDescriptor f35878h = FieldDescriptor.builder("value").withProperty(AtProtobuf.builder().tag(2).build()).build();

    /* renamed from: i */
    public static final ObjectEncoder<Map.Entry<Object, Object>> f35879i = new ObjectEncoder() { // from class: com.sunia.HTREnginev2.e9l
        @Override // com.sunia.HTREnginev2.gpf
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            C6462a.m28097r((Map.Entry) obj, objectEncoderContext);
        }
    };

    /* renamed from: a */
    public OutputStream f35880a;

    /* renamed from: b */
    public final Map<Class<?>, ObjectEncoder<?>> f35881b;

    /* renamed from: c */
    public final Map<Class<?>, ValueEncoder<?>> f35882c;

    /* renamed from: d */
    public final ObjectEncoder<Object> f35883d;

    /* renamed from: e */
    public final g9l f35884e = new g9l(this);

    /* renamed from: com.google.firebase.encoders.proto.a$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f35885a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f35885a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35885a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35885a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C6462a(OutputStream outputStream, Map<Class<?>, ObjectEncoder<?>> map, Map<Class<?>, ValueEncoder<?>> map2, ObjectEncoder<Object> objectEncoder) {
        this.f35880a = outputStream;
        this.f35881b = map;
        this.f35882c = map2;
        this.f35883d = objectEncoder;
    }

    /* renamed from: k */
    public static ByteBuffer m28094k(int i) {
        return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* renamed from: p */
    public static Protobuf m28095p(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) fieldDescriptor.getProperty(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    /* renamed from: q */
    public static int m28096q(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) fieldDescriptor.getProperty(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    /* renamed from: r */
    public static /* synthetic */ void m28097r(Map.Entry entry, ObjectEncoderContext objectEncoderContext) throws IOException {
        objectEncoderContext.add(f35877g, entry.getKey());
        objectEncoderContext.add(f35878h, entry.getValue());
    }

    /* renamed from: b */
    public ObjectEncoderContext m28098b(@NonNull FieldDescriptor fieldDescriptor, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return this;
        }
        m28111s((m28096q(fieldDescriptor) << 3) | 1);
        this.f35880a.write(m28094k(8).putDouble(d).array());
        return this;
    }

    /* renamed from: c */
    public ObjectEncoderContext m28099c(@NonNull FieldDescriptor fieldDescriptor, float f, boolean z) throws IOException {
        if (z && f == 0.0f) {
            return this;
        }
        m28111s((m28096q(fieldDescriptor) << 3) | 5);
        this.f35880a.write(m28094k(4).putFloat(f).array());
        return this;
    }

    /* renamed from: d */
    public ObjectEncoderContext m28100d(@NonNull FieldDescriptor fieldDescriptor, @Nullable Object obj, boolean z) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return this;
            }
            m28111s((m28096q(fieldDescriptor) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f35876f);
            m28111s(bytes.length);
            this.f35880a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it2 = ((Collection) obj).iterator();
            while (it2.hasNext()) {
                m28100d(fieldDescriptor, it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it3 = ((Map) obj).entrySet().iterator();
            while (it3.hasNext()) {
                m28108m(f35879i, fieldDescriptor, (Map.Entry) it3.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return m28098b(fieldDescriptor, ((Double) obj).doubleValue(), z);
        }
        if (obj instanceof Float) {
            return m28099c(fieldDescriptor, ((Float) obj).floatValue(), z);
        }
        if (obj instanceof Number) {
            return m28104h(fieldDescriptor, ((Number) obj).longValue(), z);
        }
        if (obj instanceof Boolean) {
            return m28106j(fieldDescriptor, ((Boolean) obj).booleanValue(), z);
        }
        if (!(obj instanceof byte[])) {
            ObjectEncoder<?> objectEncoder = this.f35881b.get(obj.getClass());
            if (objectEncoder != null) {
                return m28108m(objectEncoder, fieldDescriptor, obj, z);
            }
            ValueEncoder<?> valueEncoder = this.f35882c.get(obj.getClass());
            return valueEncoder != null ? m28109n(valueEncoder, fieldDescriptor, obj, z) : obj instanceof ProtoEnum ? add(fieldDescriptor, ((ProtoEnum) obj).getNumber()) : obj instanceof Enum ? add(fieldDescriptor, ((Enum) obj).ordinal()) : m28108m(this.f35883d, fieldDescriptor, obj, z);
        }
        byte[] bArr = (byte[]) obj;
        if (z && bArr.length == 0) {
            return this;
        }
        m28111s((m28096q(fieldDescriptor) << 3) | 2);
        m28111s(bArr.length);
        this.f35880a.write(bArr);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public C6462a add(@NonNull FieldDescriptor fieldDescriptor, int i) throws IOException {
        return m28102f(fieldDescriptor, i, true);
    }

    /* renamed from: f */
    public C6462a m28102f(@NonNull FieldDescriptor fieldDescriptor, int i, boolean z) throws IOException {
        if (z && i == 0) {
            return this;
        }
        Protobuf m28095p = m28095p(fieldDescriptor);
        int i2 = a.f35885a[m28095p.intEncoding().ordinal()];
        if (i2 == 1) {
            m28111s(m28095p.tag() << 3);
            m28111s(i);
        } else if (i2 == 2) {
            m28111s(m28095p.tag() << 3);
            m28111s((i << 1) ^ (i >> 31));
        } else if (i2 == 3) {
            m28111s((m28095p.tag() << 3) | 5);
            this.f35880a.write(m28094k(4).putInt(i).array());
        }
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public C6462a add(@NonNull FieldDescriptor fieldDescriptor, long j) throws IOException {
        return m28104h(fieldDescriptor, j, true);
    }

    /* renamed from: h */
    public C6462a m28104h(@NonNull FieldDescriptor fieldDescriptor, long j, boolean z) throws IOException {
        if (z && j == 0) {
            return this;
        }
        Protobuf m28095p = m28095p(fieldDescriptor);
        int i = a.f35885a[m28095p.intEncoding().ordinal()];
        if (i == 1) {
            m28111s(m28095p.tag() << 3);
            m28112t(j);
        } else if (i == 2) {
            m28111s(m28095p.tag() << 3);
            m28112t((j >> 63) ^ (j << 1));
        } else if (i == 3) {
            m28111s((m28095p.tag() << 3) | 1);
            this.f35880a.write(m28094k(8).putLong(j).array());
        }
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public C6462a add(@NonNull FieldDescriptor fieldDescriptor, boolean z) throws IOException {
        return m28106j(fieldDescriptor, z, true);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext inline(@Nullable Object obj) throws IOException {
        return m28110o(obj);
    }

    /* renamed from: j */
    public C6462a m28106j(@NonNull FieldDescriptor fieldDescriptor, boolean z, boolean z2) throws IOException {
        return m28102f(fieldDescriptor, z ? 1 : 0, z2);
    }

    /* renamed from: l */
    public final <T> long m28107l(ObjectEncoder<T> objectEncoder, T t) throws IOException {
        xxi xxiVar = new xxi();
        try {
            OutputStream outputStream = this.f35880a;
            this.f35880a = xxiVar;
            try {
                objectEncoder.encode(t, this);
                this.f35880a = outputStream;
                long m58362f = xxiVar.m58362f();
                xxiVar.close();
                return m58362f;
            } catch (Throwable th) {
                this.f35880a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                xxiVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    /* renamed from: m */
    public final <T> C6462a m28108m(ObjectEncoder<T> objectEncoder, FieldDescriptor fieldDescriptor, T t, boolean z) throws IOException {
        long m28107l = m28107l(objectEncoder, t);
        if (z && m28107l == 0) {
            return this;
        }
        m28111s((m28096q(fieldDescriptor) << 3) | 2);
        m28112t(m28107l);
        objectEncoder.encode(t, this);
        return this;
    }

    /* renamed from: n */
    public final <T> C6462a m28109n(ValueEncoder<T> valueEncoder, FieldDescriptor fieldDescriptor, T t, boolean z) throws IOException {
        this.f35884e.m54244b(fieldDescriptor, z);
        valueEncoder.encode(t, this.f35884e);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext nested(@NonNull String str) throws IOException {
        return nested(FieldDescriptor.m28079of(str));
    }

    /* renamed from: o */
    public C6462a m28110o(@Nullable Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        ObjectEncoder<?> objectEncoder = this.f35881b.get(obj.getClass());
        if (objectEncoder != null) {
            objectEncoder.encode(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }

    /* renamed from: s */
    public final void m28111s(int i) throws IOException {
        while ((i & (-128)) != 0) {
            this.f35880a.write((i & 127) | 128);
            i >>>= 7;
        }
        this.f35880a.write(i & 127);
    }

    /* renamed from: t */
    public final void m28112t(long j) throws IOException {
        while (((-128) & j) != 0) {
            this.f35880a.write((((int) j) & 127) | 128);
            j >>>= 7;
        }
        this.f35880a.write(((int) j) & 127);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext nested(@NonNull FieldDescriptor fieldDescriptor) throws IOException {
        throw new EncodingException("nested() is not implemented for protobuf encoding.");
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull String str, @Nullable Object obj) throws IOException {
        return add(FieldDescriptor.m28079of(str), obj);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull String str, double d) throws IOException {
        return add(FieldDescriptor.m28079of(str), d);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull String str, int i) throws IOException {
        return add(FieldDescriptor.m28079of(str), i);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull String str, long j) throws IOException {
        return add(FieldDescriptor.m28079of(str), j);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull String str, boolean z) throws IOException {
        return add(FieldDescriptor.m28079of(str), z);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, @Nullable Object obj) throws IOException {
        return m28100d(fieldDescriptor, obj, true);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, double d) throws IOException {
        return m28098b(fieldDescriptor, d, true);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, float f) throws IOException {
        return m28099c(fieldDescriptor, f, true);
    }
}
