package com.dropbox.core.p006v2.teamlog;

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
public class DomainVerificationAddDomainFailDetails {
    protected final String domainName;
    protected final String verificationMethod;

    /* renamed from: com.dropbox.core.v2.teamlog.DomainVerificationAddDomainFailDetails$a */
    /* loaded from: classes4.dex */
    public static class C3473a extends StructSerializer<DomainVerificationAddDomainFailDetails> {

        /* renamed from: b */
        public static final C3473a f18866b = new C3473a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DomainVerificationAddDomainFailDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("domain_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("verification_method".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"domain_name\" missing.");
            }
            DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails = new DomainVerificationAddDomainFailDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(domainVerificationAddDomainFailDetails, domainVerificationAddDomainFailDetails.toStringMultiline());
            return domainVerificationAddDomainFailDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("domain_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) domainVerificationAddDomainFailDetails.domainName, jsonGenerator);
            if (domainVerificationAddDomainFailDetails.verificationMethod != null) {
                jsonGenerator.writeFieldName("verification_method");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) domainVerificationAddDomainFailDetails.verificationMethod, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DomainVerificationAddDomainFailDetails(String str, String str2) {
        if (str != null) {
            this.domainName = str;
            this.verificationMethod = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'domainName' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DomainVerificationAddDomainFailDetails domainVerificationAddDomainFailDetails = (DomainVerificationAddDomainFailDetails) obj;
        String str = this.domainName;
        String str2 = domainVerificationAddDomainFailDetails.domainName;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.verificationMethod;
            String str4 = domainVerificationAddDomainFailDetails.verificationMethod;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getDomainName() {
        return this.domainName;
    }

    public String getVerificationMethod() {
        return this.verificationMethod;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainName, this.verificationMethod});
    }

    public String toString() {
        return C3473a.f18866b.serialize((C3473a) this, false);
    }

    public String toStringMultiline() {
        return C3473a.f18866b.serialize((C3473a) this, true);
    }

    public DomainVerificationAddDomainFailDetails(String str) {
        this(str, null);
    }
}
