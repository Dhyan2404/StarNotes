package com.dropbox.core.p006v2.auth;

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

/* renamed from: com.dropbox.core.v2.auth.a */
/* loaded from: classes4.dex */
public class C2382a {

    /* renamed from: a */
    public final String f16819a;

    /* renamed from: b */
    public final String f16820b;

    /* renamed from: com.dropbox.core.v2.auth.a$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2382a> {

        /* renamed from: b */
        public static final a f16821b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2382a deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("oauth1_token".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("oauth1_token_secret".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"oauth1_token\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"oauth1_token_secret\" missing.");
            }
            C2382a c2382a = new C2382a(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2382a, c2382a.m10257c());
            return c2382a;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2382a c2382a, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("oauth1_token");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2382a.f16819a, jsonGenerator);
            jsonGenerator.writeFieldName("oauth1_token_secret");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2382a.f16820b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2382a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'oauth1Token' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'oauth1Token' is shorter than 1");
        }
        this.f16819a = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'oauth1TokenSecret' is null");
        }
        if (str2.length() < 1) {
            throw new IllegalArgumentException("String 'oauth1TokenSecret' is shorter than 1");
        }
        this.f16820b = str2;
    }

    /* renamed from: a */
    public String m10255a() {
        return this.f16819a;
    }

    /* renamed from: b */
    public String m10256b() {
        return this.f16820b;
    }

    /* renamed from: c */
    public String m10257c() {
        return a.f16821b.serialize((a) this, true);
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
        C2382a c2382a = (C2382a) obj;
        String str3 = this.f16819a;
        String str4 = c2382a.f16819a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f16820b) == (str2 = c2382a.f16820b) || str.equals(str2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16819a, this.f16820b});
    }

    public String toString() {
        return a.f16821b.serialize((a) this, false);
    }
}
