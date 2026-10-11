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
public class DeviceChangeIpMobileType {
    protected final String description;

    /* renamed from: com.dropbox.core.v2.teamlog.DeviceChangeIpMobileType$a */
    /* loaded from: classes4.dex */
    public static class C3433a extends StructSerializer<DeviceChangeIpMobileType> {

        /* renamed from: b */
        public static final C3433a f18826b = new C3433a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceChangeIpMobileType deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("description".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"description\" missing.");
            }
            DeviceChangeIpMobileType deviceChangeIpMobileType = new DeviceChangeIpMobileType(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deviceChangeIpMobileType, deviceChangeIpMobileType.toStringMultiline());
            return deviceChangeIpMobileType;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeviceChangeIpMobileType deviceChangeIpMobileType, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("description");
            StoneSerializers.string().serialize((StoneSerializer<String>) deviceChangeIpMobileType.description, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeviceChangeIpMobileType(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'description' is null");
        }
        this.description = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.description;
        String str2 = ((DeviceChangeIpMobileType) obj).description;
        return str == str2 || str.equals(str2);
    }

    public String getDescription() {
        return this.description;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.description});
    }

    public String toString() {
        return C3433a.f18826b.serialize((C3433a) this, false);
    }

    public String toStringMultiline() {
        return C3433a.f18826b.serialize((C3433a) this, true);
    }
}
