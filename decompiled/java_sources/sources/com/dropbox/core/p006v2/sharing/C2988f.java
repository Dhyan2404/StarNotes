package com.dropbox.core.p006v2.sharing;

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

/* renamed from: com.dropbox.core.v2.sharing.f */
/* loaded from: classes4.dex */
public class C2988f {

    /* renamed from: a */
    public final String f18051a;

    /* renamed from: com.dropbox.core.v2.sharing.f$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2988f> {

        /* renamed from: b */
        public static final a f18052b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2988f deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            C2988f c2988f = new C2988f(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2988f, c2988f.m12017b());
            return c2988f;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2988f c2988f, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (c2988f.f18051a != null) {
                jsonGenerator.writeFieldName("path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) c2988f.f18051a, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2988f(String str) {
        this.f18051a = str;
    }

    /* renamed from: a */
    public String m12016a() {
        return this.f18051a;
    }

    /* renamed from: b */
    public String m12017b() {
        return a.f18052b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.f18051a;
        String str2 = ((C2988f) obj).f18051a;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18051a});
    }

    public String toString() {
        return a.f18052b.serialize((a) this, false);
    }

    public C2988f() {
        this(null);
    }
}
