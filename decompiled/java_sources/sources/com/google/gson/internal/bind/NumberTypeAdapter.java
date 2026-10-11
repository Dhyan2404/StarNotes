package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.ToNumberPolicy;
import com.google.gson.ToNumberStrategy;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* loaded from: classes6.dex */
public final class NumberTypeAdapter extends TypeAdapter<Number> {

    /* renamed from: b */
    public static final TypeAdapterFactory f36215b = m28284a(ToNumberPolicy.LAZILY_PARSED_NUMBER);

    /* renamed from: a */
    public final ToNumberStrategy f36216a;

    /* renamed from: com.google.gson.internal.bind.NumberTypeAdapter$a */
    /* loaded from: classes6.dex */
    public class C6550a implements TypeAdapterFactory {
        public C6550a() {
        }

        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() == Number.class) {
                return NumberTypeAdapter.this;
            }
            return null;
        }
    }

    /* renamed from: com.google.gson.internal.bind.NumberTypeAdapter$b */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6551b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f36218a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f36218a = iArr;
            try {
                iArr[JsonToken.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36218a[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36218a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public NumberTypeAdapter(ToNumberStrategy toNumberStrategy) {
        this.f36216a = toNumberStrategy;
    }

    /* renamed from: a */
    public static TypeAdapterFactory m28284a(ToNumberStrategy toNumberStrategy) {
        return new C6550a();
    }

    public static TypeAdapterFactory getFactory(ToNumberStrategy toNumberStrategy) {
        return toNumberStrategy == ToNumberPolicy.LAZILY_PARSED_NUMBER ? f36215b : m28284a(toNumberStrategy);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.TypeAdapter
    public Number read(JsonReader jsonReader) throws IOException {
        JsonToken peek = jsonReader.peek();
        int i = C6551b.f36218a[peek.ordinal()];
        if (i == 1) {
            jsonReader.nextNull();
            return null;
        }
        if (i != 2 && i != 3) {
            throw new JsonSyntaxException("Expecting number, got: " + peek + "; at path " + jsonReader.getPath());
        }
        return this.f36216a.readNumber(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Number number) throws IOException {
        jsonWriter.value(number);
    }
}
