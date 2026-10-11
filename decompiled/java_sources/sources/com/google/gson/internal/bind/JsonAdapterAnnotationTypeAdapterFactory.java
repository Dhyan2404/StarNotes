package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes6.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: g */
    public static final TypeAdapterFactory f36193g;

    /* renamed from: h */
    public static final TypeAdapterFactory f36194h;

    /* renamed from: e */
    public final ConstructorConstructor f36195e;

    /* renamed from: f */
    public final ConcurrentMap<Class<?>, TypeAdapterFactory> f36196f = new ConcurrentHashMap();

    /* renamed from: com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory$b */
    /* loaded from: classes6.dex */
    public static class C6545b implements TypeAdapterFactory {
        private C6545b() {
        }

        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            throw new AssertionError("Factory should not be used");
        }
    }

    static {
        f36193g = new C6545b();
        f36194h = new C6545b();
    }

    public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.f36195e = constructorConstructor;
    }

    /* renamed from: a */
    public static Object m28266a(ConstructorConstructor constructorConstructor, Class<?> cls) {
        return constructorConstructor.get(TypeToken.get((Class) cls)).construct();
    }

    /* renamed from: b */
    public static JsonAdapter m28267b(Class<?> cls) {
        return (JsonAdapter) cls.getAnnotation(JsonAdapter.class);
    }

    /* renamed from: c */
    public TypeAdapter<?> m28268c(ConstructorConstructor constructorConstructor, Gson gson, TypeToken<?> typeToken, JsonAdapter jsonAdapter, boolean z) {
        TypeAdapter<?> treeTypeAdapter;
        Object m28266a = m28266a(constructorConstructor, jsonAdapter.value());
        boolean nullSafe = jsonAdapter.nullSafe();
        if (m28266a instanceof TypeAdapter) {
            treeTypeAdapter = (TypeAdapter) m28266a;
        } else if (m28266a instanceof TypeAdapterFactory) {
            TypeAdapterFactory typeAdapterFactory = (TypeAdapterFactory) m28266a;
            if (z) {
                typeAdapterFactory = m28269d(typeToken.getRawType(), typeAdapterFactory);
            }
            treeTypeAdapter = typeAdapterFactory.create(gson, typeToken);
        } else {
            boolean z2 = m28266a instanceof JsonSerializer;
            if (!z2 && !(m28266a instanceof JsonDeserializer)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + m28266a.getClass().getName() + " as a @JsonAdapter for " + typeToken.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            treeTypeAdapter = new TreeTypeAdapter<>(z2 ? (JsonSerializer) m28266a : null, m28266a instanceof JsonDeserializer ? (JsonDeserializer) m28266a : null, gson, typeToken, z ? f36193g : f36194h, nullSafe);
            nullSafe = false;
        }
        return (treeTypeAdapter == null || !nullSafe) ? treeTypeAdapter : treeTypeAdapter.nullSafe();
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        JsonAdapter m28267b = m28267b(typeToken.getRawType());
        if (m28267b == null) {
            return null;
        }
        return (TypeAdapter<T>) m28268c(this.f36195e, gson, typeToken, m28267b, true);
    }

    /* renamed from: d */
    public final TypeAdapterFactory m28269d(Class<?> cls, TypeAdapterFactory typeAdapterFactory) {
        TypeAdapterFactory putIfAbsent = this.f36196f.putIfAbsent(cls, typeAdapterFactory);
        return putIfAbsent != null ? putIfAbsent : typeAdapterFactory;
    }

    public boolean isClassJsonAdapterFactory(TypeToken<?> typeToken, TypeAdapterFactory typeAdapterFactory) {
        Objects.requireNonNull(typeToken);
        Objects.requireNonNull(typeAdapterFactory);
        if (typeAdapterFactory == f36193g) {
            return true;
        }
        Class<? super Object> rawType = typeToken.getRawType();
        TypeAdapterFactory typeAdapterFactory2 = this.f36196f.get(rawType);
        if (typeAdapterFactory2 != null) {
            return typeAdapterFactory2 == typeAdapterFactory;
        }
        JsonAdapter m28267b = m28267b(rawType);
        if (m28267b == null) {
            return false;
        }
        Class<?> value = m28267b.value();
        return TypeAdapterFactory.class.isAssignableFrom(value) && m28269d(rawType, (TypeAdapterFactory) m28266a(this.f36195e, value)) == typeAdapterFactory;
    }
}
