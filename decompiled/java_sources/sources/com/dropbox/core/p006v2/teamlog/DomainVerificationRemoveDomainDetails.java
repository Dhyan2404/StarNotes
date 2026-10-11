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
public class DomainVerificationRemoveDomainDetails {
    protected final List<String> domainNames;

    /* renamed from: com.dropbox.core.v2.teamlog.DomainVerificationRemoveDomainDetails$a */
    /* loaded from: classes4.dex */
    public static class C3477a extends StructSerializer<DomainVerificationRemoveDomainDetails> {

        /* renamed from: b */
        public static final C3477a f18870b = new C3477a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DomainVerificationRemoveDomainDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("domain_names".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"domain_names\" missing.");
            }
            DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetails = new DomainVerificationRemoveDomainDetails(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(domainVerificationRemoveDomainDetails, domainVerificationRemoveDomainDetails.toStringMultiline());
            return domainVerificationRemoveDomainDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DomainVerificationRemoveDomainDetails domainVerificationRemoveDomainDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("domain_names");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) domainVerificationRemoveDomainDetails.domainNames, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DomainVerificationRemoveDomainDetails(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'domainNames' is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'domainNames' is null");
            }
        }
        this.domainNames = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<String> list = this.domainNames;
        List<String> list2 = ((DomainVerificationRemoveDomainDetails) obj).domainNames;
        return list == list2 || list.equals(list2);
    }

    public List<String> getDomainNames() {
        return this.domainNames;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.domainNames});
    }

    public String toString() {
        return C3477a.f18870b.serialize((C3477a) this, false);
    }

    public String toStringMultiline() {
        return C3477a.f18870b.serialize((C3477a) this, true);
    }
}
