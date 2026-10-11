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
public class DeviceChangeIpWebDetails {
    protected final String userAgent;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceChangeIpWebDetails$a */
    /* loaded from: classes4.dex */
    public static class C3434a extends StructSerializer<DeviceChangeIpWebDetails> {

        /* renamed from: b */
        public static final C3434a f18827b = new C3434a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceChangeIpWebDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("user_agent".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"user_agent\" missing.");
            }
            DeviceChangeIpWebDetails deviceChangeIpWebDetails = new DeviceChangeIpWebDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceChangeIpWebDetails, deviceChangeIpWebDetails.toStringMultiline());
            return deviceChangeIpWebDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceChangeIpWebDetails deviceChangeIpWebDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("user_agent");
            StoneSerializers.string().serialize((StoneSerializer<String>) deviceChangeIpWebDetails.userAgent, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceChangeIpWebDetails(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'userAgent' is null");
        }
        this.userAgent = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.userAgent;
        String str2 = ((DeviceChangeIpWebDetails) obj).userAgent;
        return str == str2 || str.equals(str2);
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.userAgent});
    }

    public String toString() {
        return C3434a.f18827b.serialize((C3434a) this, false);
    }

    public String toStringMultiline() {
        return C3434a.f18827b.serialize((C3434a) this, true);
    }
}
