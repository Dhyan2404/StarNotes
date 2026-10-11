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

/* renamed from: com.dropbox.core.v2.team.s0 */
/* loaded from: classes4.dex */
public class C3313s0 extends C3305o0 {

    /* renamed from: b */
    public final String f18666b;

    /* renamed from: com.dropbox.core.v2.team.s0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3313s0> {

        /* renamed from: b */
        public static final a f18667b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3313s0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("team_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_folder_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            C3313s0 c3313s0 = new C3313s0(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3313s0, c3313s0.mo12732b());
            return c3313s0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3313s0 c3313s0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3313s0.f18649a, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3313s0.f18666b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3313s0(String str, String str2) {
        super(str);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.f18666b = str2;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    /* renamed from: a */
    public String mo12731a() {
        return this.f18649a;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    /* renamed from: b */
    public String mo12732b() {
        return a.f18667b.serialize((a) this, true);
    }

    /* renamed from: c */
    public String m12971c() {
        return this.f18666b;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3313s0 c3313s0 = (C3313s0) obj;
        String str3 = this.f18649a;
        String str4 = c3313s0.f18649a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f18666b) == (str2 = c3313s0.f18666b) || str.equals(str2));
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18666b});
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public String toString() {
        return a.f18667b.serialize((a) this, false);
    }
}
