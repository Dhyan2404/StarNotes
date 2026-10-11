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
public class SsoChangeLogoutUrlDetails {
    protected final String newValue;
    protected final String previousValue;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String previousValue = null;
        protected String newValue = null;

        public SsoChangeLogoutUrlDetails build() {
            return new SsoChangeLogoutUrlDetails(this.previousValue, this.newValue);
        }

        public Builder withNewValue(String str) {
            this.newValue = str;
            return this;
        }

        public Builder withPreviousValue(String str) {
            this.previousValue = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SsoChangeLogoutUrlDetails$a */
    /* loaded from: classes4.dex */
    public static class C4247a extends StructSerializer<SsoChangeLogoutUrlDetails> {

        /* renamed from: b */
        public static final C4247a f20523b = new C4247a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SsoChangeLogoutUrlDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails = new SsoChangeLogoutUrlDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(ssoChangeLogoutUrlDetails, ssoChangeLogoutUrlDetails.toStringMultiline());
            return ssoChangeLogoutUrlDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (ssoChangeLogoutUrlDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) ssoChangeLogoutUrlDetails.previousValue, jsonGenerator);
            }
            if (ssoChangeLogoutUrlDetails.newValue != null) {
                jsonGenerator.writeFieldName("new_value");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) ssoChangeLogoutUrlDetails.newValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SsoChangeLogoutUrlDetails(String str, String str2) {
        this.previousValue = str;
        this.newValue = str2;
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
        SsoChangeLogoutUrlDetails ssoChangeLogoutUrlDetails = (SsoChangeLogoutUrlDetails) obj;
        String str = this.previousValue;
        String str2 = ssoChangeLogoutUrlDetails.previousValue;
        if (str == str2 || (str != null && str.equals(str2))) {
            String str3 = this.newValue;
            String str4 = ssoChangeLogoutUrlDetails.newValue;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
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
        return C4247a.f20523b.serialize((C4247a) this, false);
    }

    public String toStringMultiline() {
        return C4247a.f20523b.serialize((C4247a) this, true);
    }

    public SsoChangeLogoutUrlDetails() {
        this(null, null);
    }
}
