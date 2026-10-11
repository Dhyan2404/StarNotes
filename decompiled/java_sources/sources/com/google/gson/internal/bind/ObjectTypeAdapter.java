package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.ToNumberPolicy;
import com.google.gson.ToNumberStrategy;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public final class ObjectTypeAdapter extends TypeAdapter<Object> {

    /* renamed from: c */
    public static final TypeAdapterFactory f36219c = m28285a(ToNumberPolicy.DOUBLE);

    /* renamed from: a */
    public final Gson f36220a;

    /* renamed from: b */
    public final ToNumberStrategy f36221b;

    /* renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$a */
    /* loaded from: classes6.dex */
    public class C6552a implements TypeAdapterFactory {

        /* renamed from: e */
        public final /* synthetic */ ToNumberStrategy f36222e;

        public C6552a(ToNumberStrategy toNumberStrategy) {
            this.f36222e = toNumberStrategy;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            C6552a c6552a = null;
            if (typeToken.getRawType() == Object.class) {
                return new ObjectTypeAdapter(gson, this.f36222e, c6552a);
            }
            return null;
        }
    }

    /* renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$b */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6553b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f36223a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f36223a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36223a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36223a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36223a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f36223a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f36223a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public /* synthetic */ ObjectTypeAdapter(Gson gson, ToNumberStrategy toNumberStrategy, C6552a c6552a) {
        this(gson, toNumberStrategy);
    }

    /* renamed from: a */
    public static TypeAdapterFactory m28285a(ToNumberStrategy toNumberStrategy) {
        return new C6552a(toNumberStrategy);
    }

    public static TypeAdapterFactory getFactory(ToNumberStrategy toNumberStrategy) {
        return toNumberStrategy == ToNumberPolicy.DOUBLE ? f36219c : m28285a(toNumberStrategy);
    }

    /* renamed from: b */
    public final Object m28286b(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = C6553b.f36223a[jsonToken.ordinal()];
        if (i == 3) {
            return jsonReader.nextString();
        }
        if (i == 4) {
            return this.f36221b.readNumber(jsonReader);
        }
        if (i == 5) {
            return Boolean.valueOf(jsonReader.nextBoolean());
        }
        if (i == 6) {
            jsonReader.nextNull();
            return null;
        }
        throw new IllegalStateException("Unexpected token: " + jsonToken);
    }

    /* renamed from: c */
    public final Object m28287c(JsonReader jsonReader, JsonToken jsonToken) throws IOException {
        int i = C6553b.f36223a[jsonToken.ordinal()];
        if (i == 1) {
            jsonReader.beginArray();
            return new ArrayList();
        }
        if (i != 2) {
            return null;
        }
        jsonReader.beginObject();
        return new LinkedTreeMap();
    }

    @Override // com.google.gson.TypeAdapter
    public Object read(JsonReader jsonReader) throws IOException {
        JsonToken peek = jsonReader.peek();
        Object m28287c = m28287c(jsonReader, peek);
        if (m28287c == null) {
            return m28286b(jsonReader, peek);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (jsonReader.hasNext()) {
                String nextName = m28287c instanceof Map ? jsonReader.nextName() : null;
                JsonToken peek2 = jsonReader.peek();
                Object m28287c2 = m28287c(jsonReader, peek2);
                boolean z = m28287c2 != null;
                if (m28287c2 == null) {
                    m28287c2 = m28286b(jsonReader, peek2);
                }
                if (m28287c instanceof List) {
                    ((List) m28287c).add(m28287c2);
                } else {
                    ((Map) m28287c).put(nextName, m28287c2);
                }
                if (z) {
                    arrayDeque.addLast(m28287c);
                    m28287c = m28287c2;
                }
            } else {
                if (m28287c instanceof List) {
                    jsonReader.endArray();
                } else {
                    jsonReader.endObject();
                }
                if (arrayDeque.isEmpty()) {
                    return m28287c;
                }
                m28287c = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        TypeAdapter adapter = this.f36220a.getAdapter(obj.getClass());
        if (!(adapter instanceof ObjectTypeAdapter)) {
            adapter.write(jsonWriter, obj);
        } else {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public ObjectTypeAdapter(Gson gson, ToNumberStrategy toNumberStrategy) {
        this.f36220a = gson;
        this.f36221b = toNumberStrategy;
    }
}
