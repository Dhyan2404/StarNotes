package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes6.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();

    /* renamed from: k */
    public static final double f36140k = -1.0d;

    /* renamed from: h */
    public boolean f36144h;

    /* renamed from: e */
    public double f36141e = -1.0d;

    /* renamed from: f */
    public int f36142f = 136;

    /* renamed from: g */
    public boolean f36143g = true;

    /* renamed from: i */
    public List<ExclusionStrategy> f36145i = Collections.emptyList();

    /* renamed from: j */
    public List<ExclusionStrategy> f36146j = Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.Excluder$a */
    /* loaded from: classes6.dex */
    public class C6526a<T> extends TypeAdapter<T> {

        /* renamed from: a */
        public volatile TypeAdapter<T> f36147a;

        /* renamed from: b */
        public final /* synthetic */ boolean f36148b;

        /* renamed from: c */
        public final /* synthetic */ boolean f36149c;

        /* renamed from: d */
        public final /* synthetic */ Gson f36150d;

        /* renamed from: e */
        public final /* synthetic */ TypeToken f36151e;

        public C6526a(boolean z, boolean z2, Gson gson, TypeToken typeToken) {
            this.f36148b = z;
            this.f36149c = z2;
            this.f36150d = gson;
            this.f36151e = typeToken;
        }

        /* renamed from: a */
        public final TypeAdapter<T> m28241a() {
            TypeAdapter<T> typeAdapter = this.f36147a;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            TypeAdapter<T> delegateAdapter = this.f36150d.getDelegateAdapter(Excluder.this, this.f36151e);
            this.f36147a = delegateAdapter;
            return delegateAdapter;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            if (!this.f36148b) {
                return m28241a().read(jsonReader);
            }
            jsonReader.skipValue();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            if (this.f36149c) {
                jsonWriter.nullValue();
            } else {
                m28241a().write(jsonWriter, t);
            }
        }
    }

    /* renamed from: a */
    public static boolean m28237a(Class<?> cls) {
        return cls.isMemberClass() && !ReflectionHelper.isStatic(cls);
    }

    /* renamed from: b */
    public final boolean m28238b(Since since) {
        if (since != null) {
            return this.f36141e >= since.value();
        }
        return true;
    }

    /* renamed from: c */
    public final boolean m28239c(Until until) {
        if (until != null) {
            return this.f36141e < until.value();
        }
        return true;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        boolean excludeClass = excludeClass(rawType, true);
        boolean excludeClass2 = excludeClass(rawType, false);
        if (excludeClass || excludeClass2) {
            return new C6526a(excludeClass2, excludeClass, gson, typeToken);
        }
        return null;
    }

    /* renamed from: d */
    public final boolean m28240d(Since since, Until until) {
        return m28238b(since) && m28239c(until);
    }

    public Excluder disableInnerClassSerialization() {
        Excluder m72164clone = m72164clone();
        m72164clone.f36143g = false;
        return m72164clone;
    }

    public boolean excludeClass(Class<?> cls, boolean z) {
        if (this.f36141e != -1.0d && !m28240d((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return true;
        }
        if (!this.f36143g && m28237a(cls)) {
            return true;
        }
        if (!z && !Enum.class.isAssignableFrom(cls) && ReflectionHelper.isAnonymousOrNonStaticLocal(cls)) {
            return true;
        }
        Iterator<ExclusionStrategy> it2 = (z ? this.f36145i : this.f36146j).iterator();
        while (it2.hasNext()) {
            if (it2.next().shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean excludeField(Field field, boolean z) {
        Expose expose;
        if ((this.f36142f & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.f36141e != -1.0d && !m28240d((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) || field.isSynthetic()) {
            return true;
        }
        if ((this.f36144h && ((expose = (Expose) field.getAnnotation(Expose.class)) == null || (!z ? expose.deserialize() : expose.serialize()))) || excludeClass(field.getType(), z)) {
            return true;
        }
        List<ExclusionStrategy> list = z ? this.f36145i : this.f36146j;
        if (list.isEmpty()) {
            return false;
        }
        FieldAttributes fieldAttributes = new FieldAttributes(field);
        Iterator<ExclusionStrategy> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next().shouldSkipField(fieldAttributes)) {
                return true;
            }
        }
        return false;
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder m72164clone = m72164clone();
        m72164clone.f36144h = true;
        return m72164clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z, boolean z2) {
        Excluder m72164clone = m72164clone();
        if (z) {
            ArrayList arrayList = new ArrayList(this.f36145i);
            m72164clone.f36145i = arrayList;
            arrayList.add(exclusionStrategy);
        }
        if (z2) {
            ArrayList arrayList2 = new ArrayList(this.f36146j);
            m72164clone.f36146j = arrayList2;
            arrayList2.add(exclusionStrategy);
        }
        return m72164clone;
    }

    public Excluder withModifiers(int... iArr) {
        Excluder m72164clone = m72164clone();
        m72164clone.f36142f = 0;
        for (int i : iArr) {
            m72164clone.f36142f = i | m72164clone.f36142f;
        }
        return m72164clone;
    }

    public Excluder withVersion(double d) {
        Excluder m72164clone = m72164clone();
        m72164clone.f36141e = d;
        return m72164clone;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Excluder m72164clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
