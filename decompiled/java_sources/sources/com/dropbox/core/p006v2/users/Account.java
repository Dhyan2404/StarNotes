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
public class Account {
    protected final String accountId;
    protected final boolean disabled;
    protected final String email;
    protected final boolean emailVerified;
    protected final Name name;
    protected final String profilePhotoUrl;

    /* renamed from: com.dropbox.core.v2.users.Account$a */
    /* loaded from: classes4.dex */
    public static class C4432a extends StructSerializer<Account> {

        /* renamed from: b */
        public static final C4432a f20727b = new C4432a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Account deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            Name name = null;
            String str3 = null;
            String str4 = null;
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
                } else if ("profile_photo_url".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
            Account account = new Account(str2, name, str3, bool.booleanValue(), bool2.booleanValue(), str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(account, account.toStringMultiline());
            return account;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Account account, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("account_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) account.accountId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            Name.Serializer.INSTANCE.serialize((Name.Serializer) account.name, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) account.email, jsonGenerator);
            jsonGenerator.writeFieldName("email_verified");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(account.emailVerified), jsonGenerator);
            jsonGenerator.writeFieldName("disabled");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(account.disabled), jsonGenerator);
            if (account.profilePhotoUrl != null) {
                jsonGenerator.writeFieldName("profile_photo_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) account.profilePhotoUrl, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public Account(String str, Name name, String str2, boolean z, boolean z2, String str3) {
        if (str != null) {
            if (str.length() >= 40) {
                if (str.length() <= 40) {
                    this.accountId = str;
                    if (name != null) {
                        this.name = name;
                        if (str2 != null) {
                            this.email = str2;
                            this.emailVerified = z;
                            this.profilePhotoUrl = str3;
                            this.disabled = z2;
                            return;
                        }
                        throw new IllegalArgumentException("Required value for 'email' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'name' is null");
                }
                throw new IllegalArgumentException("String 'accountId' is longer than 40");
            }
            throw new IllegalArgumentException("String 'accountId' is shorter than 40");
        }
        throw new IllegalArgumentException("Required value for 'accountId' is null");
    }

    public boolean equals(Object obj) {
        Name name;
        Name name2;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Account account = (Account) obj;
        String str3 = this.accountId;
        String str4 = account.accountId;
        if ((str3 == str4 || str3.equals(str4)) && (((name = this.name) == (name2 = account.name) || name.equals(name2)) && (((str = this.email) == (str2 = account.email) || str.equals(str2)) && this.emailVerified == account.emailVerified && this.disabled == account.disabled))) {
            String str5 = this.profilePhotoUrl;
            String str6 = account.profilePhotoUrl;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getAccountId() {
        return this.accountId;
    }

    public boolean getDisabled() {
        return this.disabled;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean getEmailVerified() {
        return this.emailVerified;
    }

    public Name getName() {
        return this.name;
    }

    public String getProfilePhotoUrl() {
        return this.profilePhotoUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountId, this.name, this.email, Boolean.valueOf(this.emailVerified), this.profilePhotoUrl, Boolean.valueOf(this.disabled)});
    }

    public String toString() {
        return C4432a.f20727b.serialize((C4432a) this, false);
    }

    public String toStringMultiline() {
        return C4432a.f20727b.serialize((C4432a) this, true);
    }

    public Account(String str, Name name, String str2, boolean z, boolean z2) {
        this(str, name, str2, z, z2, null);
    }
}
