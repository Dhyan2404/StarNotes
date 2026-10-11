package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.ResendSecondaryEmailResult;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class UserResendEmailsResult {
    protected final List<ResendSecondaryEmailResult> results;
    protected final UserSelectorArg user;

    /* renamed from: com.dropbox.core.v2.team.UserResendEmailsResult$a */
    /* loaded from: classes4.dex */
    public static class C3269a extends StructSerializer<UserResendEmailsResult> {

        /* renamed from: b */
        public static final C3269a f18569b = new C3269a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserResendEmailsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("results".equals(currentName)) {
                    list = (List) StoneSerializers.list(ResendSecondaryEmailResult.C3192b.f18440b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"results\" missing.");
            }
            UserResendEmailsResult userResendEmailsResult = new UserResendEmailsResult(userSelectorArg, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userResendEmailsResult, userResendEmailsResult.toStringMultiline());
            return userResendEmailsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserResendEmailsResult userResendEmailsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(userResendEmailsResult.user, jsonGenerator);
            jsonGenerator.writeFieldName("results");
            StoneSerializers.list(ResendSecondaryEmailResult.C3192b.f18440b).serialize((StoneSerializer) userResendEmailsResult.results, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserResendEmailsResult(UserSelectorArg userSelectorArg, List<ResendSecondaryEmailResult> list) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'results' is null");
        }
        Iterator<ResendSecondaryEmailResult> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'results' is null");
            }
        }
        this.results = list;
    }

    public boolean equals(Object obj) {
        List<ResendSecondaryEmailResult> list;
        List<ResendSecondaryEmailResult> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserResendEmailsResult userResendEmailsResult = (UserResendEmailsResult) obj;
        UserSelectorArg userSelectorArg = this.user;
        UserSelectorArg userSelectorArg2 = userResendEmailsResult.user;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && ((list = this.results) == (list2 = userResendEmailsResult.results) || list.equals(list2));
    }

    public List<ResendSecondaryEmailResult> getResults() {
        return this.results;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.results});
    }

    public String toString() {
        return C3269a.f18569b.serialize((C3269a) this, false);
    }

    public String toStringMultiline() {
        return C3269a.f18569b.serialize((C3269a) this, true);
    }
}
