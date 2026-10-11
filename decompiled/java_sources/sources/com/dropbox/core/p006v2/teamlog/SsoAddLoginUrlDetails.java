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
public class SsoAddLoginUrlDetails {
    protected final String newValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SsoAddLoginUrlDetails$a */
    /* loaded from: classes4.dex */
    public static class C4239a extends StructSerializer<SsoAddLoginUrlDetails> {

        /* renamed from: b */
        public static final C4239a f20515b = new C4239a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SsoAddLoginUrlDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("new_value".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SsoAddLoginUrlDetails ssoAddLoginUrlDetails = new SsoAddLoginUrlDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(ssoAddLoginUrlDetails, ssoAddLoginUrlDetails.toStringMultiline());
            return ssoAddLoginUrlDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SsoAddLoginUrlDetails ssoAddLoginUrlDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) ssoAddLoginUrlDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SsoAddLoginUrlDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.newValue;
        String str2 = ((SsoAddLoginUrlDetails) obj).newValue;
        return str == str2 || str.equals(str2);
    }

    public String getNewValue() {
        return this.newValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue});
    }

    public String toString() {
        return C4239a.f20515b.serialize((C4239a) this, false);
    }

    public String toStringMultiline() {
        return C4239a.f20515b.serialize((C4239a) this, true);
    }
}
