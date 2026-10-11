package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes6.dex */
public final class TreeTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {

    /* renamed from: a */
    public final JsonSerializer<T> f36249a;

    /* renamed from: b */
    public final JsonDeserializer<T> f36250b;

    /* renamed from: c */
    public final Gson f36251c;

    /* renamed from: d */
    public final TypeToken<T> f36252d;

    /* renamed from: e */
    public final TypeAdapterFactory f36253e;

    /* renamed from: f */
    public final TreeTypeAdapter<T>.C6561b f36254f;

    /* renamed from: g */
    public final boolean f36255g;

    /* renamed from: h */
    public volatile TypeAdapter<T> f36256h;

    /* renamed from: com.google.gson.internal.bind.TreeTypeAdapter$b */
    /* loaded from: classes6.dex */
    public final class C6561b implements JsonSerializationContext, JsonDeserializationContext {
        public C6561b() {
        }

        @Override // com.google.gson.JsonDeserializationContext
        public <R> R deserialize(JsonElement jsonElement, Type type) throws JsonParseException {
            return (R) TreeTypeAdapter.this.f36251c.fromJson(jsonElement, type);
        }

        @Override // com.google.gson.JsonSerializationContext
        public JsonElement serialize(Object obj) {
            return TreeTypeAdapter.this.f36251c.toJsonTree(obj);
        }

        @Override // com.google.gson.JsonSerializationContext
        public JsonElement serialize(Object obj, Type type) {
            return TreeTypeAdapter.this.f36251c.toJsonTree(obj, type);
        }
    }

    /* renamed from: com.google.gson.internal.bind.TreeTypeAdapter$c */
    /* loaded from: classes6.dex */
    public static final class C6562c implements TypeAdapterFactory {

        /* renamed from: e */
        public final TypeToken<?> f36258e;

        /* renamed from: f */
        public final boolean f36259f;

        /* renamed from: g */
        public final Class<?> f36260g;

        /* renamed from: h */
        public final JsonSerializer<?> f36261h;

        /* renamed from: i */
        public final JsonDeserializer<?> f36262i;

        public C6562c(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
            JsonSerializer<?> jsonSerializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.f36261h = jsonSerializer;
            JsonDeserializer<?> jsonDeserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : null;
            this.f36262i = jsonDeserializer;
            C$Gson$Preconditions.checkArgument((jsonSerializer == null && jsonDeserializer == null) ? false : true);
            this.f36258e = typeToken;
            this.f36259f = z;
            this.f36260g = cls;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            TypeToken<?> typeToken2 = this.f36258e;
            if (typeToken2 != null ? typeToken2.equals(typeToken) || (this.f36259f && this.f36258e.getType() == typeToken.getRawType()) : this.f36260g.isAssignableFrom(typeToken.getRawType())) {
                return new TreeTypeAdapter(this.f36261h, this.f36262i, gson, typeToken, this);
            }
            return null;
        }
    }

    public TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory, boolean z) {
        this.f36254f = new C6561b();
        this.f36249a = jsonSerializer;
        this.f36250b = jsonDeserializer;
        this.f36251c = gson;
        this.f36252d = typeToken;
        this.f36253e = typeAdapterFactory;
        this.f36255g = z;
    }

    public static TypeAdapterFactory newFactory(TypeToken<?> typeToken, Object obj) {
        return new C6562c(obj, typeToken, false, null);
    }

    public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> typeToken, Object obj) {
        return new C6562c(obj, typeToken, typeToken.getType() == typeToken.getRawType(), null);
    }

    public static TypeAdapterFactory newTypeHierarchyFactory(Class<?> cls, Object obj) {
        return new C6562c(obj, null, false, cls);
    }

    /* renamed from: a */
    public final TypeAdapter<T> m28305a() {
        TypeAdapter<T> typeAdapter = this.f36256h;
        if (typeAdapter != null) {
            return typeAdapter;
        }
        TypeAdapter<T> delegateAdapter = this.f36251c.getDelegateAdapter(this.f36253e, this.f36252d);
        this.f36256h = delegateAdapter;
        return delegateAdapter;
    }

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public TypeAdapter<T> getSerializationDelegate() {
        return this.f36249a != null ? this : m28305a();
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        if (this.f36250b == null) {
            return m28305a().read(jsonReader);
        }
        JsonElement parse = Streams.parse(jsonReader);
        if (this.f36255g && parse.isJsonNull()) {
            return null;
        }
        return this.f36250b.deserialize(parse, this.f36252d.getType(), this.f36254f);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) throws IOException {
        JsonSerializer<T> jsonSerializer = this.f36249a;
        if (jsonSerializer == null) {
            m28305a().write(jsonWriter, t);
        } else if (this.f36255g && t == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(jsonSerializer.serialize(t, this.f36252d.getType(), this.f36254f), jsonWriter);
        }
    }

    public TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        this(jsonSerializer, jsonDeserializer, gson, typeToken, typeAdapterFactory, true);
    }
}
