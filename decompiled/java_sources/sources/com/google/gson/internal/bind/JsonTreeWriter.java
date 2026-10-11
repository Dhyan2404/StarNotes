package com.google.gson.internal.bind;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes6.dex */
public final class JsonTreeWriter extends JsonWriter {

    /* renamed from: v */
    public static final Writer f36204v = new C6548a();

    /* renamed from: w */
    public static final JsonPrimitive f36205w = new JsonPrimitive("closed");

    /* renamed from: s */
    public final List<JsonElement> f36206s;

    /* renamed from: t */
    public String f36207t;

    /* renamed from: u */
    public JsonElement f36208u;

    /* renamed from: com.google.gson.internal.bind.JsonTreeWriter$a */
    /* loaded from: classes6.dex */
    public class C6548a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public JsonTreeWriter() {
        super(f36204v);
        this.f36206s = new ArrayList();
        this.f36208u = JsonNull.INSTANCE;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter beginArray() throws IOException {
        JsonArray jsonArray = new JsonArray();
        m28279k0(jsonArray);
        this.f36206s.add(jsonArray);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter beginObject() throws IOException {
        JsonObject jsonObject = new JsonObject();
        m28279k0(jsonObject);
        this.f36206s.add(jsonObject);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f36206s.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f36206s.add(f36205w);
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter endArray() throws IOException {
        if (this.f36206s.isEmpty() || this.f36207t != null) {
            throw new IllegalStateException();
        }
        if (!(m28278j0() instanceof JsonArray)) {
            throw new IllegalStateException();
        }
        this.f36206s.remove(r0.size() - 1);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter endObject() throws IOException {
        if (this.f36206s.isEmpty() || this.f36207t != null) {
            throw new IllegalStateException();
        }
        if (!(m28278j0() instanceof JsonObject)) {
            throw new IllegalStateException();
        }
        this.f36206s.remove(r0.size() - 1);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() throws IOException {
    }

    public JsonElement get() {
        if (this.f36206s.isEmpty()) {
            return this.f36208u;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f36206s);
    }

    /* renamed from: j0 */
    public final JsonElement m28278j0() {
        return this.f36206s.get(r1.size() - 1);
    }

    @Override // com.google.gson.stream.JsonWriter
    public JsonWriter jsonValue(String str) throws IOException {
        throw new UnsupportedOperationException();
    }

    /* renamed from: k0 */
    public final void m28279k0(JsonElement jsonElement) {
        if (this.f36207t != null) {
            if (!jsonElement.isJsonNull() || getSerializeNulls()) {
                ((JsonObject) m28278j0()).add(this.f36207t, jsonElement);
            }
            this.f36207t = null;
            return;
        }
        if (this.f36206s.isEmpty()) {
            this.f36208u = jsonElement;
            return;
        }
        JsonElement m28278j0 = m28278j0();
        if (!(m28278j0 instanceof JsonArray)) {
            throw new IllegalStateException();
        }
        ((JsonArray) m28278j0).add(jsonElement);
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter name(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f36206s.isEmpty() || this.f36207t != null) {
            throw new IllegalStateException("Did not expect a name");
        }
        if (!(m28278j0() instanceof JsonObject)) {
            throw new IllegalStateException("Please begin an object before writing a name.");
        }
        this.f36207t = str;
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter nullValue() throws IOException {
        m28279k0(JsonNull.INSTANCE);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        m28279k0(new JsonPrimitive(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(boolean z) throws IOException {
        m28279k0(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(Boolean bool) throws IOException {
        if (bool == null) {
            return nullValue();
        }
        m28279k0(new JsonPrimitive(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(float f) throws IOException {
        if (!isLenient() && (Float.isNaN(f) || Float.isInfinite(f))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + f);
        }
        m28279k0(new JsonPrimitive(Float.valueOf(f)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(double d) throws IOException {
        if (!isLenient() && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d);
        }
        m28279k0(new JsonPrimitive(Double.valueOf(d)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(long j) throws IOException {
        m28279k0(new JsonPrimitive(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    @CanIgnoreReturnValue
    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        m28279k0(new JsonPrimitive(number));
        return this;
    }
}
