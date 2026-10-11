package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FailureDetailsLogInfo;
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
public class LoginFailDetails {
    protected final FailureDetailsLogInfo errorDetails;
    protected final Boolean isEmmManaged;
    protected final LoginMethod loginMethod;

    /* renamed from: com.dropbox.core.v2.teamlog.LoginFailDetails$a */
    /* loaded from: classes4.dex */
    public static class C3719a extends StructSerializer<LoginFailDetails> {

        /* renamed from: b */
        public static final C3719a f19992b = new C3719a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginFailDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            FailureDetailsLogInfo failureDetailsLogInfo = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("login_method".equals(currentName)) {
                    loginMethod = LoginMethod.C3722b.f19995b.deserialize(jsonParser);
                } else if ("error_details".equals(currentName)) {
                    failureDetailsLogInfo = FailureDetailsLogInfo.C3525a.f19777b.deserialize(jsonParser);
                } else if ("is_emm_managed".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (loginMethod == null) {
                throw new JsonParseException(jsonParser, "Required field \"login_method\" missing.");
            }
            if (failureDetailsLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"error_details\" missing.");
            }
            LoginFailDetails loginFailDetails = new LoginFailDetails(loginMethod, failureDetailsLogInfo, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(loginFailDetails, loginFailDetails.toStringMultiline());
            return loginFailDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LoginFailDetails loginFailDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("login_method");
            LoginMethod.C3722b.f19995b.serialize(loginFailDetails.loginMethod, jsonGenerator);
            jsonGenerator.writeFieldName("error_details");
            FailureDetailsLogInfo.C3525a.f19777b.serialize((FailureDetailsLogInfo.C3525a) loginFailDetails.errorDetails, jsonGenerator);
            if (loginFailDetails.isEmmManaged != null) {
                jsonGenerator.writeFieldName("is_emm_managed");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) loginFailDetails.isEmmManaged, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LoginFailDetails(LoginMethod loginMethod, FailureDetailsLogInfo failureDetailsLogInfo, Boolean bool) {
        this.isEmmManaged = bool;
        if (loginMethod != null) {
            this.loginMethod = loginMethod;
            if (failureDetailsLogInfo != null) {
                this.errorDetails = failureDetailsLogInfo;
                return;
            }
            throw new IllegalArgumentException("Required value for 'errorDetails' is null");
        }
        throw new IllegalArgumentException("Required value for 'loginMethod' is null");
    }

    public boolean equals(Object obj) {
        FailureDetailsLogInfo failureDetailsLogInfo;
        FailureDetailsLogInfo failureDetailsLogInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LoginFailDetails loginFailDetails = (LoginFailDetails) obj;
        LoginMethod loginMethod = this.loginMethod;
        LoginMethod loginMethod2 = loginFailDetails.loginMethod;
        if ((loginMethod == loginMethod2 || loginMethod.equals(loginMethod2)) && ((failureDetailsLogInfo = this.errorDetails) == (failureDetailsLogInfo2 = loginFailDetails.errorDetails) || failureDetailsLogInfo.equals(failureDetailsLogInfo2))) {
            Boolean bool = this.isEmmManaged;
            Boolean bool2 = loginFailDetails.isEmmManaged;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    public FailureDetailsLogInfo getErrorDetails() {
        return this.errorDetails;
    }

    public Boolean getIsEmmManaged() {
        return this.isEmmManaged;
    }

    public LoginMethod getLoginMethod() {
        return this.loginMethod;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.isEmmManaged, this.loginMethod, this.errorDetails});
    }

    public String toString() {
        return C3719a.f19992b.serialize((C3719a) this, false);
    }

    public String toStringMultiline() {
        return C3719a.f19992b.serialize((C3719a) this, true);
    }

    public LoginFailDetails(LoginMethod loginMethod, FailureDetailsLogInfo failureDetailsLogInfo) {
        this(loginMethod, failureDetailsLogInfo, null);
    }
}
