package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.DeleteSecondaryEmailResult;
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
public class UserDeleteEmailsResult {
    protected final List<DeleteSecondaryEmailResult> results;
    protected final UserSelectorArg user;

    /* renamed from: com.dropbox.core.v2.team.UserDeleteEmailsResult$a */
    /* loaded from: classes4.dex */
    public static class C3266a extends StructSerializer<UserDeleteEmailsResult> {

        /* renamed from: b */
        public static final C3266a f18563b = new C3266a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserDeleteEmailsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(DeleteSecondaryEmailResult.C3026b.f18142b).deserialize(jsonParser);
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
            UserDeleteEmailsResult userDeleteEmailsResult = new UserDeleteEmailsResult(userSelectorArg, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userDeleteEmailsResult, userDeleteEmailsResult.toStringMultiline());
            return userDeleteEmailsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserDeleteEmailsResult userDeleteEmailsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(userDeleteEmailsResult.user, jsonGenerator);
            jsonGenerator.writeFieldName("results");
            StoneSerializers.list(DeleteSecondaryEmailResult.C3026b.f18142b).serialize((StoneSerializer) userDeleteEmailsResult.results, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserDeleteEmailsResult(UserSelectorArg userSelectorArg, List<DeleteSecondaryEmailResult> list) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'results' is null");
        }
        Iterator<DeleteSecondaryEmailResult> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'results' is null");
            }
        }
        this.results = list;
    }

    public boolean equals(Object obj) {
        List<DeleteSecondaryEmailResult> list;
        List<DeleteSecondaryEmailResult> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserDeleteEmailsResult userDeleteEmailsResult = (UserDeleteEmailsResult) obj;
        UserSelectorArg userSelectorArg = this.user;
        UserSelectorArg userSelectorArg2 = userDeleteEmailsResult.user;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && ((list = this.results) == (list2 = userDeleteEmailsResult.results) || list.equals(list2));
    }

    public List<DeleteSecondaryEmailResult> getResults() {
        return this.results;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.results});
    }

    public String toString() {
        return C3266a.f18563b.serialize((C3266a) this, false);
    }

    public String toStringMultiline() {
        return C3266a.f18563b.serialize((C3266a) this, true);
    }
}
