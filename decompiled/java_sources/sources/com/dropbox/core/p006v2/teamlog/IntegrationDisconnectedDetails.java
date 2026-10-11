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
public class IntegrationDisconnectedDetails {
    protected final String integrationName;

    /* renamed from: com.dropbox.core.v2.teamlog.IntegrationDisconnectedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3683a extends StructSerializer<IntegrationDisconnectedDetails> {

        /* renamed from: b */
        public static final C3683a f19951b = new C3683a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public IntegrationDisconnectedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("integration_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"integration_name\" missing.");
            }
            IntegrationDisconnectedDetails integrationDisconnectedDetails = new IntegrationDisconnectedDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(integrationDisconnectedDetails, integrationDisconnectedDetails.toStringMultiline());
            return integrationDisconnectedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(IntegrationDisconnectedDetails integrationDisconnectedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("integration_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) integrationDisconnectedDetails.integrationName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public IntegrationDisconnectedDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'integrationName' is null");
        }
        this.integrationName = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.integrationName;
        String str2 = ((IntegrationDisconnectedDetails) obj).integrationName;
        return str == str2 || str.equals(str2);
    }

    public String getIntegrationName() {
        return this.integrationName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.integrationName});
    }

    public String toString() {
        return C3683a.f19951b.serialize((C3683a) this, false);
    }

    public String toStringMultiline() {
        return C3683a.f19951b.serialize((C3683a) this, true);
    }
}
