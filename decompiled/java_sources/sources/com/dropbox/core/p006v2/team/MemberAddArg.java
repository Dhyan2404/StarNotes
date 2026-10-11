package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.AdminTier;
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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class MemberAddArg {
    protected final Boolean isDirectoryRestricted;
    protected final String memberEmail;
    protected final String memberExternalId;
    protected final String memberGivenName;
    protected final String memberPersistentId;
    protected final String memberSurname;
    protected final AdminTier role;
    protected final boolean sendWelcomeEmail;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Boolean isDirectoryRestricted;
        protected final String memberEmail;
        protected String memberExternalId;
        protected String memberGivenName;
        protected String memberPersistentId;
        protected String memberSurname;
        protected AdminTier role;
        protected boolean sendWelcomeEmail;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'memberEmail' is null");
            }
            if (str.length() > 255) {
                throw new IllegalArgumentException("String 'memberEmail' is longer than 255");
            }
            if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                throw new IllegalArgumentException("String 'memberEmail' does not match pattern");
            }
            this.memberEmail = str;
            this.memberGivenName = null;
            this.memberSurname = null;
            this.memberExternalId = null;
            this.memberPersistentId = null;
            this.sendWelcomeEmail = true;
            this.role = AdminTier.MEMBER_ONLY;
            this.isDirectoryRestricted = null;
        }

        public MemberAddArg build() {
            return new MemberAddArg(this.memberEmail, this.memberGivenName, this.memberSurname, this.memberExternalId, this.memberPersistentId, this.sendWelcomeEmail, this.role, this.isDirectoryRestricted);
        }

        public Builder withIsDirectoryRestricted(Boolean bool) {
            this.isDirectoryRestricted = bool;
            return this;
        }

        public Builder withMemberExternalId(String str) {
            if (str != null && str.length() > 64) {
                throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
            }
            this.memberExternalId = str;
            return this;
        }

        public Builder withMemberGivenName(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'memberGivenName' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'memberGivenName' does not match pattern");
                }
            }
            this.memberGivenName = str;
            return this;
        }

        public Builder withMemberPersistentId(String str) {
            this.memberPersistentId = str;
            return this;
        }

        public Builder withMemberSurname(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'memberSurname' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'memberSurname' does not match pattern");
                }
            }
            this.memberSurname = str;
            return this;
        }

        public Builder withRole(AdminTier adminTier) {
            if (adminTier != null) {
                this.role = adminTier;
            } else {
                this.role = AdminTier.MEMBER_ONLY;
            }
            return this;
        }

        public Builder withSendWelcomeEmail(Boolean bool) {
            if (bool != null) {
                this.sendWelcomeEmail = bool.booleanValue();
            } else {
                this.sendWelcomeEmail = true;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MemberAddArg$a */
    /* loaded from: classes4.dex */
    public static class C3139a extends StructSerializer<MemberAddArg> {

        /* renamed from: b */
        public static final C3139a f18328b = new C3139a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberAddArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.TRUE;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            Boolean bool2 = null;
            AdminTier adminTier = AdminTier.MEMBER_ONLY;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("member_email".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("member_given_name".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("member_surname".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("member_external_id".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("member_persistent_id".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("send_welcome_email".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("role".equals(currentName)) {
                    adminTier = AdminTier.C3015b.f18121b.deserialize(jsonParser);
                } else if ("is_directory_restricted".equals(currentName)) {
                    bool2 = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"member_email\" missing.");
            }
            MemberAddArg memberAddArg = new MemberAddArg(str2, str3, str4, str5, str6, bool.booleanValue(), adminTier, bool2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberAddArg, memberAddArg.toStringMultiline());
            return memberAddArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberAddArg memberAddArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("member_email");
            StoneSerializers.string().serialize((StoneSerializer<String>) memberAddArg.memberEmail, jsonGenerator);
            if (memberAddArg.memberGivenName != null) {
                jsonGenerator.writeFieldName("member_given_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberAddArg.memberGivenName, jsonGenerator);
            }
            if (memberAddArg.memberSurname != null) {
                jsonGenerator.writeFieldName("member_surname");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberAddArg.memberSurname, jsonGenerator);
            }
            if (memberAddArg.memberExternalId != null) {
                jsonGenerator.writeFieldName("member_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberAddArg.memberExternalId, jsonGenerator);
            }
            if (memberAddArg.memberPersistentId != null) {
                jsonGenerator.writeFieldName("member_persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) memberAddArg.memberPersistentId, jsonGenerator);
            }
            jsonGenerator.writeFieldName("send_welcome_email");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(memberAddArg.sendWelcomeEmail), jsonGenerator);
            jsonGenerator.writeFieldName("role");
            AdminTier.C3015b.f18121b.serialize(memberAddArg.role, jsonGenerator);
            if (memberAddArg.isDirectoryRestricted != null) {
                jsonGenerator.writeFieldName("is_directory_restricted");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) memberAddArg.isDirectoryRestricted, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberAddArg(String str, String str2, String str3, String str4, String str5, boolean z, AdminTier adminTier, Boolean bool) {
        if (str != null) {
            if (str.length() <= 255) {
                if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                    this.memberEmail = str;
                    if (str2 != null) {
                        if (str2.length() <= 100) {
                            if (!Pattern.matches("[^/:?*<>\"|]*", str2)) {
                                throw new IllegalArgumentException("String 'memberGivenName' does not match pattern");
                            }
                        } else {
                            throw new IllegalArgumentException("String 'memberGivenName' is longer than 100");
                        }
                    }
                    this.memberGivenName = str2;
                    if (str3 != null) {
                        if (str3.length() <= 100) {
                            if (!Pattern.matches("[^/:?*<>\"|]*", str3)) {
                                throw new IllegalArgumentException("String 'memberSurname' does not match pattern");
                            }
                        } else {
                            throw new IllegalArgumentException("String 'memberSurname' is longer than 100");
                        }
                    }
                    this.memberSurname = str3;
                    if (str4 != null && str4.length() > 64) {
                        throw new IllegalArgumentException("String 'memberExternalId' is longer than 64");
                    }
                    this.memberExternalId = str4;
                    this.memberPersistentId = str5;
                    this.sendWelcomeEmail = z;
                    if (adminTier != null) {
                        this.role = adminTier;
                        this.isDirectoryRestricted = bool;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'role' is null");
                }
                throw new IllegalArgumentException("String 'memberEmail' does not match pattern");
            }
            throw new IllegalArgumentException("String 'memberEmail' is longer than 255");
        }
        throw new IllegalArgumentException("Required value for 'memberEmail' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        AdminTier adminTier;
        AdminTier adminTier2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberAddArg memberAddArg = (MemberAddArg) obj;
        String str9 = this.memberEmail;
        String str10 = memberAddArg.memberEmail;
        if ((str9 == str10 || str9.equals(str10)) && (((str = this.memberGivenName) == (str2 = memberAddArg.memberGivenName) || (str != null && str.equals(str2))) && (((str3 = this.memberSurname) == (str4 = memberAddArg.memberSurname) || (str3 != null && str3.equals(str4))) && (((str5 = this.memberExternalId) == (str6 = memberAddArg.memberExternalId) || (str5 != null && str5.equals(str6))) && (((str7 = this.memberPersistentId) == (str8 = memberAddArg.memberPersistentId) || (str7 != null && str7.equals(str8))) && this.sendWelcomeEmail == memberAddArg.sendWelcomeEmail && ((adminTier = this.role) == (adminTier2 = memberAddArg.role) || adminTier.equals(adminTier2))))))) {
            Boolean bool = this.isDirectoryRestricted;
            Boolean bool2 = memberAddArg.isDirectoryRestricted;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    public Boolean getIsDirectoryRestricted() {
        return this.isDirectoryRestricted;
    }

    public String getMemberEmail() {
        return this.memberEmail;
    }

    public String getMemberExternalId() {
        return this.memberExternalId;
    }

    public String getMemberGivenName() {
        return this.memberGivenName;
    }

    public String getMemberPersistentId() {
        return this.memberPersistentId;
    }

    public String getMemberSurname() {
        return this.memberSurname;
    }

    public AdminTier getRole() {
        return this.role;
    }

    public boolean getSendWelcomeEmail() {
        return this.sendWelcomeEmail;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.memberEmail, this.memberGivenName, this.memberSurname, this.memberExternalId, this.memberPersistentId, Boolean.valueOf(this.sendWelcomeEmail), this.role, this.isDirectoryRestricted});
    }

    public String toString() {
        return C3139a.f18328b.serialize((C3139a) this, false);
    }

    public String toStringMultiline() {
        return C3139a.f18328b.serialize((C3139a) this, true);
    }

    public MemberAddArg(String str) {
        this(str, null, null, null, null, true, AdminTier.MEMBER_ONLY, null);
    }
}
