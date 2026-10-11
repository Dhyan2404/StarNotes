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

/* renamed from: com.dropbox.core.v2.files.o */
/* loaded from: classes4.dex */
public class C2719o {

    /* renamed from: a */
    public final String f17525a;

    /* renamed from: b */
    public final String f17526b;

    /* renamed from: com.dropbox.core.v2.files.o$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2719o> {

        /* renamed from: b */
        public static final a f17527b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2719o deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("copy_reference".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("path".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"copy_reference\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            C2719o c2719o = new C2719o(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2719o, c2719o.m11260c());
            return c2719o;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2719o c2719o, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("copy_reference");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2719o.f17525a, jsonGenerator);
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2719o.f17526b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2719o(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'copyReference' is null");
        }
        this.f17525a = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("/(.|[\\r\\n])*", str2)) {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        this.f17526b = str2;
    }

    /* renamed from: a */
    public String m11258a() {
        return this.f17525a;
    }

    /* renamed from: b */
    public String m11259b() {
        return this.f17526b;
    }

    /* renamed from: c */
    public String m11260c() {
        return a.f17527b.serialize((a) this, true);
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
        C2719o c2719o = (C2719o) obj;
        String str3 = this.f17525a;
        String str4 = c2719o.f17525a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f17526b) == (str2 = c2719o.f17526b) || str.equals(str2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17525a, this.f17526b});
    }

    public String toString() {
        return a.f17527b.serialize((a) this, false);
    }
}
