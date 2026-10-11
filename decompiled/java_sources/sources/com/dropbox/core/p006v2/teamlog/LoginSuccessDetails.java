package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.LoginMethod;
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
public class LoginSuccessDetails {
    protected final Boolean isEmmManaged;
    protected final LoginMethod loginMethod;

    /* renamed from: com.dropbox.core.v2.teamlog.LoginSuccessDetails$a */
    /* loaded from: classes4.dex */
    public static class C3723a extends StructSerializer<LoginSuccessDetails> {

        /* renamed from: b */
        public static final C3723a f19996b = new C3723a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginSuccessDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            LoginMethod loginMethod = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("login_method".equals(currentName)) {
                    loginMethod = LoginMethod.C3722b.f19995b.deserialize(jsonParser);
                } else if ("is_emm_managed".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (loginMethod == null) {
                throw new JsonParseException(jsonParser, "Required field \"login_method\" missing.");
            }
            LoginSuccessDetails loginSuccessDetails = new LoginSuccessDetails(loginMethod, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(loginSuccessDetails, loginSuccessDetails.toStringMultiline());
            return loginSuccessDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LoginSuccessDetails loginSuccessDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("login_method");
            LoginMethod.C3722b.f19995b.serialize(loginSuccessDetails.loginMethod, jsonGenerator);
            if (loginSuccessDetails.isEmmManaged != null) {
                jsonGenerator.writeFieldName("is_emm_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) loginSuccessDetails.isEmmManaged, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LoginSuccessDetails(LoginMethod loginMethod, Boolean bool) {
        this.isEmmManaged = bool;
        if (loginMethod != null) {
            this.loginMethod = loginMethod;
            return;
        }
        throw new IllegalArgumentException("Required value for 'loginMethod' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LoginSuccessDetails loginSuccessDetails = (LoginSuccessDetails) obj;
        LoginMethod loginMethod = this.loginMethod;
        LoginMethod loginMethod2 = loginSuccessDetails.loginMethod;
        if (loginMethod == loginMethod2 || loginMethod.equals(loginMethod2)) {
            Boolean bool = this.isEmmManaged;
            Boolean bool2 = loginSuccessDetails.isEmmManaged;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    public Boolean getIsEmmManaged() {
        return this.isEmmManaged;
    }

    public LoginMethod getLoginMethod() {
        return this.loginMethod;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.isEmmManaged, this.loginMethod});
    }

    public String toString() {
        return C3723a.f19996b.serialize((C3723a) this, false);
    }

    public String toStringMultiline() {
        return C3723a.f19996b.serialize((C3723a) this, true);
    }

    public LoginSuccessDetails(LoginMethod loginMethod) {
        this(loginMethod, null);
    }
}
