package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ResellerSupportPolicy;
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
public class ResellerSupportChangePolicyDetails {
    protected final ResellerSupportPolicy newValue;
    protected final ResellerSupportPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.ResellerSupportChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3971a extends StructSerializer<ResellerSupportChangePolicyDetails> {

        /* renamed from: b */
        public static final C3971a f20247b = new C3971a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResellerSupportChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ResellerSupportPolicy resellerSupportPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ResellerSupportPolicy resellerSupportPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    resellerSupportPolicy = ResellerSupportPolicy.C3974b.f20250b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    resellerSupportPolicy2 = ResellerSupportPolicy.C3974b.f20250b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (resellerSupportPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (resellerSupportPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            ResellerSupportChangePolicyDetails resellerSupportChangePolicyDetails = new ResellerSupportChangePolicyDetails(resellerSupportPolicy, resellerSupportPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(resellerSupportChangePolicyDetails, resellerSupportChangePolicyDetails.toStringMultiline());
            return resellerSupportChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ResellerSupportChangePolicyDetails resellerSupportChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            ResellerSupportPolicy.C3974b c3974b = ResellerSupportPolicy.C3974b.f20250b;
            c3974b.serialize(resellerSupportChangePolicyDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c3974b.serialize(resellerSupportChangePolicyDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ResellerSupportChangePolicyDetails(ResellerSupportPolicy resellerSupportPolicy, ResellerSupportPolicy resellerSupportPolicy2) {
        if (resellerSupportPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = resellerSupportPolicy;
        if (resellerSupportPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = resellerSupportPolicy2;
    }

    public boolean equals(Object obj) {
        ResellerSupportPolicy resellerSupportPolicy;
        ResellerSupportPolicy resellerSupportPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ResellerSupportChangePolicyDetails resellerSupportChangePolicyDetails = (ResellerSupportChangePolicyDetails) obj;
        ResellerSupportPolicy resellerSupportPolicy3 = this.newValue;
        ResellerSupportPolicy resellerSupportPolicy4 = resellerSupportChangePolicyDetails.newValue;
        return (resellerSupportPolicy3 == resellerSupportPolicy4 || resellerSupportPolicy3.equals(resellerSupportPolicy4)) && ((resellerSupportPolicy = this.previousValue) == (resellerSupportPolicy2 = resellerSupportChangePolicyDetails.previousValue) || resellerSupportPolicy.equals(resellerSupportPolicy2));
    }

    public ResellerSupportPolicy getNewValue() {
        return this.newValue;
    }

    public ResellerSupportPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3971a.f20247b.serialize((C3971a) this, false);
    }

    public String toStringMultiline() {
        return C3971a.f20247b.serialize((C3971a) this, true);
    }
}
