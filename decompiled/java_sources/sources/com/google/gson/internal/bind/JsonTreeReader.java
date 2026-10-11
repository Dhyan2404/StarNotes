package com.google.gson.internal.bind;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes6.dex */
public final class JsonTreeReader extends JsonReader {

    /* renamed from: M0 */
    public static final Reader f36197M0 = new C6546a();

    /* renamed from: N0 */
    public static final Object f36198N0 = new Object();

    /* renamed from: I0 */
    public Object[] f36199I0;

    /* renamed from: J0 */
    public int f36200J0;

    /* renamed from: K0 */
    public String[] f36201K0;

    /* renamed from: L0 */
    public int[] f36202L0;

    /* renamed from: com.google.gson.internal.bind.JsonTreeReader$a */
    /* loaded from: classes6.dex */
    public class C6546a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    /* renamed from: com.google.gson.internal.bind.JsonTreeReader$b */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6547b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f36203a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f36203a = iArr;
            try {
                iArr[JsonToken.NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36203a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36203a[JsonToken.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36203a[JsonToken.END_DOCUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public JsonTreeReader(JsonElement jsonElement) {
        super(f36197M0);
        this.f36199I0 = new Object[32];
        this.f36200J0 = 0;
        this.f36201K0 = new String[32];
        this.f36202L0 = new int[32];
        m28277y0(jsonElement);
    }

    /* renamed from: M */
    private String m28270M(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = 0;
        while (true) {
            int i2 = this.f36200J0;
            if (i >= i2) {
                return sb.toString();
            }
            Object[] objArr = this.f36199I0;
            Object obj = objArr[i];
            if (obj instanceof JsonArray) {
                i++;
                if (i < i2 && (objArr[i] instanceof Iterator)) {
                    int i3 = this.f36202L0[i];
                    if (z && i3 > 0 && (i == i2 - 1 || i == i2 - 2)) {
                        i3--;
                    }
                    sb.append('[');
                    sb.append(i3);
                    sb.append(']');
                }
            } else if ((obj instanceof JsonObject) && (i = i + 1) < i2 && (objArr[i] instanceof Iterator)) {
                sb.append('.');
                String str = this.f36201K0[i];
                if (str != null) {
                    sb.append(str);
                }
            }
            i++;
        }
    }

    /* renamed from: f0 */
    private String m28271f0() {
        return " at path " + getPath();
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginArray() throws IOException {
        m28272t0(JsonToken.BEGIN_ARRAY);
        m28277y0(((JsonArray) m28275w0()).iterator());
        this.f36202L0[this.f36200J0 - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public void beginObject() throws IOException {
        m28272t0(JsonToken.BEGIN_OBJECT);
        m28277y0(((JsonObject) m28275w0()).entrySet().iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36199I0 = new Object[]{f36198N0};
        this.f36200J0 = 1;
    }

    @Override // com.google.gson.stream.JsonReader
    public void endArray() throws IOException {
        m28272t0(JsonToken.END_ARRAY);
        m28276x0();
        m28276x0();
        int i = this.f36200J0;
        if (i > 0) {
            int[] iArr = this.f36202L0;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public void endObject() throws IOException {
        m28272t0(JsonToken.END_OBJECT);
        this.f36201K0[this.f36200J0 - 1] = null;
        m28276x0();
        m28276x0();
        int i = this.f36200J0;
        if (i > 0) {
            int[] iArr = this.f36202L0;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String getPath() {
        return m28270M(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public String getPreviousPath() {
        return m28270M(true);
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean hasNext() throws IOException {
        JsonToken peek = peek();
        return (peek == JsonToken.END_OBJECT || peek == JsonToken.END_ARRAY || peek == JsonToken.END_DOCUMENT) ? false : true;
    }

    @Override // com.google.gson.stream.JsonReader
    public boolean nextBoolean() throws IOException {
        m28272t0(JsonToken.BOOLEAN);
        boolean asBoolean = ((JsonPrimitive) m28276x0()).getAsBoolean();
        int i = this.f36200J0;
        if (i > 0) {
            int[] iArr = this.f36202L0;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return asBoolean;
    }

    @Override // com.google.gson.stream.JsonReader
    public double nextDouble() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (peek != jsonToken && peek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + m28271f0());
        }
        double asDouble = ((JsonPrimitive) m28275w0()).getAsDouble();
        if (!isLenient() && (Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + asDouble);
        }
        m28276x0();
        int i = this.f36200J0;
        if (i > 0) {
            int[] iArr = this.f36202L0;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return asDouble;
    }

    @Override // com.google.gson.stream.JsonReader
    public int nextInt() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (peek != jsonToken && peek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + m28271f0());
        }
        int asInt = ((JsonPrimitive) m28275w0()).getAsInt();
        m28276x0();
        int i = this.f36200J0;
        if (i > 0) {
            int[] iArr = this.f36202L0;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return asInt;
    }

    @Override // com.google.gson.stream.JsonReader
    public long nextLong() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.NUMBER;
        if (peek != jsonToken && peek != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + m28271f0());
        }
        long asLong = ((JsonPrimitive) m28275w0()).getAsLong();
        m28276x0();
        int i = this.f36200J0;
        if (i > 0) {
            int[] iArr = this.f36202L0;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return asLong;
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextName() throws IOException {
        return m28274v0(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public void nextNull() throws IOException {
        m28272t0(JsonToken.NULL);
        m28276x0();
        int i = this.f36200J0;
        if (i > 0) {
            int[] iArr = this.f36202L0;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public String nextString() throws IOException {
        JsonToken peek = peek();
        JsonToken jsonToken = JsonToken.STRING;
        if (peek == jsonToken || peek == JsonToken.NUMBER) {
            String asString = ((JsonPrimitive) m28276x0()).getAsString();
            int i = this.f36200J0;
            if (i > 0) {
                int[] iArr = this.f36202L0;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asString;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + peek + m28271f0());
    }

    @Override // com.google.gson.stream.JsonReader
    public JsonToken peek() throws IOException {
        if (this.f36200J0 == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object m28275w0 = m28275w0();
        if (m28275w0 instanceof Iterator) {
            boolean z = this.f36199I0[this.f36200J0 - 2] instanceof JsonObject;
            Iterator it2 = (Iterator) m28275w0;
            if (!it2.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            }
            if (z) {
                return JsonToken.NAME;
            }
            m28277y0(it2.next());
            return peek();
        }
        if (m28275w0 instanceof JsonObject) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (m28275w0 instanceof JsonArray) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (m28275w0 instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) m28275w0;
            if (jsonPrimitive.isString()) {
                return JsonToken.STRING;
            }
            if (jsonPrimitive.isBoolean()) {
                return JsonToken.BOOLEAN;
            }
            if (jsonPrimitive.isNumber()) {
                return JsonToken.NUMBER;
            }
            throw new AssertionError();
        }
        if (m28275w0 instanceof JsonNull) {
            return JsonToken.NULL;
        }
        if (m28275w0 == f36198N0) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new MalformedJsonException("Custom JsonElement subclass " + m28275w0.getClass().getName() + " is not supported");
    }

    public void promoteNameToValue() throws IOException {
        m28272t0(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m28275w0()).next();
        m28277y0(entry.getValue());
        m28277y0(new JsonPrimitive((String) entry.getKey()));
    }

    @Override // com.google.gson.stream.JsonReader
    public void skipValue() throws IOException {
        int i = C6547b.f36203a[peek().ordinal()];
        if (i == 1) {
            m28274v0(true);
            return;
        }
        if (i == 2) {
            endArray();
            return;
        }
        if (i == 3) {
            endObject();
            return;
        }
        if (i != 4) {
            m28276x0();
            int i2 = this.f36200J0;
            if (i2 > 0) {
                int[] iArr = this.f36202L0;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
        }
    }

    /* renamed from: t0 */
    public final void m28272t0(JsonToken jsonToken) throws IOException {
        if (peek() == jsonToken) {
            return;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + peek() + m28271f0());
    }

    @Override // com.google.gson.stream.JsonReader
    public String toString() {
        return JsonTreeReader.class.getSimpleName() + m28271f0();
    }

    /* renamed from: u0 */
    public JsonElement m28273u0() throws IOException {
        JsonToken peek = peek();
        if (peek != JsonToken.NAME && peek != JsonToken.END_ARRAY && peek != JsonToken.END_OBJECT && peek != JsonToken.END_DOCUMENT) {
            JsonElement jsonElement = (JsonElement) m28275w0();
            skipValue();
            return jsonElement;
        }
        throw new IllegalStateException("Unexpected " + peek + " when reading a JsonElement.");
    }

    /* renamed from: v0 */
    public final String m28274v0(boolean z) throws IOException {
        m28272t0(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m28275w0()).next();
        String str = (String) entry.getKey();
        this.f36201K0[this.f36200J0 - 1] = z ? "<skipped>" : str;
        m28277y0(entry.getValue());
        return str;
    }

    /* renamed from: w0 */
    public final Object m28275w0() {
        return this.f36199I0[this.f36200J0 - 1];
    }

    @CanIgnoreReturnValue
    /* renamed from: x0 */
    public final Object m28276x0() {
        Object[] objArr = this.f36199I0;
        int i = this.f36200J0 - 1;
        this.f36200J0 = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    /* renamed from: y0 */
    public final void m28277y0(Object obj) {
        int i = this.f36200J0;
        Object[] objArr = this.f36199I0;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.f36199I0 = Arrays.copyOf(objArr, i2);
            this.f36202L0 = Arrays.copyOf(this.f36202L0, i2);
            this.f36201K0 = (String[]) Arrays.copyOf(this.f36201K0, i2);
        }
        Object[] objArr2 = this.f36199I0;
        int i3 = this.f36200J0;
        this.f36200J0 = i3 + 1;
        objArr2[i3] = obj;
    }
}
