package com.dropbox.core.json;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

/* loaded from: classes4.dex */
public abstract class JsonReader<T> {

    /* renamed from: b */
    public static final /* synthetic */ boolean f16589b = false;
    public static final JsonReader<Long> UnsignedLongReader = new C2281c();
    public static final JsonReader<Long> Int64Reader = new C2282d();
    public static final JsonReader<Integer> Int32Reader = new C2283e();
    public static final JsonReader<Long> UInt64Reader = new C2284f();
    public static final JsonReader<Long> UInt32Reader = new C2285g();
    public static final JsonReader<Double> Float64Reader = new C2286h();
    public static final JsonReader<Float> Float32Reader = new C2287i();
    public static final JsonReader<String> StringReader = new C2288j();
    public static final JsonReader<byte[]> BinaryReader = new C2289k();
    public static final JsonReader<Boolean> BooleanReader = new C2279a();
    public static final JsonReader<Object> VoidReader = new C2280b();

    /* renamed from: a */
    public static final JsonFactory f16588a = new JsonFactory();

    /* loaded from: classes4.dex */
    public static final class FieldMapping {

        /* renamed from: a */
        public static final /* synthetic */ boolean f16590a = false;
        public final HashMap<String, Integer> fields;

        /* loaded from: classes4.dex */
        public static final class Builder {

            /* renamed from: a */
            public HashMap<String, Integer> f16591a = new HashMap<>();

            public void add(String str, int i) {
                HashMap<String, Integer> hashMap = this.f16591a;
                if (hashMap == null) {
                    throw new IllegalStateException("already called build(); can't call add() anymore");
                }
                int size = hashMap.size();
                if (i != size) {
                    throw new IllegalStateException("expectedIndex = " + i + ", actual = " + size);
                }
                if (this.f16591a.put(str, Integer.valueOf(size)) == null) {
                    return;
                }
                throw new IllegalStateException("duplicate field name: \"" + str + "\"");
            }

            public FieldMapping build() {
                HashMap<String, Integer> hashMap = this.f16591a;
                if (hashMap == null) {
                    throw new IllegalStateException("already called build(); can't call build() again");
                }
                this.f16591a = null;
                return new FieldMapping(hashMap, null);
            }
        }

        public /* synthetic */ FieldMapping(HashMap hashMap, C2281c c2281c) {
            this(hashMap);
        }

        public int get(String str) {
            Integer num = this.fields.get(str);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        public FieldMapping(HashMap<String, Integer> hashMap) {
            this.fields = hashMap;
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class FileLoadException extends Exception {
        private static final long serialVersionUID = 0;

        /* loaded from: classes4.dex */
        public static final class IOError extends FileLoadException {
            private static final long serialVersionUID = 0;
            public final IOException reason;

            public IOError(File file, IOException iOException) {
                super("unable to read file \"" + file.getPath() + "\": " + iOException.getMessage());
                this.reason = iOException;
            }
        }

        /* loaded from: classes4.dex */
        public static final class JsonError extends FileLoadException {
            private static final long serialVersionUID = 0;
            public final JsonReadException reason;

            public JsonError(File file, JsonReadException jsonReadException) {
                super(file.getPath() + ": " + jsonReadException.getMessage());
                this.reason = jsonReadException;
            }
        }

        public FileLoadException(String str) {
            super(str);
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$a */
    /* loaded from: classes4.dex */
    public static class C2279a extends JsonReader<Boolean> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean read(JsonParser jsonParser) throws IOException, JsonReadException {
            return Boolean.valueOf(JsonReader.readBoolean(jsonParser));
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$b */
    /* loaded from: classes4.dex */
    public static class C2280b extends JsonReader<Object> {
        @Override // com.dropbox.core.json.JsonReader
        public Object read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonReader.skipValue(jsonParser);
            return null;
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$c */
    /* loaded from: classes4.dex */
    public static class C2281c extends JsonReader<Long> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            return Long.valueOf(JsonReader.readUnsignedLong(jsonParser));
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$d */
    /* loaded from: classes4.dex */
    public static class C2282d extends JsonReader<Long> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            long longValue = jsonParser.getLongValue();
            jsonParser.nextToken();
            return Long.valueOf(longValue);
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$e */
    /* loaded from: classes4.dex */
    public static class C2283e extends JsonReader<Integer> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer read(JsonParser jsonParser) throws IOException, JsonReadException {
            int intValue = jsonParser.getIntValue();
            jsonParser.nextToken();
            return Integer.valueOf(intValue);
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$f */
    /* loaded from: classes4.dex */
    public static class C2284f extends JsonReader<Long> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            return Long.valueOf(JsonReader.readUnsignedLong(jsonParser));
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$g */
    /* loaded from: classes4.dex */
    public static class C2285g extends JsonReader<Long> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            long readUnsignedLong = JsonReader.readUnsignedLong(jsonParser);
            if (readUnsignedLong < 4294967296L) {
                return Long.valueOf(readUnsignedLong);
            }
            throw new JsonReadException("expecting a 32-bit unsigned integer, got: " + readUnsignedLong, jsonParser.getTokenLocation());
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$h */
    /* loaded from: classes4.dex */
    public static class C2286h extends JsonReader<Double> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double read(JsonParser jsonParser) throws IOException, JsonReadException {
            double doubleValue = jsonParser.getDoubleValue();
            jsonParser.nextToken();
            return Double.valueOf(doubleValue);
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$i */
    /* loaded from: classes4.dex */
    public static class C2287i extends JsonReader<Float> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float read(JsonParser jsonParser) throws IOException, JsonReadException {
            float floatValue = jsonParser.getFloatValue();
            jsonParser.nextToken();
            return Float.valueOf(floatValue);
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$j */
    /* loaded from: classes4.dex */
    public static class C2288j extends JsonReader<String> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    }

    /* renamed from: com.dropbox.core.json.JsonReader$k */
    /* loaded from: classes4.dex */
    public static class C2289k extends JsonReader<byte[]> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                byte[] binaryValue = jsonParser.getBinaryValue();
                jsonParser.nextToken();
                return binaryValue;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    }

    public static JsonLocation expectArrayEnd(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
            throw new JsonReadException("expecting the end of an array (\"[\")", jsonParser.getTokenLocation());
        }
        JsonLocation tokenLocation = jsonParser.getTokenLocation();
        nextToken(jsonParser);
        return tokenLocation;
    }

    public static JsonLocation expectArrayStart(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.START_ARRAY) {
            throw new JsonReadException("expecting the start of an array (\"[\")", jsonParser.getTokenLocation());
        }
        JsonLocation tokenLocation = jsonParser.getTokenLocation();
        nextToken(jsonParser);
        return tokenLocation;
    }

    public static void expectObjectEnd(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
            throw new JsonReadException("expecting the end of an object (\"}\")", jsonParser.getTokenLocation());
        }
        nextToken(jsonParser);
    }

    public static JsonLocation expectObjectStart(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            throw new JsonReadException("expecting the start of an object (\"{\")", jsonParser.getTokenLocation());
        }
        JsonLocation tokenLocation = jsonParser.getTokenLocation();
        nextToken(jsonParser);
        return tokenLocation;
    }

    public static boolean isArrayEnd(JsonParser jsonParser) {
        return jsonParser.getCurrentToken() == JsonToken.END_ARRAY;
    }

    public static boolean isArrayStart(JsonParser jsonParser) {
        return jsonParser.getCurrentToken() == JsonToken.START_ARRAY;
    }

    public static JsonToken nextToken(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            return jsonParser.nextToken();
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static boolean readBoolean(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            boolean booleanValue = jsonParser.getBooleanValue();
            jsonParser.nextToken();
            return booleanValue;
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static double readDouble(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            double doubleValue = jsonParser.getDoubleValue();
            jsonParser.nextToken();
            return doubleValue;
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static <T> T readEnum(JsonParser jsonParser, HashMap<String, T> hashMap, T t) throws IOException, JsonReadException {
        String text;
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_STRING) {
                throw new JsonReadException("Expected a string value", jsonParser.getTokenLocation());
            }
            String text2 = jsonParser.getText();
            T t2 = hashMap.get(text2);
            if (t2 != null) {
                t = t2;
            }
            if (t != null) {
                jsonParser.nextToken();
                return t;
            }
            throw new JsonReadException("Expected one of " + hashMap + ", got: " + text2, jsonParser.getTokenLocation());
        }
        jsonParser.nextToken();
        String[] readTags = readTags(jsonParser);
        if (readTags != null && jsonParser.getCurrentToken() == JsonToken.END_OBJECT) {
            text = readTags[0];
        } else {
            if (jsonParser.getCurrentToken() != JsonToken.FIELD_NAME) {
                throw new JsonReadException("expecting a field name", jsonParser.getTokenLocation());
            }
            text = jsonParser.getText();
            jsonParser.nextToken();
            skipValue(jsonParser);
        }
        T t3 = hashMap.get(text);
        if (t3 != null) {
            t = t3;
        }
        if (t != null) {
            expectObjectEnd(jsonParser);
            return t;
        }
        throw new JsonReadException("Expected one of " + hashMap + ", got: " + text, jsonParser.getTokenLocation());
    }

    public static String[] readTags(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.FIELD_NAME || !".tag".equals(jsonParser.getCurrentName())) {
            return null;
        }
        jsonParser.nextToken();
        if (jsonParser.getCurrentToken() != JsonToken.VALUE_STRING) {
            throw new JsonReadException("expected a string value for .tag field", jsonParser.getTokenLocation());
        }
        String text = jsonParser.getText();
        jsonParser.nextToken();
        return text.split("\\.");
    }

    public static long readUnsignedLong(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            long longValue = jsonParser.getLongValue();
            if (longValue >= 0) {
                jsonParser.nextToken();
                return longValue;
            }
            throw new JsonReadException("expecting a non-negative number, got: " + longValue, jsonParser.getTokenLocation());
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static long readUnsignedLongField(JsonParser jsonParser, String str, long j) throws IOException, JsonReadException {
        if (j < 0) {
            return readUnsignedLong(jsonParser);
        }
        throw new JsonReadException("duplicate field \"" + str + "\"", jsonParser.getCurrentLocation());
    }

    public static void skipValue(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            jsonParser.skipChildren();
            jsonParser.nextToken();
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public abstract T read(JsonParser jsonParser) throws IOException, JsonReadException;

    public final T readField(JsonParser jsonParser, String str, T t) throws IOException, JsonReadException {
        if (t == null) {
            return read(jsonParser);
        }
        throw new JsonReadException("duplicate field \"" + str + "\"", jsonParser.getTokenLocation());
    }

    public T readFields(JsonParser jsonParser) throws IOException, JsonReadException {
        return null;
    }

    public T readFromFile(String str) throws FileLoadException {
        return readFromFile(new File(str));
    }

    public T readFromTags(String[] strArr, JsonParser jsonParser) throws IOException, JsonReadException {
        return null;
    }

    public T readFully(InputStream inputStream) throws IOException, JsonReadException {
        try {
            return readFully(f16588a.createParser(inputStream));
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public final T readOptional(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
            return read(jsonParser);
        }
        jsonParser.nextToken();
        return null;
    }

    public void validate(T t) {
    }

    public T readFromFile(File file) throws FileLoadException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return readFully(fileInputStream);
            } finally {
                IOUtil.closeInput(fileInputStream);
            }
        } catch (JsonReadException e) {
            throw new FileLoadException.JsonError(file, e);
        } catch (IOException e2) {
            throw new FileLoadException.IOError(file, e2);
        }
    }

    public T readFully(String str) throws JsonReadException {
        try {
            JsonParser createParser = f16588a.createParser(str);
            try {
                return readFully(createParser);
            } finally {
                createParser.close();
            }
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        } catch (IOException e2) {
            throw LangUtil.mkAssert("IOException reading from String", e2);
        }
    }

    public T readFully(byte[] bArr) throws JsonReadException {
        try {
            JsonParser createParser = f16588a.createParser(bArr);
            try {
                return readFully(createParser);
            } finally {
                createParser.close();
            }
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        } catch (IOException e2) {
            throw LangUtil.mkAssert("IOException reading from byte[]", e2);
        }
    }

    public T readFully(JsonParser jsonParser) throws IOException, JsonReadException {
        jsonParser.nextToken();
        T read = read(jsonParser);
        if (jsonParser.getCurrentToken() == null) {
            validate(read);
            return read;
        }
        throw new AssertionError("The JSON library should ensure there's no tokens after the main value: " + jsonParser.getCurrentToken() + "@" + jsonParser.getCurrentLocation());
    }
}
