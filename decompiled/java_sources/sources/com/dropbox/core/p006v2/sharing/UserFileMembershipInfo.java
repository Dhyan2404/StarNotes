package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.seenstate.PlatformType;
import com.dropbox.core.p006v2.sharing.AccessLevel;
import com.dropbox.core.p006v2.sharing.MemberPermission;
import com.dropbox.core.p006v2.sharing.MembershipInfo;
import com.dropbox.core.p006v2.sharing.UserInfo;
import com.dropbox.core.p006v2.sharing.UserMembershipInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class UserFileMembershipInfo extends UserMembershipInfo {
    protected final PlatformType platformType;
    protected final Date timeLastSeen;

    /* loaded from: classes4.dex */
    public static class Builder extends UserMembershipInfo.Builder {
        protected PlatformType platformType;
        protected Date timeLastSeen;

        public Builder(AccessLevel accessLevel, UserInfo userInfo) {
            super(accessLevel, userInfo);
            this.timeLastSeen = null;
            this.platformType = null;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ MembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        public Builder withPlatformType(PlatformType platformType) {
            this.platformType = platformType;
            return this;
        }

        public Builder withTimeLastSeen(Date date) {
            this.timeLastSeen = LangUtil.truncateMillis(date);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public /* bridge */ /* synthetic */ UserMembershipInfo.Builder withPermissions(List list) {
            return withPermissions((List<MemberPermission>) list);
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public UserFileMembershipInfo build() {
            return new UserFileMembershipInfo(this.accessType, this.user, this.permissions, this.initials, this.isInherited, this.timeLastSeen, this.platformType);
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withInitials(String str) {
            super.withInitials(str);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withIsInherited(Boolean bool) {
            super.withIsInherited(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.UserMembershipInfo.Builder, com.dropbox.core.v2.sharing.MembershipInfo.Builder
        public Builder withPermissions(List<MemberPermission> list) {
            super.withPermissions(list);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.UserFileMembershipInfo$a */
    /* loaded from: classes4.dex */
    public static class C2978a extends StructSerializer<UserFileMembershipInfo> {

        /* renamed from: b */
        public static final C2978a f18030b = new C2978a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserFileMembershipInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Date date = null;
            PlatformType platformType = null;
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
                } else if ("time_last_seen".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("platform_type".equals(currentName)) {
                    platformType = (PlatformType) StoneSerializers.nullable(PlatformType.Serializer.INSTANCE).deserialize(jsonParser);
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
            UserFileMembershipInfo userFileMembershipInfo = new UserFileMembershipInfo(accessLevel, userInfo, list, str2, bool.booleanValue(), date, platformType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userFileMembershipInfo, userFileMembershipInfo.toStringMultiline());
            return userFileMembershipInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserFileMembershipInfo userFileMembershipInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_type");
            AccessLevel.Serializer.INSTANCE.serialize(userFileMembershipInfo.accessType, jsonGenerator);
            jsonGenerator.writeFieldName("user");
            UserInfo.Serializer.INSTANCE.serialize((UserInfo.Serializer) userFileMembershipInfo.user, jsonGenerator);
            if (userFileMembershipInfo.permissions != null) {
                jsonGenerator.writeFieldName("permissions");
                StoneSerializers.nullable(StoneSerializers.list(MemberPermission.C2894a.f17867b)).serialize((StoneSerializer) userFileMembershipInfo.permissions, jsonGenerator);
            }
            if (userFileMembershipInfo.initials != null) {
                jsonGenerator.writeFieldName("initials");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userFileMembershipInfo.initials, jsonGenerator);
            }
            jsonGenerator.writeFieldName("is_inherited");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(userFileMembershipInfo.isInherited), jsonGenerator);
            if (userFileMembershipInfo.timeLastSeen != null) {
                jsonGenerator.writeFieldName("time_last_seen");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) userFileMembershipInfo.timeLastSeen, jsonGenerator);
            }
            if (userFileMembershipInfo.platformType != null) {
                jsonGenerator.writeFieldName("platform_type");
                StoneSerializers.nullable(PlatformType.Serializer.INSTANCE).serialize((StoneSerializer) userFileMembershipInfo.platformType, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserFileMembershipInfo(AccessLevel accessLevel, UserInfo userInfo, List<MemberPermission> list, String str, boolean z, Date date, PlatformType platformType) {
        super(accessLevel, userInfo, list, str, z);
        this.timeLastSeen = LangUtil.truncateMillis(date);
        this.platformType = platformType;
    }

    public static Builder newBuilder(AccessLevel accessLevel, UserInfo userInfo) {
        return new Builder(accessLevel, userInfo);
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean equals(Object obj) {
        UserInfo userInfo;
        UserInfo userInfo2;
        List<MemberPermission> list;
        List<MemberPermission> list2;
        String str;
        String str2;
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserFileMembershipInfo userFileMembershipInfo = (UserFileMembershipInfo) obj;
        AccessLevel accessLevel = this.accessType;
        AccessLevel accessLevel2 = userFileMembershipInfo.accessType;
        if ((accessLevel == accessLevel2 || accessLevel.equals(accessLevel2)) && (((userInfo = this.user) == (userInfo2 = userFileMembershipInfo.user) || userInfo.equals(userInfo2)) && (((list = this.permissions) == (list2 = userFileMembershipInfo.permissions) || (list != null && list.equals(list2))) && (((str = this.initials) == (str2 = userFileMembershipInfo.initials) || (str != null && str.equals(str2))) && this.isInherited == userFileMembershipInfo.isInherited && ((date = this.timeLastSeen) == (date2 = userFileMembershipInfo.timeLastSeen) || (date != null && date.equals(date2))))))) {
            PlatformType platformType = this.platformType;
            PlatformType platformType2 = userFileMembershipInfo.platformType;
            if (platformType == platformType2) {
                return true;
            }
            if (platformType != null && platformType.equals(platformType2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public AccessLevel getAccessType() {
        return this.accessType;
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public String getInitials() {
        return this.initials;
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public boolean getIsInherited() {
        return this.isInherited;
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public List<MemberPermission> getPermissions() {
        return this.permissions;
    }

    public PlatformType getPlatformType() {
        return this.platformType;
    }

    public Date getTimeLastSeen() {
        return this.timeLastSeen;
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo
    public UserInfo getUser() {
        return this.user;
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.timeLastSeen, this.platformType});
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toString() {
        return C2978a.f18030b.serialize((C2978a) this, false);
    }

    @Override // com.dropbox.core.p006v2.sharing.UserMembershipInfo, com.dropbox.core.p006v2.sharing.MembershipInfo
    public String toStringMultiline() {
        return C2978a.f18030b.serialize((C2978a) this, true);
    }

    public UserFileMembershipInfo(AccessLevel accessLevel, UserInfo userInfo) {
        this(accessLevel, userInfo, null, null, false, null, null);
    }
}
