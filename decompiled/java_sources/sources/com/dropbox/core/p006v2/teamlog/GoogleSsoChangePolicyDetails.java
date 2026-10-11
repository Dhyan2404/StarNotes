package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.GoogleSsoPolicy;
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
public class GoogleSsoChangePolicyDetails {
    protected final GoogleSsoPolicy newValue;
    protected final GoogleSsoPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.GoogleSsoChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3638a extends StructSerializer<GoogleSsoChangePolicyDetails> {

        /* renamed from: b */
        public static final C3638a f19906b = new C3638a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GoogleSsoChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            GoogleSsoPolicy googleSsoPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            GoogleSsoPolicy googleSsoPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    googleSsoPolicy = GoogleSsoPolicy.C3641b.f19909b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    googleSsoPolicy2 = (GoogleSsoPolicy) StoneSerializers.nullable(GoogleSsoPolicy.C3641b.f19909b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (googleSsoPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails = new GoogleSsoChangePolicyDetails(googleSsoPolicy, googleSsoPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(googleSsoChangePolicyDetails, googleSsoChangePolicyDetails.toStringMultiline());
            return googleSsoChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            GoogleSsoPolicy.C3641b c3641b = GoogleSsoPolicy.C3641b.f19909b;
            c3641b.serialize(googleSsoChangePolicyDetails.newValue, jsonGenerator);
            if (googleSsoChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3641b).serialize((StoneSerializer) googleSsoChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GoogleSsoChangePolicyDetails(GoogleSsoPolicy googleSsoPolicy, GoogleSsoPolicy googleSsoPolicy2) {
        if (googleSsoPolicy != null) {
            this.newValue = googleSsoPolicy;
            this.previousValue = googleSsoPolicy2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GoogleSsoChangePolicyDetails googleSsoChangePolicyDetails = (GoogleSsoChangePolicyDetails) obj;
        GoogleSsoPolicy googleSsoPolicy = this.newValue;
        GoogleSsoPolicy googleSsoPolicy2 = googleSsoChangePolicyDetails.newValue;
        if (googleSsoPolicy == googleSsoPolicy2 || googleSsoPolicy.equals(googleSsoPolicy2)) {
            GoogleSsoPolicy googleSsoPolicy3 = this.previousValue;
            GoogleSsoPolicy googleSsoPolicy4 = googleSsoChangePolicyDetails.previousValue;
            if (googleSsoPolicy3 == googleSsoPolicy4) {
                return true;
            }
            if (googleSsoPolicy3 != null && googleSsoPolicy3.equals(googleSsoPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public GoogleSsoPolicy getNewValue() {
        return this.newValue;
    }

    public GoogleSsoPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3638a.f19906b.serialize((C3638a) this, false);
    }

    public String toStringMultiline() {
        return C3638a.f19906b.serialize((C3638a) this, true);
    }

    public GoogleSsoChangePolicyDetails(GoogleSsoPolicy googleSsoPolicy) {
        this(googleSsoPolicy, null);
    }
}
