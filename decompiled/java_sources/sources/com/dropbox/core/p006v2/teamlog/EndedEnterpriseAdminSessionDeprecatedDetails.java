package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.FedExtraDetails;
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
public class EndedEnterpriseAdminSessionDeprecatedDetails {
    protected final FedExtraDetails federationExtraDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.EndedEnterpriseAdminSessionDeprecatedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3498a extends StructSerializer<EndedEnterpriseAdminSessionDeprecatedDetails> {

        /* renamed from: b */
        public static final C3498a f18891b = new C3498a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EndedEnterpriseAdminSessionDeprecatedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FedExtraDetails fedExtraDetails = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("federation_extra_details".equals(currentName)) {
                    fedExtraDetails = FedExtraDetails.C3529b.f19784b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fedExtraDetails == null) {
                throw new JsonParseException(jsonParser, "Required field \"federation_extra_details\" missing.");
            }
            EndedEnterpriseAdminSessionDeprecatedDetails endedEnterpriseAdminSessionDeprecatedDetails = new EndedEnterpriseAdminSessionDeprecatedDetails(fedExtraDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(endedEnterpriseAdminSessionDeprecatedDetails, endedEnterpriseAdminSessionDeprecatedDetails.toStringMultiline());
            return endedEnterpriseAdminSessionDeprecatedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EndedEnterpriseAdminSessionDeprecatedDetails endedEnterpriseAdminSessionDeprecatedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("federation_extra_details");
            FedExtraDetails.C3529b.f19784b.serialize(endedEnterpriseAdminSessionDeprecatedDetails.federationExtraDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public EndedEnterpriseAdminSessionDeprecatedDetails(FedExtraDetails fedExtraDetails) {
        if (fedExtraDetails == null) {
            throw new IllegalArgumentException("Required value for 'federationExtraDetails' is null");
        }
        this.federationExtraDetails = fedExtraDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FedExtraDetails fedExtraDetails = this.federationExtraDetails;
        FedExtraDetails fedExtraDetails2 = ((EndedEnterpriseAdminSessionDeprecatedDetails) obj).federationExtraDetails;
        return fedExtraDetails == fedExtraDetails2 || fedExtraDetails.equals(fedExtraDetails2);
    }

    public FedExtraDetails getFederationExtraDetails() {
        return this.federationExtraDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.federationExtraDetails});
    }

    public String toString() {
        return C3498a.f18891b.serialize((C3498a) this, false);
    }

    public String toStringMultiline() {
        return C3498a.f18891b.serialize((C3498a) this, true);
    }
}
