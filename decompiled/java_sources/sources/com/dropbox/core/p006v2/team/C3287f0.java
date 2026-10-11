package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.AdminTier;
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

/* renamed from: com.dropbox.core.v2.team.f0 */
/* loaded from: classes4.dex */
public class C3287f0 {

    /* renamed from: a */
    public final UserSelectorArg f18605a;

    /* renamed from: b */
    public final AdminTier f18606b;

    /* renamed from: com.dropbox.core.v2.team.f0$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3287f0> {

        /* renamed from: b */
        public static final a f18607b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3287f0 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AdminTier adminTier = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("new_role".equals(currentName)) {
                    adminTier = AdminTier.C3015b.f18121b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (adminTier == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_role\" missing.");
            }
            C3287f0 c3287f0 = new C3287f0(userSelectorArg, adminTier);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3287f0, c3287f0.m12866c());
            return c3287f0;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3287f0 c3287f0, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(c3287f0.f18605a, jsonGenerator);
            jsonGenerator.writeFieldName("new_role");
            AdminTier.C3015b.f18121b.serialize(c3287f0.f18606b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3287f0(UserSelectorArg userSelectorArg, AdminTier adminTier) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.f18605a = userSelectorArg;
        if (adminTier == null) {
            throw new IllegalArgumentException("Required value for 'newRole' is null");
        }
        this.f18606b = adminTier;
    }

    /* renamed from: a */
    public AdminTier m12864a() {
        return this.f18606b;
    }

    /* renamed from: b */
    public UserSelectorArg m12865b() {
        return this.f18605a;
    }

    /* renamed from: c */
    public String m12866c() {
        return a.f18607b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        AdminTier adminTier;
        AdminTier adminTier2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3287f0 c3287f0 = (C3287f0) obj;
        UserSelectorArg userSelectorArg = this.f18605a;
        UserSelectorArg userSelectorArg2 = c3287f0.f18605a;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && ((adminTier = this.f18606b) == (adminTier2 = c3287f0.f18606b) || adminTier.equals(adminTier2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18605a, this.f18606b});
    }

    public String toString() {
        return a.f18607b.serialize((a) this, false);
    }
}
