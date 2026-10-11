package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.Certificate;
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
public class SsoChangeCertDetails {
    protected final Certificate newCertificateDetails;
    protected final Certificate previousCertificateDetails;

    /* renamed from: com.dropbox.core.v2.teamlog.SsoChangeCertDetails$a */
    /* loaded from: classes4.dex */
    public static class C4243a extends StructSerializer<SsoChangeCertDetails> {

        /* renamed from: b */
        public static final C4243a f20519b = new C4243a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SsoChangeCertDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Certificate certificate2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_certificate_details".equals(currentName)) {
                    certificate = Certificate.C3390a.f18777b.deserialize(jsonParser);
                } else if ("previous_certificate_details".equals(currentName)) {
                    certificate2 = (Certificate) StoneSerializers.nullableStruct(Certificate.C3390a.f18777b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (certificate == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_certificate_details\" missing.");
            }
            SsoChangeCertDetails ssoChangeCertDetails = new SsoChangeCertDetails(certificate, certificate2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(ssoChangeCertDetails, ssoChangeCertDetails.toStringMultiline());
            return ssoChangeCertDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SsoChangeCertDetails ssoChangeCertDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_certificate_details");
            Certificate.C3390a c3390a = Certificate.C3390a.f18777b;
            c3390a.serialize((Certificate.C3390a) ssoChangeCertDetails.newCertificateDetails, jsonGenerator);
            if (ssoChangeCertDetails.previousCertificateDetails != null) {
                jsonGenerator.writeFieldName("previous_certificate_details");
                StoneSerializers.nullableStruct(c3390a).serialize((StructSerializer) ssoChangeCertDetails.previousCertificateDetails, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SsoChangeCertDetails(Certificate certificate, Certificate certificate2) {
        this.previousCertificateDetails = certificate2;
        if (certificate != null) {
            this.newCertificateDetails = certificate;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newCertificateDetails' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SsoChangeCertDetails ssoChangeCertDetails = (SsoChangeCertDetails) obj;
        Certificate certificate = this.newCertificateDetails;
        Certificate certificate2 = ssoChangeCertDetails.newCertificateDetails;
        if (certificate == certificate2 || certificate.equals(certificate2)) {
            Certificate certificate3 = this.previousCertificateDetails;
            Certificate certificate4 = ssoChangeCertDetails.previousCertificateDetails;
            if (certificate3 == certificate4) {
                return true;
            }
            if (certificate3 != null && certificate3.equals(certificate4)) {
                return true;
            }
        }
        return false;
    }

    public Certificate getNewCertificateDetails() {
        return this.newCertificateDetails;
    }

    public Certificate getPreviousCertificateDetails() {
        return this.previousCertificateDetails;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousCertificateDetails, this.newCertificateDetails});
    }

    public String toString() {
        return C4243a.f20519b.serialize((C4243a) this, false);
    }

    public String toStringMultiline() {
        return C4243a.f20519b.serialize((C4243a) this, true);
    }

    public SsoChangeCertDetails(Certificate certificate) {
        this(certificate, null);
    }
}
