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

/* renamed from: com.dropbox.core.v2.team.b0 */
/* loaded from: classes4.dex */
public class C3279b0 {

    /* renamed from: a */
    public final UserSelectorArg f18589a;

    /* renamed from: com.dropbox.core.v2.team.b0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3279b0> {

        /* renamed from: b */
        public static final a f18590b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3279b0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            C3279b0 c3279b0 = new C3279b0(userSelectorArg);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3279b0, c3279b0.m12833b());
            return c3279b0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3279b0 c3279b0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(c3279b0.f18589a, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3279b0(UserSelectorArg userSelectorArg) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.f18589a = userSelectorArg;
    }

    /* renamed from: a */
    public UserSelectorArg m12832a() {
        return this.f18589a;
    }

    /* renamed from: b */
    public String m12833b() {
        return a.f18590b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserSelectorArg userSelectorArg = this.f18589a;
        UserSelectorArg userSelectorArg2 = ((C3279b0) obj).f18589a;
        return userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18589a});
    }

    public String toString() {
        return a.f18590b.serialize((a) this, false);
    }
}
