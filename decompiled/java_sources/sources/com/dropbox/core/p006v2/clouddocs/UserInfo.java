package com.dropbox.core.p006v2.clouddocs;

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
    protected final String email;

    /* renamed from: id */
    protected final String f16872id;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: id */
        protected String f16873id = "\"\"";
        protected String email = "\"\"";

        public UserInfo build() {
            return new UserInfo(this.f16873id, this.email);
        }

        public Builder withEmail(String str) {
            if (str != null) {
                this.email = str;
            } else {
                this.email = "\"\"";
            }
            return this;
        }

        public Builder withId(String str) {
            if (str != null) {
                this.f16873id = str;
            } else {
                this.f16873id = "\"\"";
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.UserInfo$a */
    /* loaded from: classes4.dex */
    public static class C2413a extends StructSerializer<UserInfo> {

        /* renamed from: b */
        public static final C2413a f16874b = new C2413a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = "\"\"";
            String str3 = "\"\"";
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("email".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            UserInfo userInfo = new UserInfo(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(userInfo, userInfo.toStringMultiline());
            return userInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserInfo userInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) userInfo.f16872id, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            StoneSerializers.string().serialize((StoneSerializer<String>) userInfo.email, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UserInfo(String str, String str2) {
        if (str != null) {
            this.f16872id = str;
            if (str2 != null) {
                this.email = str2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'email' is null");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    public static Builder newBuilder() {
        return new Builder();
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
        UserInfo userInfo = (UserInfo) obj;
        String str3 = this.f16872id;
        String str4 = userInfo.f16872id;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.email) == (str2 = userInfo.email) || str.equals(str2));
    }

    public String getEmail() {
        return this.email;
    }

    public String getId() {
        return this.f16872id;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16872id, this.email});
    }

    public String toString() {
        return C2413a.f16874b.serialize((C2413a) this, false);
    }

    public String toStringMultiline() {
        return C2413a.f16874b.serialize((C2413a) this, true);
    }

    public UserInfo() {
        this("\"\"", "\"\"");
    }
}
