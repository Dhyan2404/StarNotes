package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.MemberPermission;
import com.dropbox.core.p006v2.sharing.MembershipInfo;
import com.dropbox.core.p006v2.sharing.UserInfo;
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
import java.util.List;

/* loaded from: classes4.dex */
public class UserMembershipInfo extends MembershipInfo {
    protected final UserInfo user;

    /* loaded from: classes4.dex */
    public static class Builder extends MembershipInfo.Builder {
        protected final UserInfo user;

        public Builder(AccessLevel accessLevel, UserInfo userInfo) {
            super(accessLevel);
            if (userInfo == null) {
                throw new IllegalArgumentException("Required value for 'user' is null");
            }
            this.user = userInfo;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public UserMembershipInfo build() {
            return new UserMembershipInfo(this.accessType, this.user, this.permissions, this.initials, this.isInherited);
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withInitials(String str) {
            super.withInitials(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withIsInherited(Boolean bool) {
            super.withIsInherited(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withPermissions(List<MemberPermission> list) {
            super.withPermissions(list);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.UserMembershipInfo$a */
    /* loaded from: classes4.dex */
    public static class C2979a extends StructSerializer<UserMembershipInfo> {

        /* renamed from: b */
        public static final C2979a f18031b = new C2979a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserMembershipInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.FALSE;
            AccessLevel accessLevel = null;
            UserInfo userInfo = null;
            List list = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_type".equals(currentName)) {
                    accessLevel = AccessLevel.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("user".equals(currentName)) {
                    userInfo = UserInfo.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).deserialize(jsonParser);
                } else if ("initials".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_inherited".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessLevel == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            if (userInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            UserMembershipInfo userMembershipInfo = new UserMembershipInfo(accessLevel, userInfo, list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userMembershipInfo, userMembershipInfo.toStringMultiline());
            return userMembershipInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserMembershipInfo userMembershipInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(userMembershipInfo.accessType, jsonGenerator);
            jsonGenerator.writeFieldName("user");
            UserInfo.Serializer.INSTANCE.serialize((UserInfo.Serializer) userMembershipInfo.user, jsonGenerator);
            if (userMembershipInfo.permissions != null) {
                jsonGenerator.writeFieldName("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).serialize((StoneSerializer) userMembershipInfo.permissions, jsonGenerator);
            }
            if (userMembershipInfo.initials != null) {
                jsonGenerator.writeFieldName("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userMembershipInfo.initials, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_inherited");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(userMembershipInfo.isInherited), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserMembershipInfo(AccessLevel accessLevel, UserInfo userInfo, List<MemberPermission> list, String str, boolean z) {
        super(accessLevel, list, str, z);
        if (userInfo != null) {
            this.user = userInfo;
            return;
        }
        throw new IllegalArgumentException("Required value for 'user' is null");
    }

    public static Builder newBuilder(AccessLevel accessLevel, UserInfo userInfo) {
        return new Builder(accessLevel, userInfo);
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        UserInfo userInfo;
        UserInfo userInfo2;
        List<MemberPermission> list;
        List<MemberPermission> list2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserMembershipInfo userMembershipInfo = (UserMembershipInfo) obj;
        AccessLevel accessLevel = this.accessType;
        AccessLevel accessLevel2 = userMembershipInfo.accessType;
        return (accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && ((userInfo = this.user) == (userInfo2 = userMembershipInfo.user) || userInfo.equals(userInfo2)) && (((list = this.permissions) == (list2 = userMembershipInfo.permissions) || (list != null && list.equals(list2))) && (((str = this.initials) == (str2 = userMembershipInfo.initials) || (str != null && str.equals(str2))) && this.isInherited == userMembershipInfo.isInherited));
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String getInitials() {
        return this.initials;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean getIsInherited() {
        return this.isInherited;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    public UserInfo getUser() {
        return this.user;
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.user});
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toString() {
        return C2979a.f18031b.serialize((C2979a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toStringMultiline() {
        return C2979a.f18031b.serialize((C2979a) this, true);
    }

    public UserMembershipInfo(AccessLevel accessLevel, UserInfo userInfo) {
        this(accessLevel, userInfo, null, null, false);
    }
}
