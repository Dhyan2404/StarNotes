package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.WatermarkingPolicy;
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
public class WatermarkingPolicyChangedDetails {
    protected final WatermarkingPolicy newValue;
    protected final WatermarkingPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.WatermarkingPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4399a extends StructSerializer<WatermarkingPolicyChangedDetails> {

        /* renamed from: b */
        public static final C4399a f20687b = new C4399a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WatermarkingPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            WatermarkingPolicy watermarkingPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            WatermarkingPolicy watermarkingPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    watermarkingPolicy = WatermarkingPolicy.C4398b.f20686b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    watermarkingPolicy2 = WatermarkingPolicy.C4398b.f20686b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (watermarkingPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            if (watermarkingPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            WatermarkingPolicyChangedDetails watermarkingPolicyChangedDetails = new WatermarkingPolicyChangedDetails(watermarkingPolicy, watermarkingPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(watermarkingPolicyChangedDetails, watermarkingPolicyChangedDetails.toStringMultiline());
            return watermarkingPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(WatermarkingPolicyChangedDetails watermarkingPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            WatermarkingPolicy.C4398b c4398b = WatermarkingPolicy.C4398b.f20686b;
            c4398b.serialize(watermarkingPolicyChangedDetails.newValue, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            c4398b.serialize(watermarkingPolicyChangedDetails.previousValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public WatermarkingPolicyChangedDetails(WatermarkingPolicy watermarkingPolicy, WatermarkingPolicy watermarkingPolicy2) {
        if (watermarkingPolicy == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = watermarkingPolicy;
        if (watermarkingPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = watermarkingPolicy2;
    }

    public boolean equals(Object obj) {
        WatermarkingPolicy watermarkingPolicy;
        WatermarkingPolicy watermarkingPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        WatermarkingPolicyChangedDetails watermarkingPolicyChangedDetails = (WatermarkingPolicyChangedDetails) obj;
        WatermarkingPolicy watermarkingPolicy3 = this.newValue;
        WatermarkingPolicy watermarkingPolicy4 = watermarkingPolicyChangedDetails.newValue;
        return (watermarkingPolicy3 == watermarkingPolicy4 || watermarkingPolicy3.equals(watermarkingPolicy4)) && ((watermarkingPolicy = this.previousValue) == (watermarkingPolicy2 = watermarkingPolicyChangedDetails.previousValue) || watermarkingPolicy.equals(watermarkingPolicy2));
    }

    public WatermarkingPolicy getNewValue() {
        return this.newValue;
    }

    public WatermarkingPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4399a.f20687b.serialize((C4399a) this, false);
    }

    public String toStringMultiline() {
        return C4399a.f20687b.serialize((C4399a) this, true);
    }
}
