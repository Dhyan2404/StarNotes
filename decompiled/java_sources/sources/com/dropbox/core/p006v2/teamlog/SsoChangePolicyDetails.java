package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.SsoPolicy;
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
public class SsoChangePolicyDetails {
    protected final SsoPolicy newValue;
    protected final SsoPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SsoChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4249a extends StructSerializer<SsoChangePolicyDetails> {

        /* renamed from: b */
        public static final C4249a f20525b = new C4249a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SsoChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SsoPolicy ssoPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SsoPolicy ssoPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    ssoPolicy = SsoPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    ssoPolicy2 = (SsoPolicy) StoneSerializers.nullable(SsoPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (ssoPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SsoChangePolicyDetails ssoChangePolicyDetails = new SsoChangePolicyDetails(ssoPolicy, ssoPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(ssoChangePolicyDetails, ssoChangePolicyDetails.toStringMultiline());
            return ssoChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SsoChangePolicyDetails ssoChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SsoPolicy.Serializer serializer = SsoPolicy.Serializer.INSTANCE;
            serializer.serialize(ssoChangePolicyDetails.newValue, jsonGenerator);
            if (ssoChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) ssoChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SsoChangePolicyDetails(SsoPolicy ssoPolicy, SsoPolicy ssoPolicy2) {
        if (ssoPolicy != null) {
            this.newValue = ssoPolicy;
            this.previousValue = ssoPolicy2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SsoChangePolicyDetails ssoChangePolicyDetails = (SsoChangePolicyDetails) obj;
        SsoPolicy ssoPolicy = this.newValue;
        SsoPolicy ssoPolicy2 = ssoChangePolicyDetails.newValue;
        if (ssoPolicy == ssoPolicy2 || ssoPolicy.equals(ssoPolicy2)) {
            SsoPolicy ssoPolicy3 = this.previousValue;
            SsoPolicy ssoPolicy4 = ssoChangePolicyDetails.previousValue;
            if (ssoPolicy3 == ssoPolicy4) {
                return true;
            }
            if (ssoPolicy3 != null && ssoPolicy3.equals(ssoPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public SsoPolicy getNewValue() {
        return this.newValue;
    }

    public SsoPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4249a.f20525b.serialize((C4249a) this, false);
    }

    public String toStringMultiline() {
        return C4249a.f20525b.serialize((C4249a) this, true);
    }

    public SsoChangePolicyDetails(SsoPolicy ssoPolicy) {
        this(ssoPolicy, null);
    }
}
