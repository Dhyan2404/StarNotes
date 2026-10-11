package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.WebSessionsIdleLengthPolicy;
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
public class WebSessionsChangeIdleLengthPolicyDetails {
    protected final WebSessionsIdleLengthPolicy newValue;
    protected final WebSessionsIdleLengthPolicy previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected WebSessionsIdleLengthPolicy newValue = null;
        protected WebSessionsIdleLengthPolicy previousValue = null;

        public WebSessionsChangeIdleLengthPolicyDetails build() {
            return new WebSessionsChangeIdleLengthPolicyDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy) {
            this.newValue = webSessionsIdleLengthPolicy;
            return this;
        }

        public Builder withPreviousValue(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy) {
            this.previousValue = webSessionsIdleLengthPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionsChangeIdleLengthPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4407a extends StructSerializer<WebSessionsChangeIdleLengthPolicyDetails> {

        /* renamed from: b */
        public static final C4407a f20697b = new C4407a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebSessionsChangeIdleLengthPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    webSessionsIdleLengthPolicy = (WebSessionsIdleLengthPolicy) StoneSerializers.nullable(WebSessionsIdleLengthPolicy.C4412b.f20706b).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    webSessionsIdleLengthPolicy2 = (WebSessionsIdleLengthPolicy) StoneSerializers.nullable(WebSessionsIdleLengthPolicy.C4412b.f20706b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails = new WebSessionsChangeIdleLengthPolicyDetails(webSessionsIdleLengthPolicy, webSessionsIdleLengthPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(webSessionsChangeIdleLengthPolicyDetails, webSessionsChangeIdleLengthPolicyDetails.toStringMultiline());
            return webSessionsChangeIdleLengthPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (webSessionsChangeIdleLengthPolicyDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(WebSessionsIdleLengthPolicy.C4412b.f20706b).serialize((StoneSerializer) webSessionsChangeIdleLengthPolicyDetails.newValue, jsonGenerator);
            }
            if (webSessionsChangeIdleLengthPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(WebSessionsIdleLengthPolicy.C4412b.f20706b).serialize((StoneSerializer) webSessionsChangeIdleLengthPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public WebSessionsChangeIdleLengthPolicyDetails(WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy, WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy2) {
        this.newValue = webSessionsIdleLengthPolicy;
        this.previousValue = webSessionsIdleLengthPolicy2;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        WebSessionsChangeIdleLengthPolicyDetails webSessionsChangeIdleLengthPolicyDetails = (WebSessionsChangeIdleLengthPolicyDetails) obj;
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy = this.newValue;
        WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy2 = webSessionsChangeIdleLengthPolicyDetails.newValue;
        if (webSessionsIdleLengthPolicy == webSessionsIdleLengthPolicy2 || (webSessionsIdleLengthPolicy != null && webSessionsIdleLengthPolicy.equals(webSessionsIdleLengthPolicy2))) {
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy3 = this.previousValue;
            WebSessionsIdleLengthPolicy webSessionsIdleLengthPolicy4 = webSessionsChangeIdleLengthPolicyDetails.previousValue;
            if (webSessionsIdleLengthPolicy3 == webSessionsIdleLengthPolicy4) {
                return true;
            }
            if (webSessionsIdleLengthPolicy3 != null && webSessionsIdleLengthPolicy3.equals(webSessionsIdleLengthPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public WebSessionsIdleLengthPolicy getNewValue() {
        return this.newValue;
    }

    public WebSessionsIdleLengthPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4407a.f20697b.serialize((C4407a) this, false);
    }

    public String toStringMultiline() {
        return C4407a.f20697b.serialize((C4407a) this, true);
    }

    public WebSessionsChangeIdleLengthPolicyDetails() {
        this(null, null);
    }
}
