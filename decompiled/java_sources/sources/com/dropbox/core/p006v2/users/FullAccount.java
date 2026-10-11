package com.dropbox.core.p006v2.users;

import com.dropbox.core.p006v2.common.RootInfo;
import com.dropbox.core.p006v2.users.FullTeam;
import com.dropbox.core.p006v2.users.Name;
import com.dropbox.core.p006v2.userscommon.AccountType;
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
import com.sunia.HTREnginev2.sod;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class FullAccount extends Account {
    protected final AccountType accountType;
    protected final String country;
    protected final boolean isPaired;
    protected final String locale;
    protected final String referralLink;
    protected final RootInfo rootInfo;
    protected final FullTeam team;
    protected final String teamMemberId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String accountId;
        protected final AccountType accountType;
        protected String country;
        protected final boolean disabled;
        protected final String email;
        protected final boolean emailVerified;
        protected final boolean isPaired;
        protected final String locale;
        protected final Name name;
        protected String profilePhotoUrl;
        protected final String referralLink;
        protected final RootInfo rootInfo;
        protected FullTeam team;
        protected String teamMemberId;

        public Builder(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType, RootInfo rootInfo) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'accountId' is null");
            }
            if (str.length() < 40) {
                throw new IllegalArgumentException("String 'accountId' is shorter than 40");
            }
            if (str.length() > 40) {
                throw new IllegalArgumentException("String 'accountId' is longer than 40");
            }
            this.accountId = str;
            if (name == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = name;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'email' is null");
            }
            this.email = str2;
            this.emailVerified = z;
            this.disabled = z2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'locale' is null");
            }
            if (str3.length() < 2) {
                throw new IllegalArgumentException("String 'locale' is shorter than 2");
            }
            this.locale = str3;
            if (str4 == null) {
                throw new IllegalArgumentException("Required value for 'referralLink' is null");
            }
            this.referralLink = str4;
            this.isPaired = z3;
            if (accountType == null) {
                throw new IllegalArgumentException("Required value for 'accountType' is null");
            }
            this.accountType = accountType;
            if (rootInfo == null) {
                throw new IllegalArgumentException("Required value for 'rootInfo' is null");
            }
            this.rootInfo = rootInfo;
            this.profilePhotoUrl = null;
            this.country = null;
            this.team = null;
            this.teamMemberId = null;
        }

        public FullAccount build() {
            return new FullAccount(this.accountId, this.name, this.email, this.emailVerified, this.disabled, this.locale, this.referralLink, this.isPaired, this.accountType, this.rootInfo, this.profilePhotoUrl, this.country, this.team, this.teamMemberId);
        }

        public Builder withCountry(String str) {
            if (str != null) {
                if (str.length() < 2) {
                    throw new IllegalArgumentException("String 'country' is shorter than 2");
                }
                if (str.length() > 2) {
                    throw new IllegalArgumentException("String 'country' is longer than 2");
                }
            }
            this.country = str;
            return this;
        }

        public Builder withProfilePhotoUrl(String str) {
            this.profilePhotoUrl = str;
            return this;
        }

        public Builder withTeam(FullTeam fullTeam) {
            this.team = fullTeam;
            return this;
        }

        public Builder withTeamMemberId(String str) {
            this.teamMemberId = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.users.FullAccount$a */
    /* loaded from: classes4.dex */
    public static class C4435a extends StructSerializer<FullAccount> {

        /* renamed from: b */
        public static final C4435a f20733b = new C4435a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FullAccount deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool2 = null;
            Boolean bool3 = null;
            String str2 = null;
            Name name = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            AccountType accountType = null;
            RootInfo rootInfo = null;
            String str6 = null;
            String str7 = null;
            FullTeam fullTeam = null;
            String str8 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("account_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    name = Name.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("email".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("email_verified".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("disabled".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("locale".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("referral_link".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("is_paired".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("account_type".equals(currentName)) {
                    accountType = AccountType.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("root_info".equals(currentName)) {
                    rootInfo = RootInfo.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("profile_photo_url".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (sod.f84350C.equals(currentName)) {
                    str7 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("team".equals(currentName)) {
                    fullTeam = (FullTeam) StoneSerializers.nullableStruct(FullTeam.C4436a.f20734b).deserialize(jsonParser);
                } else if ("team_member_id".equals(currentName)) {
                    str8 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"account_id\" missing.");
            }
            if (name == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"email\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"email_verified\" missing.");
            }
            if (bool2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"disabled\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"locale\" missing.");
            }
            if (str5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"referral_link\" missing.");
            }
            if (bool3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_paired\" missing.");
            }
            if (accountType == null) {
                throw new JsonParseException(jsonParser, "Required field \"account_type\" missing.");
            }
            if (rootInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"root_info\" missing.");
            }
            FullAccount fullAccount = new FullAccount(str2, name, str3, bool.booleanValue(), bool2.booleanValue(), str4, str5, bool3.booleanValue(), accountType, rootInfo, str6, str7, fullTeam, str8);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fullAccount, fullAccount.toStringMultiline());
            return fullAccount;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FullAccount fullAccount, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("account_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) fullAccount.accountId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            Name.Serializer.INSTANCE.serialize((Name.Serializer) fullAccount.name, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) fullAccount.email, jsonGenerator);
            jsonGenerator.writeFieldName("email_verified");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(fullAccount.emailVerified), jsonGenerator);
            jsonGenerator.writeFieldName("disabled");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(fullAccount.disabled), jsonGenerator);
            jsonGenerator.writeFieldName("locale");
            StoneSerializers.string().serialize((StoneSerializer<String>) fullAccount.locale, jsonGenerator);
            jsonGenerator.writeFieldName("referral_link");
            StoneSerializers.string().serialize((StoneSerializer<String>) fullAccount.referralLink, jsonGenerator);
            jsonGenerator.writeFieldName("is_paired");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(fullAccount.isPaired), jsonGenerator);
            jsonGenerator.writeFieldName("account_type");
            AccountType.Serializer.INSTANCE.serialize(fullAccount.accountType, jsonGenerator);
            jsonGenerator.writeFieldName("root_info");
            RootInfo.Serializer.INSTANCE.serialize((RootInfo.Serializer) fullAccount.rootInfo, jsonGenerator);
            if (fullAccount.profilePhotoUrl != null) {
                jsonGenerator.writeFieldName("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fullAccount.profilePhotoUrl, jsonGenerator);
            }
            if (fullAccount.country != null) {
                jsonGenerator.writeFieldName(sod.f84350C);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fullAccount.country, jsonGenerator);
            }
            if (fullAccount.team != null) {
                jsonGenerator.writeFieldName("team");
                StoneSerializers.nullableStruct(FullTeam.C4436a.f20734b).serialize((StructSerializer) fullAccount.team, jsonGenerator);
            }
            if (fullAccount.teamMemberId != null) {
                jsonGenerator.writeFieldName("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fullAccount.teamMemberId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FullAccount(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType, RootInfo rootInfo, String str5, String str6, FullTeam fullTeam, String str7) {
        super(str, name, str2, z, z2, str5);
        if (str6 != null) {
            if (str6.length() >= 2) {
                if (str6.length() > 2) {
                    throw new IllegalArgumentException("String 'country' is longer than 2");
                }
            } else {
                throw new IllegalArgumentException("String 'country' is shorter than 2");
            }
        }
        this.country = str6;
        if (str3 != null) {
            if (str3.length() >= 2) {
                this.locale = str3;
                if (str4 != null) {
                    this.referralLink = str4;
                    this.team = fullTeam;
                    this.teamMemberId = str7;
                    this.isPaired = z3;
                    if (accountType != null) {
                        this.accountType = accountType;
                        if (rootInfo != null) {
                            this.rootInfo = rootInfo;
                            return;
                        }
                        throw new IllegalArgumentException("Required value for 'rootInfo' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'accountType' is null");
                }
                throw new IllegalArgumentException("Required value for 'referralLink' is null");
            }
            throw new IllegalArgumentException("String 'locale' is shorter than 2");
        }
        throw new IllegalArgumentException("Required value for 'locale' is null");
    }

    public static Builder newBuilder(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType, RootInfo rootInfo) {
        return new Builder(str, name, str2, z, z2, str3, str4, z3, accountType, rootInfo);
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public boolean equals(Object obj) {
        Name name;
        Name name2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        AccountType accountType;
        AccountType accountType2;
        RootInfo rootInfo;
        RootInfo rootInfo2;
        String str7;
        String str8;
        String str9;
        String str10;
        FullTeam fullTeam;
        FullTeam fullTeam2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FullAccount fullAccount = (FullAccount) obj;
        String str11 = this.accountId;
        String str12 = fullAccount.accountId;
        if ((str11 == str12 || str11.equals(str12)) && (((name = this.name) == (name2 = fullAccount.name) || name.equals(name2)) && (((str = this.email) == (str2 = fullAccount.email) || str.equals(str2)) && this.emailVerified == fullAccount.emailVerified && this.disabled == fullAccount.disabled && (((str3 = this.locale) == (str4 = fullAccount.locale) || str3.equals(str4)) && (((str5 = this.referralLink) == (str6 = fullAccount.referralLink) || str5.equals(str6)) && this.isPaired == fullAccount.isPaired && (((accountType = this.accountType) == (accountType2 = fullAccount.accountType) || accountType.equals(accountType2)) && (((rootInfo = this.rootInfo) == (rootInfo2 = fullAccount.rootInfo) || rootInfo.equals(rootInfo2)) && (((str7 = this.profilePhotoUrl) == (str8 = fullAccount.profilePhotoUrl) || (str7 != null && str7.equals(str8))) && (((str9 = this.country) == (str10 = fullAccount.country) || (str9 != null && str9.equals(str10))) && ((fullTeam = this.team) == (fullTeam2 = fullAccount.team) || (fullTeam != null && fullTeam.equals(fullTeam2)))))))))))) {
            String str13 = this.teamMemberId;
            String str14 = fullAccount.teamMemberId;
            if (str13 == str14) {
                return true;
            }
            if (str13 != null && str13.equals(str14)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String getAccountId() {
        return this.accountId;
    }

    public AccountType getAccountType() {
        return this.accountType;
    }

    public String getCountry() {
        return this.country;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public boolean getDisabled() {
        return this.disabled;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String getEmail() {
        return this.email;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    public boolean getIsPaired() {
        return this.isPaired;
    }

    public String getLocale() {
        return this.locale;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public Name getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public String getReferralLink() {
        return this.referralLink;
    }

    public RootInfo getRootInfo() {
        return this.rootInfo;
    }

    public FullTeam getTeam() {
        return this.team;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.country, this.locale, this.referralLink, this.team, this.teamMemberId, Boolean.valueOf(this.isPaired), this.accountType, this.rootInfo});
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String toString() {
        return C4435a.f20733b.serialize((C4435a) this, false);
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String toStringMultiline() {
        return C4435a.f20733b.serialize((C4435a) this, true);
    }

    public FullAccount(String str, Name name, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, AccountType accountType, RootInfo rootInfo) {
        this(str, name, str2, z, z2, str3, str4, z3, accountType, rootInfo, null, null, null, null);
    }
}
