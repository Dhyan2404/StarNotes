package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.WebSessionsFixedLengthPolicy;
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
public class WebSessionsChangeFixedLengthPolicyDetails {
    protected final WebSessionsFixedLengthPolicy newValue;
    protected final WebSessionsFixedLengthPolicy previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected WebSessionsFixedLengthPolicy newValue = null;
        protected WebSessionsFixedLengthPolicy previousValue = null;

        public WebSessionsChangeFixedLengthPolicyDetails build() {
            return new WebSessionsChangeFixedLengthPolicyDetails(this.newValue, this.previousValue);
        }

        public Builder withNewValue(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy) {
            this.newValue = webSessionsFixedLengthPolicy;
            return this;
        }

        public Builder withPreviousValue(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy) {
            this.previousValue = webSessionsFixedLengthPolicy;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.WebSessionsChangeFixedLengthPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4405a extends StructSerializer<WebSessionsChangeFixedLengthPolicyDetails> {

        /* renamed from: b */
        public static final C4405a f20695b = new C4405a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebSessionsChangeFixedLengthPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    webSessionsFixedLengthPolicy = (WebSessionsFixedLengthPolicy) StoneSerializers.nullable(WebSessionsFixedLengthPolicy.C4410b.f20702b).deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    webSessionsFixedLengthPolicy2 = (WebSessionsFixedLengthPolicy) StoneSerializers.nullable(WebSessionsFixedLengthPolicy.C4410b.f20702b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails = new WebSessionsChangeFixedLengthPolicyDetails(webSessionsFixedLengthPolicy, webSessionsFixedLengthPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(webSessionsChangeFixedLengthPolicyDetails, webSessionsChangeFixedLengthPolicyDetails.toStringMultiline());
            return webSessionsChangeFixedLengthPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (webSessionsChangeFixedLengthPolicyDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(WebSessionsFixedLengthPolicy.C4410b.f20702b).serialize((StoneSerializer) webSessionsChangeFixedLengthPolicyDetails.newValue, jsonGenerator);
            }
            if (webSessionsChangeFixedLengthPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(WebSessionsFixedLengthPolicy.C4410b.f20702b).serialize((StoneSerializer) webSessionsChangeFixedLengthPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public WebSessionsChangeFixedLengthPolicyDetails(WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy, WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy2) {
        this.newValue = webSessionsFixedLengthPolicy;
        this.previousValue = webSessionsFixedLengthPolicy2;
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
        WebSessionsChangeFixedLengthPolicyDetails webSessionsChangeFixedLengthPolicyDetails = (WebSessionsChangeFixedLengthPolicyDetails) obj;
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy = this.newValue;
        WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy2 = webSessionsChangeFixedLengthPolicyDetails.newValue;
        if (webSessionsFixedLengthPolicy == webSessionsFixedLengthPolicy2 || (webSessionsFixedLengthPolicy != null && webSessionsFixedLengthPolicy.equals(webSessionsFixedLengthPolicy2))) {
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy3 = this.previousValue;
            WebSessionsFixedLengthPolicy webSessionsFixedLengthPolicy4 = webSessionsChangeFixedLengthPolicyDetails.previousValue;
            if (webSessionsFixedLengthPolicy3 == webSessionsFixedLengthPolicy4) {
                return true;
            }
            if (webSessionsFixedLengthPolicy3 != null && webSessionsFixedLengthPolicy3.equals(webSessionsFixedLengthPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public WebSessionsFixedLengthPolicy getNewValue() {
        return this.newValue;
    }

    public WebSessionsFixedLengthPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4405a.f20695b.serialize((C4405a) this, false);
    }

    public String toStringMultiline() {
        return C4405a.f20695b.serialize((C4405a) this, true);
    }

    public WebSessionsChangeFixedLengthPolicyDetails() {
        this(null, null);
    }
}
