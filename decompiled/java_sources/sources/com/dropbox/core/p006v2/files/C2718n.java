package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* renamed from: com.dropbox.core.v2.files.n */
/* loaded from: classes4.dex */
public class C2718n {

    /* renamed from: a */
    public final String f17522a;

    /* renamed from: b */
    public final String f17523b;

    /* renamed from: com.dropbox.core.v2.files.n$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2718n> {

        /* renamed from: b */
        public static final a f17524b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2718n deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("rev".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"rev\" missing.");
            }
            C2718n c2718n = new C2718n(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2718n, c2718n.m11255c());
            return c2718n;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2718n c2718n, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2718n.f17522a, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2718n.f17523b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2718n(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.f17522a = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'rev' is null");
        }
        if (str2.length() < 9) {
            throw new IllegalArgumentException("String 'rev' is shorter than 9");
        }
        if (!Pattern.matches("[0-9a-f]+", str2)) {
            throw new IllegalArgumentException("String 'rev' does not match pattern");
        }
        this.f17523b = str2;
    }

    /* renamed from: a */
    public String m11253a() {
        return this.f17522a;
    }

    /* renamed from: b */
    public String m11254b() {
        return this.f17523b;
    }

    /* renamed from: c */
    public String m11255c() {
        return a.f17524b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2718n c2718n = (C2718n) obj;
        String str3 = this.f17522a;
        String str4 = c2718n.f17522a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f17523b) == (str2 = c2718n.f17523b) || str.equals(str2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17522a, this.f17523b});
    }

    public String toString() {
        return a.f17524b.serialize((a) this, false);
    }
}
