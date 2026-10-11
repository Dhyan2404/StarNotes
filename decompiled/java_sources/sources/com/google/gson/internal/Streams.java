package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;

/* loaded from: classes6.dex */
public final class Streams {
    public Streams() {
        throw new UnsupportedOperationException();
    }

    public static JsonElement parse(JsonReader jsonReader) throws JsonParseException {
        boolean z;
        try {
            try {
                jsonReader.peek();
                z = false;
            } catch (EOFException e) {
                e = e;
                z = true;
            }
            try {
                return TypeAdapters.JSON_ELEMENT.read(jsonReader);
            } catch (EOFException e2) {
                e = e2;
                if (z) {
                    return JsonNull.INSTANCE;
                }
                throw new JsonSyntaxException(e);
            }
        } catch (MalformedJsonException e3) {
            throw new JsonSyntaxException(e3);
        } catch (IOException e4) {
            throw new JsonIOException(e4);
        } catch (NumberFormatException e5) {
            throw new JsonSyntaxException(e5);
        }
    }

    public static void write(JsonElement jsonElement, JsonWriter jsonWriter) throws IOException {
        TypeAdapters.JSON_ELEMENT.write(jsonWriter, jsonElement);
    }

    public static Writer writerForAppendable(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new C6535b(appendable);
    }

    /* renamed from: com.google.gson.internal.Streams$b */
    /* loaded from: classes6.dex */
    public static final class C6535b extends Writer {

        /* renamed from: e */
        public final Appendable f36175e;

        /* renamed from: f */
        public final a f36176f = new a();

        /* renamed from: com.google.gson.internal.Streams$b$a */
        /* loaded from: classes6.dex */
        public static class a implements CharSequence {

            /* renamed from: e */
            public char[] f36177e;

            /* renamed from: f */
            public String f36178f;

            public a() {
            }

            /* renamed from: a */
            public void m28258a(char[] cArr) {
                this.f36177e = cArr;
                this.f36178f = null;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f36177e[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f36177e.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f36177e, i, i2 - i);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                if (this.f36178f == null) {
                    this.f36178f = new String(this.f36177e);
                }
                return this.f36178f;
            }
        }

        public C6535b(Appendable appendable) {
            this.f36175e = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.f36176f.m28258a(cArr);
            this.f36175e.append(this.f36176f, i, i2 + i);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) throws IOException {
            this.f36175e.append(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f36175e.append((char) i);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
            this.f36175e.append(charSequence, i, i2);
            return this;
        }

        @Override // java.io.Writer
        public void write(String str, int i, int i2) throws IOException {
            Objects.requireNonNull(str);
            this.f36175e.append(str, i, i2 + i);
        }
    }
}
