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
public class OrganizationDetails {
    protected final String organization;

    /* renamed from: com.dropbox.core.v2.teamlog.OrganizationDetails$a */
    /* loaded from: classes4.dex */
    public static class C3827a extends StructSerializer<OrganizationDetails> {

        /* renamed from: b */
        public static final C3827a f20100b = new C3827a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public OrganizationDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("organization".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"organization\" missing.");
            }
            OrganizationDetails organizationDetails = new OrganizationDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(organizationDetails, organizationDetails.toStringMultiline());
            return organizationDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(OrganizationDetails organizationDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("organization");
            StoneSerializers.string().serialize((StoneSerializer<String>) organizationDetails.organization, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public OrganizationDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'organization' is null");
        }
        this.organization = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.organization;
        String str2 = ((OrganizationDetails) obj).organization;
        return str == str2 || str.equals(str2);
    }

    public String getOrganization() {
        return this.organization;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.organization});
    }

    public String toString() {
        return C3827a.f20100b.serialize((C3827a) this, false);
    }

    public String toStringMultiline() {
        return C3827a.f20100b.serialize((C3827a) this, true);
    }
}
