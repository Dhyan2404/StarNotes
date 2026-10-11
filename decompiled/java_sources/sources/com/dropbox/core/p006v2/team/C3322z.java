package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserSelectorArg;
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

/* renamed from: com.dropbox.core.v2.team.z */
/* loaded from: classes4.dex */
public class C3322z extends C3277a0 {

    /* renamed from: b */
    public final boolean f18686b;

    /* renamed from: com.dropbox.core.v2.team.z$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3322z> {

        /* renamed from: b */
        public static final a f18687b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3322z deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UserSelectorArg userSelectorArg = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.TRUE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("wipe_data".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            C3322z c3322z = new C3322z(userSelectorArg, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3322z, c3322z.mo12555b());
            return c3322z;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3322z c3322z, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(c3322z.f18585a, jsonGenerator);
            jsonGenerator.writeFieldName("wipe_data");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c3322z.f18686b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3322z(UserSelectorArg userSelectorArg, boolean z) {
        super(userSelectorArg);
        this.f18686b = z;
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    /* renamed from: a */
    public UserSelectorArg mo12554a() {
        return this.f18585a;
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    /* renamed from: b */
    public String mo12555b() {
        return a.f18687b.serialize((a) this, true);
    }

    /* renamed from: c */
    public boolean mo12556c() {
        return this.f18686b;
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3322z c3322z = (C3322z) obj;
        UserSelectorArg userSelectorArg = this.f18585a;
        UserSelectorArg userSelectorArg2 = c3322z.f18585a;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && this.f18686b == c3322z.f18686b;
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Boolean.valueOf(this.f18686b)});
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    public String toString() {
        return a.f18687b.serialize((a) this, false);
    }

    public C3322z(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, true);
    }
}
