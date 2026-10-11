package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.secondaryemails.SecondaryEmail;
import com.dropbox.core.p006v2.team.MemberProfile;
import com.dropbox.core.p006v2.team.TeamMemberStatus;
import com.dropbox.core.p006v2.team.TeamMembershipType;
import com.dropbox.core.p006v2.users.Name;
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
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class TeamMemberProfile extends MemberProfile {
    protected final List<String> groups;
    protected final String memberFolderId;

    /* loaded from: classes4.dex */
    public static class Builder extends MemberProfile.Builder {
        protected final List<String> groups;
        protected final String memberFolderId;

        public Builder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3) {
            super(str, str2, z, teamMemberStatus, name, teamMembershipType);
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'groups' is null");
            }
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'groups' is null");
                }
            }
            this.groups = list;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'memberFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                throw new IllegalArgumentException("String 'memberFolderId' does not match pattern");
            }
            this.memberFolderId = str3;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public /* bridge */ /* synthetic */ MemberProfile.Builder withSecondaryEmails(List list) {
            return withSecondaryEmails((List<SecondaryEmail>) list);
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public TeamMemberProfile build() {
            return new TeamMemberProfile(this.teamMemberId, this.email, this.emailVerified, this.status, this.name, this.membershipType, this.groups, this.memberFolderId, this.externalId, this.accountId, this.secondaryEmails, this.invitedOn, this.joinedOn, this.suspendedOn, this.persistentId, this.isDirectoryRestricted, this.profilePhotoUrl);
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withAccountId(String str) {
            super.withAccountId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withExternalId(String str) {
            super.withExternalId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withInvitedOn(Date date) {
            super.withInvitedOn(date);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withIsDirectoryRestricted(Boolean bool) {
            super.withIsDirectoryRestricted(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withJoinedOn(Date date) {
            super.withJoinedOn(date);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withPersistentId(String str) {
            super.withPersistentId(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withProfilePhotoUrl(String str) {
            super.withProfilePhotoUrl(str);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withSecondaryEmails(List<SecondaryEmail> list) {
            super.withSecondaryEmails(list);
            return this;
        }

        @Override // com.dropbox.core.v2.team.MemberProfile.Builder
        public Builder withSuspendedOn(Date date) {
            super.withSuspendedOn(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamMemberProfile$a */
    /* loaded from: classes4.dex */
    public static class C3246a extends StructSerializer<TeamMemberProfile> {

        /* renamed from: b */
        public static final C3246a f18534b = new C3246a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMemberProfile deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            TeamMemberStatus teamMemberStatus = null;
            Name name = null;
            TeamMembershipType teamMembershipType = null;
            List list = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            List list2 = null;
            Date date = null;
            Date date2 = null;
            Date date3 = null;
            String str7 = null;
            Boolean bool2 = null;
            String str8 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_member_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("email".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("email_verified".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("status".equals(currentName)) {
                    teamMemberStatus = TeamMemberStatus.C3248b.f18538b.deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    name = Name.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("membership_type".equals(currentName)) {
                    teamMembershipType = TeamMembershipType.C3250b.f18540b.deserialize(jsonParser);
                } else if ("groups".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("member_folder_id".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("external_id".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("account_id".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("secondary_emails".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(SecondaryEmail.Serializer.INSTANCE)).deserialize(jsonParser);
                } else if ("invited_on".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("joined_on".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("suspended_on".equals(currentName)) {
                    date3 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("persistent_id".equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_directory_restricted".equals(currentName)) {
                    bool2 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("profile_photo_url".equals(currentName)) {
                    str8 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"email\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"email_verified\" missing.");
            }
            if (teamMemberStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"status\" missing.");
            }
            if (name == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (teamMembershipType == null) {
                throw new JsonParseException(jsonParser, "Required field \"membership_type\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"groups\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"member_folder_id\" missing.");
            }
            TeamMemberProfile teamMemberProfile = new TeamMemberProfile(str2, str3, bool.booleanValue(), teamMemberStatus, name, teamMembershipType, list, str4, str5, str6, list2, date, date2, date3, str7, bool2, str8);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamMemberProfile, teamMemberProfile.toStringMultiline());
            return teamMemberProfile;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMemberProfile teamMemberProfile, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMemberProfile.teamMemberId, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMemberProfile.email, jsonGenerator);
            jsonGenerator.writeFieldName("email_verified");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(teamMemberProfile.emailVerified), jsonGenerator);
            jsonGenerator.writeFieldName("status");
            TeamMemberStatus.C3248b.f18538b.serialize(teamMemberProfile.status, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            Name.Serializer.INSTANCE.serialize((Name.Serializer) teamMemberProfile.name, jsonGenerator);
            jsonGenerator.writeFieldName("membership_type");
            TeamMembershipType.C3250b.f18540b.serialize(teamMemberProfile.membershipType, jsonGenerator);
            jsonGenerator.writeFieldName("groups");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) teamMemberProfile.groups, jsonGenerator);
            jsonGenerator.writeFieldName("member_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) teamMemberProfile.memberFolderId, jsonGenerator);
            if (teamMemberProfile.externalId != null) {
                jsonGenerator.writeFieldName("external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberProfile.externalId, jsonGenerator);
            }
            if (teamMemberProfile.accountId != null) {
                jsonGenerator.writeFieldName("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberProfile.accountId, jsonGenerator);
            }
            if (teamMemberProfile.secondaryEmails != null) {
                jsonGenerator.writeFieldName("secondary_emails");
                StoneSerializers.nullable(StoneSerializers.list(SecondaryEmail.Serializer.INSTANCE)).serialize((StoneSerializer) teamMemberProfile.secondaryEmails, jsonGenerator);
            }
            if (teamMemberProfile.invitedOn != null) {
                jsonGenerator.writeFieldName("invited_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) teamMemberProfile.invitedOn, jsonGenerator);
            }
            if (teamMemberProfile.joinedOn != null) {
                jsonGenerator.writeFieldName("joined_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) teamMemberProfile.joinedOn, jsonGenerator);
            }
            if (teamMemberProfile.suspendedOn != null) {
                jsonGenerator.writeFieldName("suspended_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) teamMemberProfile.suspendedOn, jsonGenerator);
            }
            if (teamMemberProfile.persistentId != null) {
                jsonGenerator.writeFieldName("persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberProfile.persistentId, jsonGenerator);
            }
            if (teamMemberProfile.isDirectoryRestricted != null) {
                jsonGenerator.writeFieldName("is_directory_restricted");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) teamMemberProfile.isDirectoryRestricted, jsonGenerator);
            }
            if (teamMemberProfile.profilePhotoUrl != null) {
                jsonGenerator.writeFieldName("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) teamMemberProfile.profilePhotoUrl, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamMemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3, String str4, String str5, List<SecondaryEmail> list2, Date date, Date date2, Date date3, String str6, Boolean bool, String str7) {
        super(str, str2, z, teamMemberStatus, name, teamMembershipType, str4, str5, list2, date, date2, date3, str6, bool, str7);
        if (list != null) {
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'groups' is null");
                }
            }
            this.groups = list;
            if (str3 != null) {
                if (Pattern.matches("[-_0-9a-zA-Z:]+", str3)) {
                    this.memberFolderId = str3;
                    return;
                }
                throw new IllegalArgumentException("String 'memberFolderId' does not match pattern");
            }
            throw new IllegalArgumentException("Required value for 'memberFolderId' is null");
        }
        throw new IllegalArgumentException("Required value for 'groups' is null");
    }

    public static Builder newBuilder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3) {
        return new Builder(str, str2, z, teamMemberStatus, name, teamMembershipType, list, str3);
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public boolean equals(Object obj) {
        String str;
        String str2;
        TeamMemberStatus teamMemberStatus;
        TeamMemberStatus teamMemberStatus2;
        Name name;
        Name name2;
        TeamMembershipType teamMembershipType;
        TeamMembershipType teamMembershipType2;
        List<String> list;
        List<String> list2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        List<SecondaryEmail> list3;
        List<SecondaryEmail> list4;
        Date date;
        Date date2;
        Date date3;
        Date date4;
        Date date5;
        Date date6;
        String str9;
        String str10;
        Boolean bool;
        Boolean bool2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamMemberProfile teamMemberProfile = (TeamMemberProfile) obj;
        String str11 = this.teamMemberId;
        String str12 = teamMemberProfile.teamMemberId;
        if ((str11 == str12 || str11.equals(str12)) && (((str = this.email) == (str2 = teamMemberProfile.email) || str.equals(str2)) && this.emailVerified == teamMemberProfile.emailVerified && (((teamMemberStatus = this.status) == (teamMemberStatus2 = teamMemberProfile.status) || teamMemberStatus.equals(teamMemberStatus2)) && (((name = this.name) == (name2 = teamMemberProfile.name) || name.equals(name2)) && (((teamMembershipType = this.membershipType) == (teamMembershipType2 = teamMemberProfile.membershipType) || teamMembershipType.equals(teamMembershipType2)) && (((list = this.groups) == (list2 = teamMemberProfile.groups) || list.equals(list2)) && (((str3 = this.memberFolderId) == (str4 = teamMemberProfile.memberFolderId) || str3.equals(str4)) && (((str5 = this.externalId) == (str6 = teamMemberProfile.externalId) || (str5 != null && str5.equals(str6))) && (((str7 = this.accountId) == (str8 = teamMemberProfile.accountId) || (str7 != null && str7.equals(str8))) && (((list3 = this.secondaryEmails) == (list4 = teamMemberProfile.secondaryEmails) || (list3 != null && list3.equals(list4))) && (((date = this.invitedOn) == (date2 = teamMemberProfile.invitedOn) || (date != null && date.equals(date2))) && (((date3 = this.joinedOn) == (date4 = teamMemberProfile.joinedOn) || (date3 != null && date3.equals(date4))) && (((date5 = this.suspendedOn) == (date6 = teamMemberProfile.suspendedOn) || (date5 != null && date5.equals(date6))) && (((str9 = this.persistentId) == (str10 = teamMemberProfile.persistentId) || (str9 != null && str9.equals(str10))) && ((bool = this.isDirectoryRestricted) == (bool2 = teamMemberProfile.isDirectoryRestricted) || (bool != null && bool.equals(bool2))))))))))))))))) {
            String str13 = this.profilePhotoUrl;
            String str14 = teamMemberProfile.profilePhotoUrl;
            if (str13 == str14) {
                return true;
            }
            if (str13 != null && str13.equals(str14)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String getAccountId() {
        return this.accountId;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String getEmail() {
        return this.email;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String getExternalId() {
        return this.externalId;
    }

    public List<String> getGroups() {
        return this.groups;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public Date getInvitedOn() {
        return this.invitedOn;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public Boolean getIsDirectoryRestricted() {
        return this.isDirectoryRestricted;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public Date getJoinedOn() {
        return this.joinedOn;
    }

    public String getMemberFolderId() {
        return this.memberFolderId;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public TeamMembershipType getMembershipType() {
        return this.membershipType;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public Name getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String getPersistentId() {
        return this.persistentId;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public List<SecondaryEmail> getSecondaryEmails() {
        return this.secondaryEmails;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public TeamMemberStatus getStatus() {
        return this.status;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public Date getSuspendedOn() {
        return this.suspendedOn;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.groups, this.memberFolderId});
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String toString() {
        return C3246a.f18534b.serialize((C3246a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.MemberProfile
    public String toStringMultiline() {
        return C3246a.f18534b.serialize((C3246a) this, true);
    }

    public TeamMemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, List<String> list, String str3) {
        this(str, str2, z, teamMemberStatus, name, teamMembershipType, list, str3, null, null, null, null, null, null, null, null, null);
    }
}
