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

/* renamed from: com.dropbox.core.v2.files.l */
/* loaded from: classes4.dex */
public class C2716l {

    /* renamed from: a */
    public final String f17516a;

    /* renamed from: b */
    public final String f17517b;

    /* renamed from: com.dropbox.core.v2.files.l$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2716l> {

        /* renamed from: b */
        public static final a f17518b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2716l deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            C2716l c2716l = new C2716l(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2716l, c2716l.m11248c());
            return c2716l;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2716l c2716l, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2716l.f17516a, jsonGenerator);
            if (c2716l.f17517b != null) {
                jsonGenerator.writeFieldName("rev");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) c2716l.f17517b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2716l(String str, String str2) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                this.f17516a = str;
                if (str2 != null) {
                    if (str2.length() >= 9) {
                        if (!Pattern.matches("[0-9a-f]+", str2)) {
                            throw new IllegalArgumentException("String 'rev' does not match pattern");
                        }
                    } else {
                        throw new IllegalArgumentException("String 'rev' is shorter than 9");
                    }
                }
                this.f17517b = str2;
                return;
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: a */
    public String m11246a() {
        return this.f17516a;
    }

    /* renamed from: b */
    public String m11247b() {
        return this.f17517b;
    }

    /* renamed from: c */
    public String m11248c() {
        return a.f17518b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2716l c2716l = (C2716l) obj;
        String str = this.f17516a;
        String str2 = c2716l.f17516a;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.f17517b;
            String str4 = c2716l.f17517b;
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
        return Arrays.hashCode(new Object[]{this.f17516a, this.f17517b});
    }

    public String toString() {
        return a.f17518b.serialize((a) this, false);
    }

    public C2716l(String str) {
        this(str, null);
    }
}
