package com.dropbox.core.p006v2.teamlog;

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
public class UserNameLogInfo {
    protected final String givenName;
    protected final String locale;
    protected final String surname;

    /* renamed from: com.dropbox.core.v2.teamlog.UserNameLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4393a extends StructSerializer<UserNameLogInfo> {

        /* renamed from: b */
        public static final C4393a f20681b = new C4393a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserNameLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("given_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("surname".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("locale".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"given_name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"surname\" missing.");
            }
            UserNameLogInfo userNameLogInfo = new UserNameLogInfo(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userNameLogInfo, userNameLogInfo.toStringMultiline());
            return userNameLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserNameLogInfo userNameLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("given_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) userNameLogInfo.givenName, jsonGenerator);
            jsonGenerator.writeFieldName("surname");
            StoneSerializers.string().serialize((StoneSerializer<String>) userNameLogInfo.surname, jsonGenerator);
            if (userNameLogInfo.locale != null) {
                jsonGenerator.writeFieldName("locale");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) userNameLogInfo.locale, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserNameLogInfo(String str, String str2, String str3) {
        if (str != null) {
            this.givenName = str;
            if (str2 != null) {
                this.surname = str2;
                this.locale = str3;
                return;
            }
            throw new IllegalArgumentException("Required value for 'surname' is null");
        }
        throw new IllegalArgumentException("Required value for 'givenName' is null");
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UserNameLogInfo userNameLogInfo = (UserNameLogInfo) obj;
        String str3 = this.givenName;
        String str4 = userNameLogInfo.givenName;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.surname) == (str2 = userNameLogInfo.surname) || str.equals(str2))) {
            String str5 = this.locale;
            String str6 = userNameLogInfo.locale;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getGivenName() {
        return this.givenName;
    }

    public String getLocale() {
        return this.locale;
    }

    public String getSurname() {
        return this.surname;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.givenName, this.surname, this.locale});
    }

    public String toString() {
        return C4393a.f20681b.serialize((C4393a) this, false);
    }

    public String toStringMultiline() {
        return C4393a.f20681b.serialize((C4393a) this, true);
    }

    public UserNameLogInfo(String str, String str2) {
        this(str, str2, null);
    }
}
