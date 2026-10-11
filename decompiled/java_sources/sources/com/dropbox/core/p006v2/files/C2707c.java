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

/* renamed from: com.dropbox.core.v2.files.c */
/* loaded from: classes4.dex */
public class C2707c {

    /* renamed from: a */
    public final String f17495a;

    /* renamed from: b */
    public final String f17496b;

    /* renamed from: com.dropbox.core.v2.files.c$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2707c> {

        /* renamed from: b */
        public static final a f17497b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2707c deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C2707c c2707c = new C2707c(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2707c, c2707c.m11209c());
            return c2707c;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2707c c2707c, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2707c.f17495a, jsonGenerator);
            if (c2707c.f17496b != null) {
                jsonGenerator.writeFieldName("rev");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) c2707c.f17496b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2707c(String str, String str2) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                this.f17495a = str;
                if (str2 != null) {
                    if (str2.length() >= 9) {
                        if (!Pattern.matches("[0-9a-f]+", str2)) {
                            throw new IllegalArgumentException("String 'rev' does not match pattern");
                        }
                    } else {
                        throw new IllegalArgumentException("String 'rev' is shorter than 9");
                    }
                }
                this.f17496b = str2;
                return;
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: a */
    public String m11207a() {
        return this.f17495a;
    }

    /* renamed from: b */
    public String m11208b() {
        return this.f17496b;
    }

    /* renamed from: c */
    public String m11209c() {
        return a.f17497b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2707c c2707c = (C2707c) obj;
        String str = this.f17495a;
        String str2 = c2707c.f17495a;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.f17496b;
            String str4 = c2707c.f17496b;
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
        return Arrays.hashCode(new Object[]{this.f17495a, this.f17496b});
    }

    public String toString() {
        return a.f17497b.serialize((a) this, false);
    }

    public C2707c(String str) {
        this(str, null);
    }
}
