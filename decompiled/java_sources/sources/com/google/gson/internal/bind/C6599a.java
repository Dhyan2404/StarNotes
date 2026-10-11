package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* renamed from: com.google.gson.internal.bind.a */
/* loaded from: classes6.dex */
public final class C6599a<T> extends TypeAdapter<T> {

    /* renamed from: a */
    public final Gson f36289a;

    /* renamed from: b */
    public final TypeAdapter<T> f36290b;

    /* renamed from: c */
    public final Type f36291c;

    public C6599a(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.f36289a = gson;
        this.f36290b = typeAdapter;
        this.f36291c = type;
    }

    /* renamed from: a */
    public static Type m28355a(Type type, Object obj) {
        return obj != null ? ((type instanceof Class) || (type instanceof TypeVariable)) ? obj.getClass() : type : type;
    }

    /* renamed from: b */
    public static boolean m28356b(TypeAdapter<?> typeAdapter) {
        TypeAdapter<?> serializationDelegate;
        while ((typeAdapter instanceof SerializationDelegatingTypeAdapter) && (serializationDelegate = ((SerializationDelegatingTypeAdapter) typeAdapter).getSerializationDelegate()) != typeAdapter) {
            typeAdapter = serializationDelegate;
        }
        return typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter;
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        return this.f36290b.read(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        TypeAdapter<T> typeAdapter = this.f36290b;
        Type m28355a = m28355a(this.f36291c, t);
        if (m28355a != this.f36291c) {
            typeAdapter = this.f36289a.getAdapter(TypeToken.get(m28355a));
            if ((typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter) && !m28356b(this.f36290b)) {
                typeAdapter = this.f36290b;
            }
        }
        typeAdapter.write(jsonWriter, t);
    }
}
