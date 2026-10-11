package com.dropbox.core.p006v2.team;

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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class MembersSetProfileArg {

    /* renamed from: a */
    public final UserSelectorArg f18392a;

    /* renamed from: b */
    public final String f18393b;

    /* renamed from: c */
    public final String f18394c;

    /* renamed from: d */
    public final String f18395d;

    /* renamed from: e */
    public final String f18396e;

    /* renamed from: f */
    public final String f18397f;

    /* renamed from: g */
    public final Boolean f18398g;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String newEmail;
        protected String newExternalId;
        protected String newGivenName;
        protected Boolean newIsDirectoryRestricted;
        protected String newPersistentId;
        protected String newSurname;
        protected final UserSelectorArg user;

        public Builder(UserSelectorArg userSelectorArg) {
            if (userSelectorArg == null) {
                throw new IllegalArgumentException("Required value for 'user' is null");
            }
            this.user = userSelectorArg;
            this.newEmail = null;
            this.newExternalId = null;
            this.newGivenName = null;
            this.newSurname = null;
            this.newPersistentId = null;
            this.newIsDirectoryRestricted = null;
        }

        public MembersSetProfileArg build() {
            return new MembersSetProfileArg(this.user, this.newEmail, this.newExternalId, this.newGivenName, this.newSurname, this.newPersistentId, this.newIsDirectoryRestricted);
        }

        public Builder withNewEmail(String str) {
            if (str != null) {
                if (str.length() > 255) {
                    throw new IllegalArgumentException("String 'newEmail' is longer than 255");
                }
                if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                    throw new IllegalArgumentException("String 'newEmail' does not match pattern");
                }
            }
            this.newEmail = str;
            return this;
        }

        public Builder withNewExternalId(String str) {
            if (str != null && str.length() > 64) {
                throw new IllegalArgumentException("String 'newExternalId' is longer than 64");
            }
            this.newExternalId = str;
            return this;
        }

        public Builder withNewGivenName(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'newGivenName' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'newGivenName' does not match pattern");
                }
            }
            this.newGivenName = str;
            return this;
        }

        public Builder withNewIsDirectoryRestricted(Boolean bool) {
            this.newIsDirectoryRestricted = bool;
            return this;
        }

        public Builder withNewPersistentId(String str) {
            this.newPersistentId = str;
            return this;
        }

        public Builder withNewSurname(String str) {
            if (str != null) {
                if (str.length() > 100) {
                    throw new IllegalArgumentException("String 'newSurname' is longer than 100");
                }
                if (!Pattern.matches("[^/:?*<>\"|]*", str)) {
                    throw new IllegalArgumentException("String 'newSurname' does not match pattern");
                }
            }
            this.newSurname = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersSetProfileArg$a */
    /* loaded from: classes4.dex */
    public static class C3172a extends StructSerializer<MembersSetProfileArg> {

        /* renamed from: b */
        public static final C3172a f18399b = new C3172a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersSetProfileArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            UserSelectorArg userSelectorArg = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("new_email".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_external_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_given_name".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_surname".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_persistent_id".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_is_directory_restricted".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            MembersSetProfileArg membersSetProfileArg = new MembersSetProfileArg(userSelectorArg, str2, str3, str4, str5, str6, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(membersSetProfileArg, membersSetProfileArg.m12579i());
            return membersSetProfileArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersSetProfileArg membersSetProfileArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(membersSetProfileArg.f18392a, jsonGenerator);
            if (membersSetProfileArg.f18393b != null) {
                jsonGenerator.writeFieldName("new_email");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) membersSetProfileArg.f18393b, jsonGenerator);
            }
            if (membersSetProfileArg.f18394c != null) {
                jsonGenerator.writeFieldName("new_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) membersSetProfileArg.f18394c, jsonGenerator);
            }
            if (membersSetProfileArg.f18395d != null) {
                jsonGenerator.writeFieldName("new_given_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) membersSetProfileArg.f18395d, jsonGenerator);
            }
            if (membersSetProfileArg.f18396e != null) {
                jsonGenerator.writeFieldName("new_surname");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) membersSetProfileArg.f18396e, jsonGenerator);
            }
            if (membersSetProfileArg.f18397f != null) {
                jsonGenerator.writeFieldName("new_persistent_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) membersSetProfileArg.f18397f, jsonGenerator);
            }
            if (membersSetProfileArg.f18398g != null) {
                jsonGenerator.writeFieldName("new_is_directory_restricted");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) membersSetProfileArg.f18398g, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MembersSetProfileArg(UserSelectorArg userSelectorArg, String str, String str2, String str3, String str4, String str5, Boolean bool) {
        if (userSelectorArg != null) {
            this.f18392a = userSelectorArg;
            if (str != null) {
                if (str.length() <= 255) {
                    if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                        throw new IllegalArgumentException("String 'newEmail' does not match pattern");
                    }
                } else {
                    throw new IllegalArgumentException("String 'newEmail' is longer than 255");
                }
            }
            this.f18393b = str;
            if (str2 != null && str2.length() > 64) {
                throw new IllegalArgumentException("String 'newExternalId' is longer than 64");
            }
            this.f18394c = str2;
            if (str3 != null) {
                if (str3.length() <= 100) {
                    if (!Pattern.matches("[^/:?*<>\"|]*", str3)) {
                        throw new IllegalArgumentException("String 'newGivenName' does not match pattern");
                    }
                } else {
                    throw new IllegalArgumentException("String 'newGivenName' is longer than 100");
                }
            }
            this.f18395d = str3;
            if (str4 != null) {
                if (str4.length() <= 100) {
                    if (!Pattern.matches("[^/:?*<>\"|]*", str4)) {
                        throw new IllegalArgumentException("String 'newSurname' does not match pattern");
                    }
                } else {
                    throw new IllegalArgumentException("String 'newSurname' is longer than 100");
                }
            }
            this.f18396e = str4;
            this.f18397f = str5;
            this.f18398g = bool;
            return;
        }
        throw new IllegalArgumentException("Required value for 'user' is null");
    }

    /* renamed from: h */
    public static Builder m12571h(UserSelectorArg userSelectorArg) {
        return new Builder(userSelectorArg);
    }

    /* renamed from: a */
    public String m12572a() {
        return this.f18393b;
    }

    /* renamed from: b */
    public String m12573b() {
        return this.f18394c;
    }

    /* renamed from: c */
    public String m12574c() {
        return this.f18395d;
    }

    /* renamed from: d */
    public Boolean m12575d() {
        return this.f18398g;
    }

    /* renamed from: e */
    public String m12576e() {
        return this.f18397f;
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
        String str9;
        String str10;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembersSetProfileArg membersSetProfileArg = (MembersSetProfileArg) obj;
        UserSelectorArg userSelectorArg = this.f18392a;
        UserSelectorArg userSelectorArg2 = membersSetProfileArg.f18392a;
        if ((userSelectorArg == userSelectorArg2 || userSelectorArg.equals(userSelectorArg2)) && (((str = this.f18393b) == (str2 = membersSetProfileArg.f18393b) || (str != null && str.equals(str2))) && (((str3 = this.f18394c) == (str4 = membersSetProfileArg.f18394c) || (str3 != null && str3.equals(str4))) && (((str5 = this.f18395d) == (str6 = membersSetProfileArg.f18395d) || (str5 != null && str5.equals(str6))) && (((str7 = this.f18396e) == (str8 = membersSetProfileArg.f18396e) || (str7 != null && str7.equals(str8))) && ((str9 = this.f18397f) == (str10 = membersSetProfileArg.f18397f) || (str9 != null && str9.equals(str10)))))))) {
            Boolean bool = this.f18398g;
            Boolean bool2 = membersSetProfileArg.f18398g;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public String m12577f() {
        return this.f18396e;
    }

    /* renamed from: g */
    public UserSelectorArg m12578g() {
        return this.f18392a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18392a, this.f18393b, this.f18394c, this.f18395d, this.f18396e, this.f18397f, this.f18398g});
    }

    /* renamed from: i */
    public String m12579i() {
        return C3172a.f18399b.serialize((C3172a) this, true);
    }

    public String toString() {
        return C3172a.f18399b.serialize((C3172a) this, false);
    }

    public MembersSetProfileArg(UserSelectorArg userSelectorArg) {
        this(userSelectorArg, null, null, null, null, null, null);
    }
}
