package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SendForSignaturePolicy;
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
public class SendForSignaturePolicyChangedDetails {
    protected final SendForSignaturePolicy newValue;
    protected final SendForSignaturePolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SendForSignaturePolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3999a extends StructSerializer<SendForSignaturePolicyChangedDetails> {

        /* renamed from: b */
        public static final C3999a f20275b = new C3999a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SendForSignaturePolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SendForSignaturePolicy sendForSignaturePolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SendForSignaturePolicy sendForSignaturePolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    sendForSignaturePolicy = SendForSignaturePolicy.C3998b.f20274b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    sendForSignaturePolicy2 = SendForSignaturePolicy.C3998b.f20274b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (sendForSignaturePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (sendForSignaturePolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            SendForSignaturePolicyChangedDetails sendForSignaturePolicyChangedDetails = new SendForSignaturePolicyChangedDetails(sendForSignaturePolicy, sendForSignaturePolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sendForSignaturePolicyChangedDetails, sendForSignaturePolicyChangedDetails.toStringMultiline());
            return sendForSignaturePolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SendForSignaturePolicyChangedDetails sendForSignaturePolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            SendForSignaturePolicy.C3998b c3998b = SendForSignaturePolicy.C3998b.f20274b;
            c3998b.serialize(sendForSignaturePolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3998b.serialize(sendForSignaturePolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SendForSignaturePolicyChangedDetails(SendForSignaturePolicy sendForSignaturePolicy, SendForSignaturePolicy sendForSignaturePolicy2) {
        if (sendForSignaturePolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = sendForSignaturePolicy;
        if (sendForSignaturePolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = sendForSignaturePolicy2;
    }

    public boolean equals(Object obj) {
        SendForSignaturePolicy sendForSignaturePolicy;
        SendForSignaturePolicy sendForSignaturePolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SendForSignaturePolicyChangedDetails sendForSignaturePolicyChangedDetails = (SendForSignaturePolicyChangedDetails) obj;
        SendForSignaturePolicy sendForSignaturePolicy3 = this.newValue;
        SendForSignaturePolicy sendForSignaturePolicy4 = sendForSignaturePolicyChangedDetails.newValue;
        return (sendForSignaturePolicy3 == sendForSignaturePolicy4 || sendForSignaturePolicy3.equals(sendForSignaturePolicy4)) && ((sendForSignaturePolicy = this.previousValue) == (sendForSignaturePolicy2 = sendForSignaturePolicyChangedDetails.previousValue) || sendForSignaturePolicy.equals(sendForSignaturePolicy2));
    }

    public SendForSignaturePolicy getNewValue() {
        return this.newValue;
    }

    public SendForSignaturePolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3999a.f20275b.serialize((C3999a) this, false);
    }

    public String toStringMultiline() {
        return C3999a.f20275b.serialize((C3999a) this, true);
    }
}
