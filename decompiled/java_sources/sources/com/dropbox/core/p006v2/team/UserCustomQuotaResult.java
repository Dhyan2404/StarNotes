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

/* loaded from: classes4.dex */
public class UserCustomQuotaResult {
    protected final Long quotaGb;
    protected final UserSelectorArg user;

    /* renamed from: com.dropbox.core.v2.team.UserCustomQuotaResult$a */
    /* loaded from: classes4.dex */
    public static class C3265a extends StructSerializer<UserCustomQuotaResult> {

        /* renamed from: b */
        public static final C3265a f18562b = new C3265a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserCustomQuotaResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("quota_gb".equals(currentName)) {
                    l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            UserCustomQuotaResult userCustomQuotaResult = new UserCustomQuotaResult(userSelectorArg, l);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userCustomQuotaResult, userCustomQuotaResult.toStringMultiline());
            return userCustomQuotaResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserCustomQuotaResult userCustomQuotaResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(userCustomQuotaResult.user, jsonGenerator);
            if (userCustomQuotaResult.quotaGb != null) {
                jsonGenerator.writeFieldName("quota_gb");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize((StoneSerializer) userCustomQuotaResult.quotaGb, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserCustomQuotaResult(UserSelectorArg userSelectorArg, Long l) {
        if (userSelectorArg != null) {
            this.user = userSelectorArg;
            if (l != null && l.longValue() < 15) {
                throw new IllegalArgumentException("Number 'quotaGb' is smaller than 15L");
            }
            this.quotaGb = l;
            return;
        }
        throw new IllegalArgumentException("Required value for 'user' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserCustomQuotaResult userCustomQuotaResult = (UserCustomQuotaResult) obj;
        UserSelectorArg userSelectorArg = this.user;
        UserSelectorArg userSelectorArg2 = userCustomQuotaResult.user;
        if (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) {
            Long l = this.quotaGb;
            Long l2 = userCustomQuotaResult.quotaGb;
            if (l == l2) {
                return true;
            }
            if (l != null && l.equals(l2)) {
                return true;
            }
        }
        return false;
    }

    public Long getQuotaGb() {
        return this.quotaGb;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.quotaGb});
    }

    public String toString() {
        return C3265a.f18562b.serialize((C3265a) this, false);
    }

    public String toStringMultiline() {
        return C3265a.f18562b.serialize((C3265a) this, true);
    }

    public UserCustomQuotaResult(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, null);
    }
}
