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

/* renamed from: com.dropbox.core.v2.files.j */
/* loaded from: classes4.dex */
public class C2714j {

    /* renamed from: a */
    public final String f17511a;

    /* renamed from: b */
    public final long f17512b;

    /* renamed from: com.dropbox.core.v2.files.j$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2714j> {

        /* renamed from: b */
        public static final a f17513b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2714j deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = 30L;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("timeout".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            C2714j c2714j = new C2714j(str2, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2714j, c2714j.m11239c());
            return c2714j;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2714j c2714j, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) c2714j.f17511a, jsonGenerator);
            jsonGenerator.writeFieldName("timeout");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(c2714j.f17512b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2714j(String str, long j) {
        if (str != null) {
            if (str.length() >= 1) {
                this.f17511a = str;
                if (j < 30) {
                    throw new IllegalArgumentException("Number 'timeout' is smaller than 30L");
                }
                if (j <= 480) {
                    this.f17512b = j;
                    return;
                }
                throw new IllegalArgumentException("Number 'timeout' is larger than 480L");
            }
            throw new IllegalArgumentException("String 'cursor' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'cursor' is null");
    }

    /* renamed from: a */
    public String m11237a() {
        return this.f17511a;
    }

    /* renamed from: b */
    public long m11238b() {
        return this.f17512b;
    }

    /* renamed from: c */
    public String m11239c() {
        return a.f17513b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2714j c2714j = (C2714j) obj;
        String str = this.f17511a;
        String str2 = c2714j.f17511a;
        return (str == str2 || str.equals(str2)) && this.f17512b == c2714j.f17512b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17511a, Long.valueOf(this.f17512b)});
    }

    public String toString() {
        return a.f17513b.serialize((a) this, false);
    }

    public C2714j(String str) {
        this(str, 30L);
    }
}
