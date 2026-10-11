package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PassPolicy;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class ViewerInfoPolicyChangedDetails {
    protected final PassPolicy newValue;
    protected final PassPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.ViewerInfoPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4395a extends StructSerializer<ViewerInfoPolicyChangedDetails> {

        /* renamed from: b */
        public static final C4395a f20683b = new C4395a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ViewerInfoPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PassPolicy passPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PassPolicy passPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    passPolicy = PassPolicy.C3949b.f20225b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    passPolicy2 = PassPolicy.C3949b.f20225b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (passPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (passPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            ViewerInfoPolicyChangedDetails viewerInfoPolicyChangedDetails = new ViewerInfoPolicyChangedDetails(passPolicy, passPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(viewerInfoPolicyChangedDetails, viewerInfoPolicyChangedDetails.toStringMultiline());
            return viewerInfoPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ViewerInfoPolicyChangedDetails viewerInfoPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            PassPolicy.C3949b c3949b = PassPolicy.C3949b.f20225b;
            c3949b.serialize(viewerInfoPolicyChangedDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c3949b.serialize(viewerInfoPolicyChangedDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ViewerInfoPolicyChangedDetails(PassPolicy passPolicy, PassPolicy passPolicy2) {
        if (passPolicy == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = passPolicy;
        if (passPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = passPolicy2;
    }

    public boolean equals(Object obj) {
        PassPolicy passPolicy;
        PassPolicy passPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ViewerInfoPolicyChangedDetails viewerInfoPolicyChangedDetails = (ViewerInfoPolicyChangedDetails) obj;
        PassPolicy passPolicy3 = this.previousValue;
        PassPolicy passPolicy4 = viewerInfoPolicyChangedDetails.previousValue;
        return (passPolicy3 == passPolicy4 || passPolicy3.equals(passPolicy4)) && ((passPolicy = this.newValue) == (passPolicy2 = viewerInfoPolicyChangedDetails.newValue) || passPolicy.equals(passPolicy2));
    }

    public PassPolicy getNewValue() {
        return this.newValue;
    }

    public PassPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C4395a.f20683b.serialize((C4395a) this, false);
    }

    public String toStringMultiline() {
        return C4395a.f20683b.serialize((C4395a) this, true);
    }
}
