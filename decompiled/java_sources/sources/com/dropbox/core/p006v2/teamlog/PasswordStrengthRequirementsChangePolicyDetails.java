package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.PasswordStrengthPolicy;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PasswordStrengthRequirementsChangePolicyDetails {
    protected final PasswordStrengthPolicy newValue;
    protected final PasswordStrengthPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PasswordStrengthRequirementsChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3956a extends StructSerializer<PasswordStrengthRequirementsChangePolicyDetails> {

        /* renamed from: b */
        public static final C3956a f20232b = new C3956a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PasswordStrengthRequirementsChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PasswordStrengthPolicy passwordStrengthPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PasswordStrengthPolicy passwordStrengthPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    passwordStrengthPolicy = PasswordStrengthPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    passwordStrengthPolicy2 = PasswordStrengthPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (passwordStrengthPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (passwordStrengthPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            PasswordStrengthRequirementsChangePolicyDetails passwordStrengthRequirementsChangePolicyDetails = new PasswordStrengthRequirementsChangePolicyDetails(passwordStrengthPolicy, passwordStrengthPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(passwordStrengthRequirementsChangePolicyDetails, passwordStrengthRequirementsChangePolicyDetails.toStringMultiline());
            return passwordStrengthRequirementsChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PasswordStrengthRequirementsChangePolicyDetails passwordStrengthRequirementsChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            PasswordStrengthPolicy.Serializer serializer = PasswordStrengthPolicy.Serializer.INSTANCE;
            serializer.serialize(passwordStrengthRequirementsChangePolicyDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            serializer.serialize(passwordStrengthRequirementsChangePolicyDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PasswordStrengthRequirementsChangePolicyDetails(PasswordStrengthPolicy passwordStrengthPolicy, PasswordStrengthPolicy passwordStrengthPolicy2) {
        if (passwordStrengthPolicy == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = passwordStrengthPolicy;
        if (passwordStrengthPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = passwordStrengthPolicy2;
    }

    public boolean equals(Object obj) {
        PasswordStrengthPolicy passwordStrengthPolicy;
        PasswordStrengthPolicy passwordStrengthPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PasswordStrengthRequirementsChangePolicyDetails passwordStrengthRequirementsChangePolicyDetails = (PasswordStrengthRequirementsChangePolicyDetails) obj;
        PasswordStrengthPolicy passwordStrengthPolicy3 = this.previousValue;
        PasswordStrengthPolicy passwordStrengthPolicy4 = passwordStrengthRequirementsChangePolicyDetails.previousValue;
        return (passwordStrengthPolicy3 == passwordStrengthPolicy4 || passwordStrengthPolicy3.equals(passwordStrengthPolicy4)) && ((passwordStrengthPolicy = this.newValue) == (passwordStrengthPolicy2 = passwordStrengthRequirementsChangePolicyDetails.newValue) || passwordStrengthPolicy.equals(passwordStrengthPolicy2));
    }

    public PasswordStrengthPolicy getNewValue() {
        return this.newValue;
    }

    public PasswordStrengthPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C3956a.f20232b.serialize((C3956a) this, false);
    }

    public String toStringMultiline() {
        return C3956a.f20232b.serialize((C3956a) this, true);
    }
}
