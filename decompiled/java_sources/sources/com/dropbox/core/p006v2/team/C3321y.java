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

/* renamed from: com.dropbox.core.v2.team.y */
/* loaded from: classes4.dex */
public class C3321y extends C3277a0 {

    /* renamed from: b */
    public final UserSelectorArg f18683b;

    /* renamed from: c */
    public final UserSelectorArg f18684c;

    /* renamed from: com.dropbox.core.v2.team.y$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3321y> {

        /* renamed from: b */
        public static final a f18685b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3321y deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            UserSelectorArg userSelectorArg2 = null;
            UserSelectorArg userSelectorArg3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("transfer_dest_id".equals(currentName)) {
                    userSelectorArg2 = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("transfer_admin_id".equals(currentName)) {
                    userSelectorArg3 = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (userSelectorArg2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"transfer_dest_id\" missing.");
            }
            if (userSelectorArg3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"transfer_admin_id\" missing.");
            }
            C3321y c3321y = new C3321y(userSelectorArg, userSelectorArg2, userSelectorArg3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3321y, c3321y.mo12555b());
            return c3321y;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3321y c3321y, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b c3275b = UserSelectorArg.C3275b.f18582b;
            c3275b.serialize(c3321y.f18585a, jsonGenerator);
            jsonGenerator.writeFieldName("transfer_dest_id");
            c3275b.serialize(c3321y.f18683b, jsonGenerator);
            jsonGenerator.writeFieldName("transfer_admin_id");
            c3275b.serialize(c3321y.f18684c, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3321y(UserSelectorArg userSelectorArg, UserSelectorArg userSelectorArg2, UserSelectorArg userSelectorArg3) {
        super(userSelectorArg);
        if (userSelectorArg2 == null) {
            throw new IllegalArgumentException("Required value for 'transferDestId' is null");
        }
        this.f18683b = userSelectorArg2;
        if (userSelectorArg3 == null) {
            throw new IllegalArgumentException("Required value for 'transferAdminId' is null");
        }
        this.f18684c = userSelectorArg3;
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    /* renamed from: a */
    public UserSelectorArg mo12554a() {
        return this.f18585a;
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    /* renamed from: b */
    public String mo12555b() {
        return a.f18685b.serialize((a) this, true);
    }

    /* renamed from: c */
    public UserSelectorArg m13003c() {
        return this.f18684c;
    }

    /* renamed from: d */
    public UserSelectorArg m13004d() {
        return this.f18683b;
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    public boolean equals(Object obj) {
        UserSelectorArg userSelectorArg;
        UserSelectorArg userSelectorArg2;
        UserSelectorArg userSelectorArg3;
        UserSelectorArg userSelectorArg4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3321y c3321y = (C3321y) obj;
        UserSelectorArg userSelectorArg5 = this.f18585a;
        UserSelectorArg userSelectorArg6 = c3321y.f18585a;
        return (userSelectorArg5 == userSelectorArg6 || userSelectorArg5.equals(userSelectorArg6)) && ((userSelectorArg = this.f18683b) == (userSelectorArg2 = c3321y.f18683b) || userSelectorArg.equals(userSelectorArg2)) && ((userSelectorArg3 = this.f18684c) == (userSelectorArg4 = c3321y.f18684c) || userSelectorArg3.equals(userSelectorArg4));
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18683b, this.f18684c});
    }

    @Override // com.dropbox.core.p006v2.team.C3277a0
    public String toString() {
        return a.f18685b.serialize((a) this, false);
    }
}
