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

/* renamed from: com.dropbox.core.v2.team.m0 */
/* loaded from: classes4.dex */
public class C3301m0 extends C3305o0 {

    /* renamed from: b */
    public final boolean f18639b;

    /* renamed from: com.dropbox.core.v2.team.m0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3301m0> {

        /* renamed from: b */
        public static final a f18640b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3301m0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("force_async_off".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_folder_id\" missing.");
            }
            C3301m0 c3301m0 = new C3301m0(str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3301m0, c3301m0.mo12732b());
            return c3301m0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3301m0 c3301m0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) c3301m0.f18649a, jsonGenerator);
            jsonGenerator.writeFieldName("force_async_off");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c3301m0.f18639b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3301m0(String str, boolean z) {
        super(str);
        this.f18639b = z;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    /* renamed from: a */
    public String mo12731a() {
        return this.f18649a;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    /* renamed from: b */
    public String mo12732b() {
        return a.f18640b.serialize((a) this, true);
    }

    /* renamed from: c */
    public boolean m12923c() {
        return this.f18639b;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3301m0 c3301m0 = (C3301m0) obj;
        String str = this.f18649a;
        String str2 = c3301m0.f18649a;
        return (str == str2 || str.equals(str2)) && this.f18639b == c3301m0.f18639b;
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Boolean.valueOf(this.f18639b)});
    }

    @Override // com.dropbox.core.p006v2.team.C3305o0
    public String toString() {
        return a.f18640b.serialize((a) this, false);
    }

    public C3301m0(String str) {
        this(str, false);
    }
}
