package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupAccessType;
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

/* loaded from: classes4.dex */
public class MemberAccess {
    protected final GroupAccessType accessType;
    protected final UserSelectorArg user;

    /* renamed from: com.dropbox.core.v2.team.MemberAccess$a */
    /* loaded from: classes4.dex */
    public static class C3138a extends StructSerializer<MemberAccess> {

        /* renamed from: b */
        public static final C3138a f18327b = new C3138a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberAccess deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupAccessType groupAccessType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("access_type".equals(currentName)) {
                    groupAccessType = GroupAccessType.C3055b.f18182b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            if (groupAccessType == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            MemberAccess memberAccess = new MemberAccess(userSelectorArg, groupAccessType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberAccess, memberAccess.toStringMultiline());
            return memberAccess;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberAccess memberAccess, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(memberAccess.user, jsonGenerator);
            jsonGenerator.writeFieldName("access_type");
            GroupAccessType.C3055b.f18182b.serialize(memberAccess.accessType, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberAccess(UserSelectorArg userSelectorArg, GroupAccessType groupAccessType) {
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.user = userSelectorArg;
        if (groupAccessType == null) {
            throw new IllegalArgumentException("Required value for 'accessType' is null");
        }
        this.accessType = groupAccessType;
    }

    public boolean equals(Object obj) {
        GroupAccessType groupAccessType;
        GroupAccessType groupAccessType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberAccess memberAccess = (MemberAccess) obj;
        UserSelectorArg userSelectorArg = this.user;
        UserSelectorArg userSelectorArg2 = memberAccess.user;
        return (userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && ((groupAccessType = this.accessType) == (groupAccessType2 = memberAccess.accessType) || groupAccessType.equals(groupAccessType2));
    }

    public GroupAccessType getAccessType() {
        return this.accessType;
    }

    public UserSelectorArg getUser() {
        return this.user;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.user, this.accessType});
    }

    public String toString() {
        return C3138a.f18327b.serialize((C3138a) this, false);
    }

    public String toStringMultiline() {
        return C3138a.f18327b.serialize((C3138a) this, true);
    }
}
