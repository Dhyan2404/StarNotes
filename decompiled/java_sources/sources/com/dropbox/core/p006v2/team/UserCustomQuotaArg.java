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
public class UserCustomQuotaArg {
    protected final long quotaGb;
    protected final UserSelectorArg user;

    /* renamed from: com.dropbox.core.v2.team.UserCustomQuotaArg$a */
    /* loaded from: classes4.dex */
    public static class C3264a extends StructSerializer<UserCustomQuotaArg> {

        /* renamed from: b */
        public static final C3264a f18561b = new C3264a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserCustomQuotaArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"quota_gb\" missing.");
            }
            UserCustomQuotaArg userCustomQuotaArg = new UserCustomQuotaArg(userSelectorArg, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userCustomQuotaArg, userCustomQuotaArg.toStringMultiline());
            return userCustomQuotaArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserCustomQuotaArg userCustomQuotaArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(userCustomQuotaArg.user, jsonGenerator);
            jsonGenerator.writeFieldName("quota_gb");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(userCustomQuotaArg.quotaGb), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserCustomQuotaArg(UserSelectorArg userSelectorArg, long j) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (j < 15) {
            throw new IllegalArgumentException("Number 'quotaGb' is smaller than 15L");
        }
        this.quotaGb = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserCustomQuotaArg userCustomQuotaArg = (UserCustomQuotaArg) obj;
        UserSelectorArg userSelectorArg = this.user;
        UserSelectorArg userSelectorArg2 = userCustomQuotaArg.user;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && this.quotaGb == userCustomQuotaArg.quotaGb;
    }

    public long getQuotaGb() {
        return this.quotaGb;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, Long.valueOf(this.quotaGb)});
    }

    public String toString() {
        return C3264a.f18561b.serialize((C3264a) this, false);
    }

    public String toStringMultiline() {
        return C3264a.f18561b.serialize((C3264a) this, true);
    }
}
