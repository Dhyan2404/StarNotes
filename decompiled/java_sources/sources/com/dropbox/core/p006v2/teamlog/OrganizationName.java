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
public class OrganizationName {
    protected final String organization;

    /* renamed from: com.dropbox.core.v2.teamlog.OrganizationName$a */
    /* loaded from: classes4.dex */
    public static class C3828a extends StructSerializer<OrganizationName> {

        /* renamed from: b */
        public static final C3828a f20101b = new C3828a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public OrganizationName deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            OrganizationName organizationName = new OrganizationName(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(organizationName, organizationName.toStringMultiline());
            return organizationName;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(OrganizationName organizationName, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("organization");
            StoneSerializers.string().serialize((StoneSerializer<String>) organizationName.organization, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public OrganizationName(String str) {
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
        String str2 = ((OrganizationName) obj).organization;
        return str == str2 || str.equals(str2);
    }

    public String getOrganization() {
        return this.organization;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.organization});
    }

    public String toString() {
        return C3828a.f20101b.serialize((C3828a) this, false);
    }

    public String toStringMultiline() {
        return C3828a.f20101b.serialize((C3828a) this, true);
    }
}
