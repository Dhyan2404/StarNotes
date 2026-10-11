package com.dropbox.core.stone;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.dzn;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

/* loaded from: classes4.dex */
public abstract class StoneSerializer<T> {

    /* renamed from: a */
    public static final Charset f16608a = Charset.forName("UTF-8");

    public static void expectEndArray(JsonParser jsonParser) throws IOException, JsonParseException {
        if (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
            throw new JsonParseException(jsonParser, "expected end of array value.");
        }
        jsonParser.nextToken();
    }

    public static void expectEndObject(JsonParser jsonParser) throws IOException, JsonParseException {
        if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
            throw new JsonParseException(jsonParser, "expected end of object value.");
        }
        jsonParser.nextToken();
    }

    public static void expectField(String str, JsonParser jsonParser) throws IOException, JsonParseException {
        if (jsonParser.getCurrentToken() != JsonToken.FIELD_NAME) {
            throw new JsonParseException(jsonParser, "expected field name, but was: " + jsonParser.getCurrentToken());
        }
        if (str.equals(jsonParser.getCurrentName())) {
            jsonParser.nextToken();
            return;
        }
        throw new JsonParseException(jsonParser, "expected field '" + str + "', but was: '" + jsonParser.getCurrentName() + CloudStorageConstants.SINGLE_QUOTES);
    }

    public static void expectStartArray(JsonParser jsonParser) throws IOException, JsonParseException {
        if (jsonParser.getCurrentToken() != JsonToken.START_ARRAY) {
            throw new JsonParseException(jsonParser, "expected array value.");
        }
        jsonParser.nextToken();
    }

    public static void expectStartObject(JsonParser jsonParser) throws IOException, JsonParseException {
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            throw new JsonParseException(jsonParser, "expected object value.");
        }
        jsonParser.nextToken();
    }

    public static String getStringValue(JsonParser jsonParser) throws IOException, JsonParseException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
            return jsonParser.getText();
        }
        throw new JsonParseException(jsonParser, "expected string value, but was " + jsonParser.getCurrentToken());
    }

    public static void skipFields(JsonParser jsonParser) throws IOException, JsonParseException {
        while (jsonParser.getCurrentToken() != null && !jsonParser.getCurrentToken().isStructEnd()) {
            if (jsonParser.getCurrentToken().isStructStart()) {
                jsonParser.skipChildren();
            } else if (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                jsonParser.nextToken();
            } else {
                if (!jsonParser.getCurrentToken().isScalarValue()) {
                    throw new JsonParseException(jsonParser, "Can't skip token: " + jsonParser.getCurrentToken());
                }
                jsonParser.nextToken();
            }
        }
    }

    public static void skipValue(JsonParser jsonParser) throws IOException, JsonParseException {
        if (jsonParser.getCurrentToken().isStructStart()) {
            jsonParser.skipChildren();
            jsonParser.nextToken();
        } else {
            if (jsonParser.getCurrentToken().isScalarValue()) {
                jsonParser.nextToken();
                return;
            }
            throw new JsonParseException(jsonParser, "Can't skip JSON value token: " + jsonParser.getCurrentToken());
        }
    }

    public abstract T deserialize(JsonParser jsonParser) throws IOException, JsonParseException;

    public T deserialize(String str) throws JsonParseException {
        try {
            JsonParser createParser = dzn.f68401a.createParser(str);
            createParser.nextToken();
            return deserialize(createParser);
        } catch (JsonParseException e) {
            throw e;
        } catch (IOException e2) {
            throw new IllegalStateException("Impossible I/O exception", e2);
        }
    }

    public String serialize(T t) {
        return serialize((StoneSerializer<T>) t, false);
    }

    public abstract void serialize(T t, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException;

    public String serialize(T t, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            serialize(t, byteArrayOutputStream, z);
            return new String(byteArrayOutputStream.toByteArray(), f16608a);
        } catch (JsonGenerationException e) {
            throw new IllegalStateException("Impossible JSON exception", e);
        } catch (IOException e2) {
            throw new IllegalStateException("Impossible I/O exception", e2);
        }
    }

    public T deserialize(InputStream inputStream) throws IOException, JsonParseException {
        JsonParser createParser = dzn.f68401a.createParser(inputStream);
        createParser.nextToken();
        return deserialize(createParser);
    }

    public void serialize(T t, OutputStream outputStream) throws IOException {
        serialize(t, outputStream, false);
    }

    public void serialize(T t, OutputStream outputStream, boolean z) throws IOException {
        JsonGenerator createGenerator = dzn.f68401a.createGenerator(outputStream);
        if (z) {
            createGenerator.useDefaultPrettyPrinter();
        }
        try {
            serialize((StoneSerializer<T>) t, createGenerator);
            createGenerator.flush();
        } catch (JsonGenerationException e) {
            throw new IllegalStateException("Impossible JSON generation exception", e);
        }
    }
}
