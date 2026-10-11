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
public class StartedEnterpriseAdminSessionDetails {
    protected final FedExtraDetails federationExtraDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.StartedEnterpriseAdminSessionDetails$a */
    /* loaded from: classes4.dex */
    public static class C4261a extends StructSerializer<StartedEnterpriseAdminSessionDetails> {

        /* renamed from: b */
        public static final C4261a f20537b = new C4261a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public StartedEnterpriseAdminSessionDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            StartedEnterpriseAdminSessionDetails startedEnterpriseAdminSessionDetails = new StartedEnterpriseAdminSessionDetails(fedExtraDetails);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(startedEnterpriseAdminSessionDetails, startedEnterpriseAdminSessionDetails.toStringMultiline());
            return startedEnterpriseAdminSessionDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(StartedEnterpriseAdminSessionDetails startedEnterpriseAdminSessionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("federation_extra_details");
            FedExtraDetails.C3529b.f19784b.serialize(startedEnterpriseAdminSessionDetails.federationExtraDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public StartedEnterpriseAdminSessionDetails(FedExtraDetails fedExtraDetails) {
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
        FedExtraDetails fedExtraDetails2 = ((StartedEnterpriseAdminSessionDetails) obj).federationExtraDetails;
        return fedExtraDetails == fedExtraDetails2 || fedExtraDetails.equals(fedExtraDetails2);
    }

    public FedExtraDetails getFederationExtraDetails() {
        return this.federationExtraDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.federationExtraDetails});
    }

    public String toString() {
        return C4261a.f20537b.serialize((C4261a) this, false);
    }

    public String toStringMultiline() {
        return C4261a.f20537b.serialize((C4261a) this, true);
    }
}
