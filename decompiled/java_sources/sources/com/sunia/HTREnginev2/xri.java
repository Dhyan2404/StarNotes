package com.sunia.HTREnginev2;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes6.dex */
public final class xri implements ObjectEncoderContext, ValueEncoderContext {

    /* renamed from: a */
    public xri f89990a = null;

    /* renamed from: b */
    public boolean f89991b = true;

    /* renamed from: c */
    public final JsonWriter f89992c;

    /* renamed from: d */
    public final Map<Class<?>, ObjectEncoder<?>> f89993d;

    /* renamed from: e */
    public final Map<Class<?>, ValueEncoder<?>> f89994e;

    /* renamed from: f */
    public final ObjectEncoder<Object> f89995f;

    /* renamed from: g */
    public final boolean f89996g;

    public xri(@NonNull Writer writer, @NonNull Map<Class<?>, ObjectEncoder<?>> map, @NonNull Map<Class<?>, ValueEncoder<?>> map2, ObjectEncoder<Object> objectEncoder, boolean z) {
        this.f89992c = new JsonWriter(writer);
        this.f89993d = map;
        this.f89994e = map2;
        this.f89995f = objectEncoder;
        this.f89996g = z;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public xri add(double d) throws IOException {
        m58324s();
        this.f89992c.value(d);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public xri add(float f) throws IOException {
        m58324s();
        this.f89992c.value(f);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public xri add(int i) throws IOException {
        m58324s();
        this.f89992c.value(i);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public xri add(long j) throws IOException {
        m58324s();
        this.f89992c.value(j);
        return this;
    }

    @NonNull
    /* renamed from: e */
    public xri m58310e(@Nullable Object obj, boolean z) throws IOException {
        int i = 0;
        if (z && m58319n(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new EncodingException(String.format("%s cannot be encoded inline", objArr));
        }
        if (obj == null) {
            this.f89992c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.f89992c.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.f89992c.beginArray();
                Iterator it2 = ((Collection) obj).iterator();
                while (it2.hasNext()) {
                    m58310e(it2.next(), false);
                }
                this.f89992c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.f89992c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        add((String) key, entry.getValue());
                    } catch (ClassCastException e) {
                        throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                this.f89992c.endObject();
                return this;
            }
            ObjectEncoder<?> objectEncoder = this.f89993d.get(obj.getClass());
            if (objectEncoder != null) {
                return m58321p(objectEncoder, obj, z);
            }
            ValueEncoder<?> valueEncoder = this.f89994e.get(obj.getClass());
            if (valueEncoder != null) {
                valueEncoder.encode(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return m58321p(this.f89995f, obj, z);
            }
            add(((Enum) obj).name());
            return this;
        }
        if (obj instanceof byte[]) {
            return add((byte[]) obj);
        }
        this.f89992c.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i < length) {
                this.f89992c.value(r6[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                add(jArr[i]);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                this.f89992c.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                this.f89992c.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                m58310e(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                m58310e(obj2, false);
            }
        }
        this.f89992c.endArray();
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public xri add(@Nullable String str) throws IOException {
        m58324s();
        this.f89992c.value(str);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public xri add(@NonNull String str, double d) throws IOException {
        m58324s();
        this.f89992c.name(str);
        return add(d);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public xri add(@NonNull String str, int i) throws IOException {
        m58324s();
        this.f89992c.name(str);
        return add(i);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public xri add(@NonNull String str, long j) throws IOException {
        m58324s();
        this.f89992c.name(str);
        return add(j);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext inline(@Nullable Object obj) throws IOException {
        return m58310e(obj, true);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public xri add(@NonNull String str, @Nullable Object obj) throws IOException {
        return this.f89996g ? m58323r(str, obj) : m58322q(str, obj);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public xri add(@NonNull String str, boolean z) throws IOException {
        m58324s();
        this.f89992c.name(str);
        return add(z);
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public xri add(boolean z) throws IOException {
        m58324s();
        this.f89992c.value(z);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public xri add(@Nullable byte[] bArr) throws IOException {
        m58324s();
        if (bArr == null) {
            this.f89992c.nullValue();
        } else {
            this.f89992c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* renamed from: n */
    public final boolean m58319n(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext nested(@NonNull String str) throws IOException {
        m58324s();
        this.f89990a = new xri(this);
        this.f89992c.name(str);
        this.f89992c.beginObject();
        return this.f89990a;
    }

    /* renamed from: o */
    public void m58320o() throws IOException {
        m58324s();
        this.f89992c.flush();
    }

    /* renamed from: p */
    public xri m58321p(ObjectEncoder<Object> objectEncoder, Object obj, boolean z) throws IOException {
        if (!z) {
            this.f89992c.beginObject();
        }
        objectEncoder.encode(obj, this);
        if (!z) {
            this.f89992c.endObject();
        }
        return this;
    }

    /* renamed from: q */
    public final xri m58322q(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        m58324s();
        this.f89992c.name(str);
        if (obj != null) {
            return m58310e(obj, false);
        }
        this.f89992c.nullValue();
        return this;
    }

    /* renamed from: r */
    public final xri m58323r(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        if (obj == null) {
            return this;
        }
        m58324s();
        this.f89992c.name(str);
        return m58310e(obj, false);
    }

    /* renamed from: s */
    public final void m58324s() throws IOException {
        if (!this.f89991b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        xri xriVar = this.f89990a;
        if (xriVar != null) {
            xriVar.m58324s();
            this.f89990a.f89991b = false;
            this.f89990a = null;
            this.f89992c.endObject();
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext nested(@NonNull FieldDescriptor fieldDescriptor) throws IOException {
        return nested(fieldDescriptor.getName());
    }

    public xri(xri xriVar) {
        this.f89992c = xriVar.f89992c;
        this.f89993d = xriVar.f89993d;
        this.f89994e = xriVar.f89994e;
        this.f89995f = xriVar.f89995f;
        this.f89996g = xriVar.f89996g;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, @Nullable Object obj) throws IOException {
        return add(fieldDescriptor.getName(), obj);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, float f) throws IOException {
        return add(fieldDescriptor.getName(), f);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, double d) throws IOException {
        return add(fieldDescriptor.getName(), d);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, int i) throws IOException {
        return add(fieldDescriptor.getName(), i);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, long j) throws IOException {
        return add(fieldDescriptor.getName(), j);
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    @NonNull
    public ObjectEncoderContext add(@NonNull FieldDescriptor fieldDescriptor, boolean z) throws IOException {
        return add(fieldDescriptor.getName(), z);
    }
}
