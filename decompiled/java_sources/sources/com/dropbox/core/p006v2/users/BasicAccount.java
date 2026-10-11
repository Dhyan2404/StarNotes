package com.dropbox.core.p006v2.users;

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

/* loaded from: classes4.dex */
public class BasicAccount extends Account {
    protected final boolean isTeammate;
    protected final String teamMemberId;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String accountId;
        protected final boolean disabled;
        protected final String email;
        protected final boolean emailVerified;
        protected final boolean isTeammate;
        protected final Name name;
        protected String profilePhotoUrl;
        protected String teamMemberId;

        public Builder(String str, Name name, String str2, boolean z, boolean z2, boolean z3) {
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
            this.isTeammate = z3;
            this.profilePhotoUrl = null;
            this.teamMemberId = null;
        }

        public BasicAccount build() {
            return new BasicAccount(this.accountId, this.name, this.email, this.emailVerified, this.disabled, this.isTeammate, this.profilePhotoUrl, this.teamMemberId);
        }

        public Builder withProfilePhotoUrl(String str) {
            this.profilePhotoUrl = str;
            return this;
        }

        public Builder withTeamMemberId(String str) {
            this.teamMemberId = str;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<BasicAccount> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public BasicAccount deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                Boolean bool2 = null;
                Boolean bool3 = null;
                String str2 = null;
                Name name = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
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
                    } else if ("is_teammate".equals(currentName)) {
                        bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                    } else if ("profile_photo_url".equals(currentName)) {
                        str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                    } else if ("team_member_id".equals(currentName)) {
                        str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
                if (bool3 != null) {
                    BasicAccount basicAccount = new BasicAccount(str2, name, str3, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), str4, str5);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(basicAccount, basicAccount.toStringMultiline());
                    return basicAccount;
                }
                throw new JsonParseException(jsonParser, "Required field \"is_teammate\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(BasicAccount basicAccount, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("account_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) basicAccount.accountId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            Name.Serializer.INSTANCE.serialize((Name.Serializer) basicAccount.name, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) basicAccount.email, jsonGenerator);
            jsonGenerator.writeFieldName("email_verified");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(basicAccount.emailVerified), jsonGenerator);
            jsonGenerator.writeFieldName("disabled");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(basicAccount.disabled), jsonGenerator);
            jsonGenerator.writeFieldName("is_teammate");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(basicAccount.isTeammate), jsonGenerator);
            if (basicAccount.profilePhotoUrl != null) {
                jsonGenerator.writeFieldName("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) basicAccount.profilePhotoUrl, jsonGenerator);
            }
            if (basicAccount.teamMemberId != null) {
                jsonGenerator.writeFieldName("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) basicAccount.teamMemberId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public BasicAccount(String str, Name name, String str2, boolean z, boolean z2, boolean z3, String str3, String str4) {
        super(str, name, str2, z, z2, str3);
        this.isTeammate = z3;
        this.teamMemberId = str4;
    }

    public static Builder newBuilder(String str, Name name, String str2, boolean z, boolean z2, boolean z3) {
        return new Builder(str, name, str2, z, z2, z3);
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public boolean equals(Object obj) {
        Name name;
        Name name2;
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        BasicAccount basicAccount = (BasicAccount) obj;
        String str5 = this.accountId;
        String str6 = basicAccount.accountId;
        if ((str5 == str6 || str5.equals(str6)) && (((name = this.name) == (name2 = basicAccount.name) || name.equals(name2)) && (((str = this.email) == (str2 = basicAccount.email) || str.equals(str2)) && this.emailVerified == basicAccount.emailVerified && this.disabled == basicAccount.disabled && this.isTeammate == basicAccount.isTeammate && ((str3 = this.profilePhotoUrl) == (str4 = basicAccount.profilePhotoUrl) || (str3 != null && str3.equals(str4)))))) {
            String str7 = this.teamMemberId;
            String str8 = basicAccount.teamMemberId;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String getAccountId() {
        return this.accountId;
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

    public boolean getIsTeammate() {
        return this.isTeammate;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public Name getName() {
        return this.name;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Boolean.valueOf(this.isTeammate), this.teamMemberId});
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    @Override // com.dropbox.core.p006v2.users.Account
    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }

    public BasicAccount(String str, Name name, String str2, boolean z, boolean z2, boolean z3) {
        this(str, name, str2, z, z2, z3, null, null);
    }
}
