package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.secondaryemails.SecondaryEmail;
import com.dropbox.core.p006v2.team.TeamMemberStatus;
import com.dropbox.core.p006v2.team.TeamMembershipType;
import com.dropbox.core.p006v2.users.Name;
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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class MemberProfile {
    protected final String accountId;
    protected final String email;
    protected final boolean emailVerified;
    protected final String externalId;
    protected final Date invitedOn;
    protected final Boolean isDirectoryRestricted;
    protected final Date joinedOn;
    protected final TeamMembershipType membershipType;
    protected final Name name;
    protected final String persistentId;
    protected final String profilePhotoUrl;
    protected final List<SecondaryEmail> secondaryEmails;
    protected final TeamMemberStatus status;
    protected final Date suspendedOn;
    protected final String teamMemberId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String accountId;
        protected final String email;
        protected final boolean emailVerified;
        protected String externalId;
        protected Date invitedOn;
        protected Boolean isDirectoryRestricted;
        protected Date joinedOn;
        protected final TeamMembershipType membershipType;
        protected final Name name;
        protected String persistentId;
        protected String profilePhotoUrl;
        protected List<SecondaryEmail> secondaryEmails;
        protected final TeamMemberStatus status;
        protected Date suspendedOn;
        protected final String teamMemberId;

        public Builder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
            }
            this.teamMemberId = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'email' is null");
            }
            this.email = str2;
            this.emailVerified = z;
            if (teamMemberStatus == null) {
                throw new IllegalArgumentException("Required value for 'status' is null");
            }
            this.status = teamMemberStatus;
            if (name == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = name;
            if (teamMembershipType == null) {
                throw new IllegalArgumentException("Required value for 'membershipType' is null");
            }
            this.membershipType = teamMembershipType;
            this.externalId = null;
            this.accountId = null;
            this.secondaryEmails = null;
            this.invitedOn = null;
            this.joinedOn = null;
            this.suspendedOn = null;
            this.persistentId = null;
            this.isDirectoryRestricted = null;
            this.profilePhotoUrl = null;
        }

        public MemberProfile build() {
            return new MemberProfile(this.teamMemberId, this.email, this.emailVerified, this.status, this.name, this.membershipType, this.externalId, this.accountId, this.secondaryEmails, this.invitedOn, this.joinedOn, this.suspendedOn, this.persistentId, this.isDirectoryRestricted, this.profilePhotoUrl);
        }

        public Builder withAccountId(String str) {
            if (str != null) {
                if (str.length() < 40) {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'accountId' is longer than 40");
                }
            }
            this.accountId = str;
            return this;
        }

        public Builder withExternalId(String str) {
            this.externalId = str;
            return this;
        }

        public Builder withInvitedOn(Date date) {
            this.invitedOn = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withIsDirectoryRestricted(Boolean bool) {
            this.isDirectoryRestricted = bool;
            return this;
        }

        public Builder withJoinedOn(Date date) {
            this.joinedOn = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withPersistentId(String str) {
            this.persistentId = str;
            return this;
        }

        public Builder withProfilePhotoUrl(String str) {
            this.profilePhotoUrl = str;
            return this;
        }

        public Builder withSecondaryEmails(List<SecondaryEmail> list) {
            if (list != null) {
                Iterator<SecondaryEmail> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'secondaryEmails' is null");
                    }
                }
            }
            this.secondaryEmails = list;
            return this;
        }

        public Builder withSuspendedOn(Date date) {
            this.suspendedOn = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MemberProfile$a */
    /* loaded from: classes4.dex */
    public static class C3144a extends StructSerializer<MemberProfile> {

        /* renamed from: b */
        public static final C3144a f18345b = new C3144a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberProfile deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str4 = null;
            String str5 = null;
            List list = null;
            Date date = null;
            Date date2 = null;
            Date date3 = null;
            String str6 = null;
            Boolean bool2 = null;
            String str7 = null;
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
                } else if ("external_id".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("account_id".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("secondary_emails".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(SecondaryEmail.Serializer.INSTANCE)).deserialize(jsonParser);
                } else if ("invited_on".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("joined_on".equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("suspended_on".equals(currentName)) {
                    date3 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if ("persistent_id".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_directory_restricted".equals(currentName)) {
                    bool2 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("profile_photo_url".equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
            MemberProfile memberProfile = new MemberProfile(str2, str3, bool.booleanValue(), teamMemberStatus, name, teamMembershipType, str4, str5, list, date, date2, date3, str6, bool2, str7);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberProfile, memberProfile.toStringMultiline());
            return memberProfile;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberProfile memberProfile, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) memberProfile.teamMemberId, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) memberProfile.email, jsonGenerator);
            jsonGenerator.writeFieldName("email_verified");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(memberProfile.emailVerified), jsonGenerator);
            jsonGenerator.writeFieldName("status");
            TeamMemberStatus.C3248b.f18538b.serialize(memberProfile.status, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            Name.Serializer.INSTANCE.serialize((Name.Serializer) memberProfile.name, jsonGenerator);
            jsonGenerator.writeFieldName("membership_type");
            TeamMembershipType.C3250b.f18540b.serialize(memberProfile.membershipType, jsonGenerator);
            if (memberProfile.externalId != null) {
                jsonGenerator.writeFieldName("external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberProfile.externalId, jsonGenerator);
            }
            if (memberProfile.accountId != null) {
                jsonGenerator.writeFieldName("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberProfile.accountId, jsonGenerator);
            }
            if (memberProfile.secondaryEmails != null) {
                jsonGenerator.writeFieldName("secondary_emails");
                StoneSerializers.nullable(StoneSerializers.list(SecondaryEmail.Serializer.INSTANCE)).serialize((StoneSerializer) memberProfile.secondaryEmails, jsonGenerator);
            }
            if (memberProfile.invitedOn != null) {
                jsonGenerator.writeFieldName("invited_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) memberProfile.invitedOn, jsonGenerator);
            }
            if (memberProfile.joinedOn != null) {
                jsonGenerator.writeFieldName("joined_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) memberProfile.joinedOn, jsonGenerator);
            }
            if (memberProfile.suspendedOn != null) {
                jsonGenerator.writeFieldName("suspended_on");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) memberProfile.suspendedOn, jsonGenerator);
            }
            if (memberProfile.persistentId != null) {
                jsonGenerator.writeFieldName("persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberProfile.persistentId, jsonGenerator);
            }
            if (memberProfile.isDirectoryRestricted != null) {
                jsonGenerator.writeFieldName("is_directory_restricted");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) memberProfile.isDirectoryRestricted, jsonGenerator);
            }
            if (memberProfile.profilePhotoUrl != null) {
                jsonGenerator.writeFieldName("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberProfile.profilePhotoUrl, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType, String str3, String str4, List<SecondaryEmail> list, Date date, Date date2, Date date3, String str5, Boolean bool, String str6) {
        if (str != null) {
            this.teamMemberId = str;
            this.externalId = str3;
            if (str4 != null) {
                if (str4.length() >= 40) {
                    if (str4.length() > 40) {
                        throw new IllegalArgumentException("String 'accountId' is longer than 40");
                    }
                } else {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
            }
            this.accountId = str4;
            if (str2 != null) {
                this.email = str2;
                this.emailVerified = z;
                if (list != null) {
                    Iterator<SecondaryEmail> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'secondaryEmails' is null");
                        }
                    }
                }
                this.secondaryEmails = list;
                if (teamMemberStatus != null) {
                    this.status = teamMemberStatus;
                    if (name != null) {
                        this.name = name;
                        if (teamMembershipType != null) {
                            this.membershipType = teamMembershipType;
                            this.invitedOn = LangUtil.truncateMillis(date);
                            this.joinedOn = LangUtil.truncateMillis(date2);
                            this.suspendedOn = LangUtil.truncateMillis(date3);
                            this.persistentId = str5;
                            this.isDirectoryRestricted = bool;
                            this.profilePhotoUrl = str6;
                            return;
                        }
                        throw new IllegalArgumentException("Required value for 'membershipType' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'name' is null");
                }
                throw new IllegalArgumentException("Required value for 'status' is null");
            }
            throw new IllegalArgumentException("Required value for 'email' is null");
        }
        throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
    }

    public static Builder newBuilder(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType) {
        return new Builder(str, str2, z, teamMemberStatus, name, teamMembershipType);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        TeamMemberStatus teamMemberStatus;
        TeamMemberStatus teamMemberStatus2;
        Name name;
        Name name2;
        TeamMembershipType teamMembershipType;
        TeamMembershipType teamMembershipType2;
        String str3;
        String str4;
        String str5;
        String str6;
        List<SecondaryEmail> list;
        List<SecondaryEmail> list2;
        Date date;
        Date date2;
        Date date3;
        Date date4;
        Date date5;
        Date date6;
        String str7;
        String str8;
        Boolean bool;
        Boolean bool2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberProfile memberProfile = (MemberProfile) obj;
        String str9 = this.teamMemberId;
        String str10 = memberProfile.teamMemberId;
        if ((str9 == str10 || str9.equals(str10)) && (((str = this.email) == (str2 = memberProfile.email) || str.equals(str2)) && this.emailVerified == memberProfile.emailVerified && (((teamMemberStatus = this.status) == (teamMemberStatus2 = memberProfile.status) || teamMemberStatus.equals(teamMemberStatus2)) && (((name = this.name) == (name2 = memberProfile.name) || name.equals(name2)) && (((teamMembershipType = this.membershipType) == (teamMembershipType2 = memberProfile.membershipType) || teamMembershipType.equals(teamMembershipType2)) && (((str3 = this.externalId) == (str4 = memberProfile.externalId) || (str3 != null && str3.equals(str4))) && (((str5 = this.accountId) == (str6 = memberProfile.accountId) || (str5 != null && str5.equals(str6))) && (((list = this.secondaryEmails) == (list2 = memberProfile.secondaryEmails) || (list != null && list.equals(list2))) && (((date = this.invitedOn) == (date2 = memberProfile.invitedOn) || (date != null && date.equals(date2))) && (((date3 = this.joinedOn) == (date4 = memberProfile.joinedOn) || (date3 != null && date3.equals(date4))) && (((date5 = this.suspendedOn) == (date6 = memberProfile.suspendedOn) || (date5 != null && date5.equals(date6))) && (((str7 = this.persistentId) == (str8 = memberProfile.persistentId) || (str7 != null && str7.equals(str8))) && ((bool = this.isDirectoryRestricted) == (bool2 = memberProfile.isDirectoryRestricted) || (bool != null && bool.equals(bool2))))))))))))))) {
            String str11 = this.profilePhotoUrl;
            String str12 = memberProfile.profilePhotoUrl;
            if (str11 == str12) {
                return true;
            }
            if (str11 != null && str11.equals(str12)) {
                return true;
            }
        }
        return false;
    }

    public String getAccountId() {
        return this.accountId;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    public String getExternalId() {
        return this.externalId;
    }

    public Date getInvitedOn() {
        return this.invitedOn;
    }

    public Boolean getIsDirectoryRestricted() {
        return this.isDirectoryRestricted;
    }

    public Date getJoinedOn() {
        return this.joinedOn;
    }

    public TeamMembershipType getMembershipType() {
        return this.membershipType;
    }

    public Name getName() {
        return this.name;
    }

    public String getPersistentId() {
        return this.persistentId;
    }

    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public List<SecondaryEmail> getSecondaryEmails() {
        return this.secondaryEmails;
    }

    public TeamMemberStatus getStatus() {
        return this.status;
    }

    public Date getSuspendedOn() {
        return this.suspendedOn;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.externalId, this.accountId, this.email, Boolean.valueOf(this.emailVerified), this.secondaryEmails, this.status, this.name, this.membershipType, this.invitedOn, this.joinedOn, this.suspendedOn, this.persistentId, this.isDirectoryRestricted, this.profilePhotoUrl});
    }

    public String toString() {
        return C3144a.f18345b.serialize((C3144a) this, false);
    }

    public String toStringMultiline() {
        return C3144a.f18345b.serialize((C3144a) this, true);
    }

    public MemberProfile(String str, String str2, boolean z, TeamMemberStatus teamMemberStatus, Name name, TeamMembershipType teamMembershipType) {
        this(str, str2, z, teamMemberStatus, name, teamMembershipType, null, null, null, null, null, null, null, null, null);
    }
}
