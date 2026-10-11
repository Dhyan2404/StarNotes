package com.dropbox.core.p006v2.clouddocs;

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

/* renamed from: com.dropbox.core.v2.clouddocs.d */
/* loaded from: classes4.dex */
public class C2418d {

    /* renamed from: a */
    public final String f16882a;

    /* renamed from: com.dropbox.core.v2.clouddocs.d$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2418d> {

        /* renamed from: b */
        public static final a f16883b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2418d deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = "\"\"";
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            C2418d c2418d = new C2418d(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2418d, c2418d.m10348b());
            return c2418d;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2418d c2418d, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2418d.f16882a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2418d(String str) {
        if (str != null) {
            this.f16882a = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    /* renamed from: a */
    public String m10347a() {
        return this.f16882a;
    }

    /* renamed from: b */
    public String m10348b() {
        return a.f16883b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.f16882a;
        String str2 = ((C2418d) obj).f16882a;
        return str == str2 || str.equals(str2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16882a});
    }

    public String toString() {
        return a.f16883b.serialize((a) this, false);
    }

    public C2418d() {
        this("\"\"");
    }
}
