package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.Certificate;
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
public class SsoAddCertDetails {
    protected final Certificate certificateDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.SsoAddCertDetails$a */
    /* loaded from: classes4.dex */
    public static class C4237a extends StructSerializer<SsoAddCertDetails> {

        /* renamed from: b */
        public static final C4237a f20513b = new C4237a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SsoAddCertDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Certificate certificate = null;
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
                if ("certificate_details".equals(currentName)) {
                    certificate = Certificate.C3390a.f18777b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (certificate == null) {
                throw new JsonParseException(jsonParser, "Required field \"certificate_details\" missing.");
            }
            SsoAddCertDetails ssoAddCertDetails = new SsoAddCertDetails(certificate);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(ssoAddCertDetails, ssoAddCertDetails.toStringMultiline());
            return ssoAddCertDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SsoAddCertDetails ssoAddCertDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("certificate_details");
            Certificate.C3390a.f18777b.serialize((Certificate.C3390a) ssoAddCertDetails.certificateDetails, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SsoAddCertDetails(Certificate certificate) {
        if (certificate == null) {
            throw new IllegalArgumentException("Required value for 'certificateDetails' is null");
        }
        this.certificateDetails = certificate;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        Certificate certificate = this.certificateDetails;
        Certificate certificate2 = ((SsoAddCertDetails) obj).certificateDetails;
        return certificate == certificate2 || certificate.equals(certificate2);
    }

    public Certificate getCertificateDetails() {
        return this.certificateDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.certificateDetails});
    }

    public String toString() {
        return C4237a.f20513b.serialize((C4237a) this, false);
    }

    public String toStringMultiline() {
        return C4237a.f20513b.serialize((C4237a) this, true);
    }
}
