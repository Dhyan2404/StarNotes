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
public class WebSessionsChangeActiveSessionLimitDetails {
    protected final String newValue;
    protected final String previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionsChangeActiveSessionLimitDetails$a */
    /* loaded from: classes4.dex */
    public static class C4403a extends StructSerializer<WebSessionsChangeActiveSessionLimitDetails> {

        /* renamed from: b */
        public static final C4403a f20693b = new C4403a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebSessionsChangeActiveSessionLimitDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("previous_value".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            WebSessionsChangeActiveSessionLimitDetails webSessionsChangeActiveSessionLimitDetails = new WebSessionsChangeActiveSessionLimitDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(webSessionsChangeActiveSessionLimitDetails, webSessionsChangeActiveSessionLimitDetails.toStringMultiline());
            return webSessionsChangeActiveSessionLimitDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WebSessionsChangeActiveSessionLimitDetails webSessionsChangeActiveSessionLimitDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) webSessionsChangeActiveSessionLimitDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) webSessionsChangeActiveSessionLimitDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public WebSessionsChangeActiveSessionLimitDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = str2;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        WebSessionsChangeActiveSessionLimitDetails webSessionsChangeActiveSessionLimitDetails = (WebSessionsChangeActiveSessionLimitDetails) obj;
        String str3 = this.previousValue;
        String str4 = webSessionsChangeActiveSessionLimitDetails.previousValue;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.newValue) == (str2 = webSessionsChangeActiveSessionLimitDetails.newValue) || str.equals(str2));
    }

    public String getNewValue() {
        return this.newValue;
    }

    public String getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C4403a.f20693b.serialize((C4403a) this, false);
    }

    public String toStringMultiline() {
        return C4403a.f20693b.serialize((C4403a) this, true);
    }
}
