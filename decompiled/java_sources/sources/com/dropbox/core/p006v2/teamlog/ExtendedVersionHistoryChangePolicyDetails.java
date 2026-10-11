package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ExtendedVersionHistoryPolicy;
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
public class ExtendedVersionHistoryChangePolicyDetails {
    protected final ExtendedVersionHistoryPolicy newValue;
    protected final ExtendedVersionHistoryPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.ExtendedVersionHistoryChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3516a extends StructSerializer<ExtendedVersionHistoryChangePolicyDetails> {

        /* renamed from: b */
        public static final C3516a f19768b = new C3516a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExtendedVersionHistoryChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    extendedVersionHistoryPolicy = ExtendedVersionHistoryPolicy.C3519b.f19771b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    extendedVersionHistoryPolicy2 = (ExtendedVersionHistoryPolicy) StoneSerializers.nullable(ExtendedVersionHistoryPolicy.C3519b.f19771b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (extendedVersionHistoryPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails = new ExtendedVersionHistoryChangePolicyDetails(extendedVersionHistoryPolicy, extendedVersionHistoryPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(extendedVersionHistoryChangePolicyDetails, extendedVersionHistoryChangePolicyDetails.toStringMultiline());
            return extendedVersionHistoryChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            ExtendedVersionHistoryPolicy.C3519b c3519b = ExtendedVersionHistoryPolicy.C3519b.f19771b;
            c3519b.serialize(extendedVersionHistoryChangePolicyDetails.newValue, jsonGenerator);
            if (extendedVersionHistoryChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3519b).serialize((StoneSerializer) extendedVersionHistoryChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExtendedVersionHistoryChangePolicyDetails(ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy, ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy2) {
        if (extendedVersionHistoryPolicy != null) {
            this.newValue = extendedVersionHistoryPolicy;
            this.previousValue = extendedVersionHistoryPolicy2;
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
        ExtendedVersionHistoryChangePolicyDetails extendedVersionHistoryChangePolicyDetails = (ExtendedVersionHistoryChangePolicyDetails) obj;
        ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy = this.newValue;
        ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy2 = extendedVersionHistoryChangePolicyDetails.newValue;
        if (extendedVersionHistoryPolicy == extendedVersionHistoryPolicy2 || extendedVersionHistoryPolicy.equals(extendedVersionHistoryPolicy2)) {
            ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy3 = this.previousValue;
            ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy4 = extendedVersionHistoryChangePolicyDetails.previousValue;
            if (extendedVersionHistoryPolicy3 == extendedVersionHistoryPolicy4) {
                return true;
            }
            if (extendedVersionHistoryPolicy3 != null && extendedVersionHistoryPolicy3.equals(extendedVersionHistoryPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public ExtendedVersionHistoryPolicy getNewValue() {
        return this.newValue;
    }

    public ExtendedVersionHistoryPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3516a.f19768b.serialize((C3516a) this, false);
    }

    public String toStringMultiline() {
        return C3516a.f19768b.serialize((C3516a) this, true);
    }

    public ExtendedVersionHistoryChangePolicyDetails(ExtendedVersionHistoryPolicy extendedVersionHistoryPolicy) {
        this(extendedVersionHistoryPolicy, null);
    }
}
