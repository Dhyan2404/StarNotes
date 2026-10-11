package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.UserSelectorArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.team.h0 */
/* loaded from: classes4.dex */
public class C3291h0 {

    /* renamed from: a */
    public final UserSelectorArg f18616a;

    /* renamed from: com.dropbox.core.v2.team.h0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3291h0> {

        /* renamed from: b */
        public static final a f18617b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3291h0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            C3291h0 c3291h0 = new C3291h0(userSelectorArg);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3291h0, c3291h0.m12884b());
            return c3291h0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3291h0 c3291h0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(c3291h0.f18616a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3291h0(UserSelectorArg userSelectorArg) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.f18616a = userSelectorArg;
    }

    /* renamed from: a */
    public UserSelectorArg m12883a() {
        return this.f18616a;
    }

    /* renamed from: b */
    public String m12884b() {
        return a.f18617b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserSelectorArg userSelectorArg = this.f18616a;
        UserSelectorArg userSelectorArg2 = ((C3291h0) obj).f18616a;
        return userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18616a});
    }

    public String toString() {
        return a.f18617b.serialize((a) this, false);
    }
}
