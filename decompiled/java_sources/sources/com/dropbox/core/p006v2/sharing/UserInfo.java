package com.dropbox.core.p006v2.sharing;

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
public class UserInfo {
    protected final String accountId;
    protected final String displayName;
    protected final String email;
    protected final boolean sameTeam;
    protected final String teamMemberId;

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<UserInfo> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public UserInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("account_id".equals(currentName)) {
                        str2 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("email".equals(currentName)) {
                        str3 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("display_name".equals(currentName)) {
                        str4 = StoneSerializers.string().deserialize(jsonParser);
                    } else if ("same_team".equals(currentName)) {
                        bool = StoneSerializers.boolean_().deserialize(jsonParser);
                    } else if ("team_member_id".equals(currentName)) {
                        str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"account_id\" missing.");
                }
                if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"email\" missing.");
                }
                if (str4 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
                }
                if (bool != null) {
                    UserInfo userInfo = new UserInfo(str2, str3, str4, bool.booleanValue(), str5);
                    if (!z) {
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    StoneDeserializerLogger.log(userInfo, userInfo.toStringMultiline());
                    return userInfo;
                }
                throw new JsonParseException(jsonParser, "Required field \"same_team\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(UserInfo userInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("account_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) userInfo.accountId, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) userInfo.email, jsonGenerator);
            jsonGenerator.writeFieldName("display_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) userInfo.displayName, jsonGenerator);
            jsonGenerator.writeFieldName("same_team");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(userInfo.sameTeam), jsonGenerator);
            if (userInfo.teamMemberId != null) {
                jsonGenerator.writeFieldName("team_member_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userInfo.teamMemberId, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserInfo(String str, String str2, String str3, boolean z, String str4) {
        if (str != null) {
            if (str.length() >= 40) {
                if (str.length() <= 40) {
                    this.accountId = str;
                    if (str2 != null) {
                        this.email = str2;
                        if (str3 != null) {
                            this.displayName = str3;
                            this.sameTeam = z;
                            this.teamMemberId = str4;
                            return;
                        }
                        throw new IllegalArgumentException("Required value for 'displayName' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'email' is null");
                }
                throw new IllegalArgumentException("String 'accountId' is longer than 40");
            }
            throw new IllegalArgumentException("String 'accountId' is shorter than 40");
        }
        throw new IllegalArgumentException("Required value for 'accountId' is null");
    }

    public boolean equals(Object obj) {
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
        UserInfo userInfo = (UserInfo) obj;
        String str5 = this.accountId;
        String str6 = userInfo.accountId;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.email) == (str2 = userInfo.email) || str.equals(str2)) && (((str3 = this.displayName) == (str4 = userInfo.displayName) || str3.equals(str4)) && this.sameTeam == userInfo.sameTeam))) {
            String str7 = this.teamMemberId;
            String str8 = userInfo.teamMemberId;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
    }

    public String getAccountId() {
        return this.accountId;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getEmail() {
        return this.email;
    }

    public boolean getSameTeam() {
        return this.sameTeam;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.accountId, this.email, this.displayName, Boolean.valueOf(this.sameTeam), this.teamMemberId});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }

    public UserInfo(String str, String str2, String str3, boolean z) {
        this(str, str2, str3, z, null);
    }
}
