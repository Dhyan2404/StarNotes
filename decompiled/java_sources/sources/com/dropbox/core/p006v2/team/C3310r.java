package com.dropbox.core.p006v2.team;

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

/* renamed from: com.dropbox.core.v2.team.r */
/* loaded from: classes4.dex */
public class C3310r {

    /* renamed from: a */
    public final String f18659a;

    /* renamed from: b */
    public final String f18660b;

    /* renamed from: com.dropbox.core.v2.team.r$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3310r> {

        /* renamed from: b */
        public static final a f18661b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3310r deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            C3310r c3310r = new C3310r(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3310r, c3310r.m12960c());
            return c3310r;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3310r c3310r, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3310r.f18659a, jsonGenerator);
            if (c3310r.f18660b != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) c3310r.f18660b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3310r(String str, String str2) {
        if (str != null) {
            if (Pattern.matches("^pid_dbhid:.+", str)) {
                this.f18659a = str;
                if (str2 != null && str2.length() < 1) {
                    throw new IllegalArgumentException("String 'cursor' is shorter than 1");
                }
                this.f18660b = str2;
                return;
            }
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    /* renamed from: a */
    public String m12958a() {
        return this.f18660b;
    }

    /* renamed from: b */
    public String m12959b() {
        return this.f18659a;
    }

    /* renamed from: c */
    public String m12960c() {
        return a.f18661b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3310r c3310r = (C3310r) obj;
        String str = this.f18659a;
        String str2 = c3310r.f18659a;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.f18660b;
            String str4 = c3310r.f18660b;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18659a, this.f18660b});
    }

    public String toString() {
        return a.f18661b.serialize((a) this, false);
    }

    public C3310r(String str) {
        this(str, null);
    }
}
