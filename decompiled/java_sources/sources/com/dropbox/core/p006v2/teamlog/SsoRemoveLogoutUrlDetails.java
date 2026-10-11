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
public class SsoRemoveLogoutUrlDetails {
    protected final String previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SsoRemoveLogoutUrlDetails$a */
    /* loaded from: classes4.dex */
    public static class C4259a extends StructSerializer<SsoRemoveLogoutUrlDetails> {

        /* renamed from: b */
        public static final C4259a f20535b = new C4259a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SsoRemoveLogoutUrlDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("previous_value".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            SsoRemoveLogoutUrlDetails ssoRemoveLogoutUrlDetails = new SsoRemoveLogoutUrlDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(ssoRemoveLogoutUrlDetails, ssoRemoveLogoutUrlDetails.toStringMultiline());
            return ssoRemoveLogoutUrlDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SsoRemoveLogoutUrlDetails ssoRemoveLogoutUrlDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) ssoRemoveLogoutUrlDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SsoRemoveLogoutUrlDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.previousValue;
        String str2 = ((SsoRemoveLogoutUrlDetails) obj).previousValue;
        return str == str2 || str.equals(str2);
    }

    public String getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue});
    }

    public String toString() {
        return C4259a.f20535b.serialize((C4259a) this, false);
    }

    public String toStringMultiline() {
        return C4259a.f20535b.serialize((C4259a) this, true);
    }
}
