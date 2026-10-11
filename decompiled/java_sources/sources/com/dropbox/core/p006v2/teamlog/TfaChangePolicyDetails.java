package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.TwoStepVerificationPolicy;
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
public class TfaChangePolicyDetails {
    protected final TwoStepVerificationPolicy newValue;
    protected final TwoStepVerificationPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TfaChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4364a extends StructSerializer<TfaChangePolicyDetails> {

        /* renamed from: b */
        public static final C4364a f20652b = new C4364a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TfaChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TwoStepVerificationPolicy twoStepVerificationPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TwoStepVerificationPolicy twoStepVerificationPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    twoStepVerificationPolicy = TwoStepVerificationPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    twoStepVerificationPolicy2 = (TwoStepVerificationPolicy) StoneSerializers.nullable(TwoStepVerificationPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (twoStepVerificationPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            TfaChangePolicyDetails tfaChangePolicyDetails = new TfaChangePolicyDetails(twoStepVerificationPolicy, twoStepVerificationPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(tfaChangePolicyDetails, tfaChangePolicyDetails.toStringMultiline());
            return tfaChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TfaChangePolicyDetails tfaChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            TwoStepVerificationPolicy.Serializer serializer = TwoStepVerificationPolicy.Serializer.INSTANCE;
            serializer.serialize(tfaChangePolicyDetails.newValue, jsonGenerator);
            if (tfaChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) tfaChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TfaChangePolicyDetails(TwoStepVerificationPolicy twoStepVerificationPolicy, TwoStepVerificationPolicy twoStepVerificationPolicy2) {
        if (twoStepVerificationPolicy != null) {
            this.newValue = twoStepVerificationPolicy;
            this.previousValue = twoStepVerificationPolicy2;
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
        TfaChangePolicyDetails tfaChangePolicyDetails = (TfaChangePolicyDetails) obj;
        TwoStepVerificationPolicy twoStepVerificationPolicy = this.newValue;
        TwoStepVerificationPolicy twoStepVerificationPolicy2 = tfaChangePolicyDetails.newValue;
        if (twoStepVerificationPolicy == twoStepVerificationPolicy2 || twoStepVerificationPolicy.equals(twoStepVerificationPolicy2)) {
            TwoStepVerificationPolicy twoStepVerificationPolicy3 = this.previousValue;
            TwoStepVerificationPolicy twoStepVerificationPolicy4 = tfaChangePolicyDetails.previousValue;
            if (twoStepVerificationPolicy3 == twoStepVerificationPolicy4) {
                return true;
            }
            if (twoStepVerificationPolicy3 != null && twoStepVerificationPolicy3.equals(twoStepVerificationPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public TwoStepVerificationPolicy getNewValue() {
        return this.newValue;
    }

    public TwoStepVerificationPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4364a.f20652b.serialize((C4364a) this, false);
    }

    public String toStringMultiline() {
        return C4364a.f20652b.serialize((C4364a) this, true);
    }

    public TfaChangePolicyDetails(TwoStepVerificationPolicy twoStepVerificationPolicy) {
        this(twoStepVerificationPolicy, null);
    }
}
