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
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class DomainVerificationAddDomainSuccessDetails {
    protected final List<String> domainNames;
    protected final String verificationMethod;

    /* renamed from: com.dropbox.core.v2.teamlog.DomainVerificationAddDomainSuccessDetails$a */
    /* loaded from: classes4.dex */
    public static class C3475a extends StructSerializer<DomainVerificationAddDomainSuccessDetails> {

        /* renamed from: b */
        public static final C3475a f18868b = new C3475a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DomainVerificationAddDomainSuccessDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("domain_names".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("verification_method".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"domain_names\" missing.");
            }
            DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails = new DomainVerificationAddDomainSuccessDetails(list, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(domainVerificationAddDomainSuccessDetails, domainVerificationAddDomainSuccessDetails.toStringMultiline());
            return domainVerificationAddDomainSuccessDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("domain_names");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) domainVerificationAddDomainSuccessDetails.domainNames, jsonGenerator);
            if (domainVerificationAddDomainSuccessDetails.verificationMethod != null) {
                jsonGenerator.writeFieldName("verification_method");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) domainVerificationAddDomainSuccessDetails.verificationMethod, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DomainVerificationAddDomainSuccessDetails(List<String> list, String str) {
        if (list != null) {
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'domainNames' is null");
                }
            }
            this.domainNames = list;
            this.verificationMethod = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'domainNames' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DomainVerificationAddDomainSuccessDetails domainVerificationAddDomainSuccessDetails = (DomainVerificationAddDomainSuccessDetails) obj;
        List<String> list = this.domainNames;
        List<String> list2 = domainVerificationAddDomainSuccessDetails.domainNames;
        if (list == list2 || list.equals(list2)) {
            String str = this.verificationMethod;
            String str2 = domainVerificationAddDomainSuccessDetails.verificationMethod;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public List<String> getDomainNames() {
        return this.domainNames;
    }

    public String getVerificationMethod() {
        return this.verificationMethod;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainNames, this.verificationMethod});
    }

    public String toString() {
        return C3475a.f18868b.serialize((C3475a) this, false);
    }

    public String toStringMultiline() {
        return C3475a.f18868b.serialize((C3475a) this, true);
    }

    public DomainVerificationAddDomainSuccessDetails(List<String> list) {
        this(list, null);
    }
}
