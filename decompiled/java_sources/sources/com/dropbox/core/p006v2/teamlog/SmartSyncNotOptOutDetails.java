package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.SmartSyncOptOutPolicy;
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
public class SmartSyncNotOptOutDetails {
    protected final SmartSyncOptOutPolicy newValue;
    protected final SmartSyncOptOutPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SmartSyncNotOptOutDetails$a */
    /* loaded from: classes4.dex */
    public static class C4225a extends StructSerializer<SmartSyncNotOptOutDetails> {

        /* renamed from: b */
        public static final C4225a f20501b = new C4225a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SmartSyncNotOptOutDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SmartSyncOptOutPolicy smartSyncOptOutPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SmartSyncOptOutPolicy smartSyncOptOutPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    smartSyncOptOutPolicy = SmartSyncOptOutPolicy.C4229b.f20505b.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    smartSyncOptOutPolicy2 = SmartSyncOptOutPolicy.C4229b.f20505b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (smartSyncOptOutPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (smartSyncOptOutPolicy2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SmartSyncNotOptOutDetails smartSyncNotOptOutDetails = new SmartSyncNotOptOutDetails(smartSyncOptOutPolicy, smartSyncOptOutPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(smartSyncNotOptOutDetails, smartSyncNotOptOutDetails.toStringMultiline());
            return smartSyncNotOptOutDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SmartSyncNotOptOutDetails smartSyncNotOptOutDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            SmartSyncOptOutPolicy.C4229b c4229b = SmartSyncOptOutPolicy.C4229b.f20505b;
            c4229b.serialize(smartSyncNotOptOutDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            c4229b.serialize(smartSyncNotOptOutDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SmartSyncNotOptOutDetails(SmartSyncOptOutPolicy smartSyncOptOutPolicy, SmartSyncOptOutPolicy smartSyncOptOutPolicy2) {
        if (smartSyncOptOutPolicy == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = smartSyncOptOutPolicy;
        if (smartSyncOptOutPolicy2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = smartSyncOptOutPolicy2;
    }

    public boolean equals(Object obj) {
        SmartSyncOptOutPolicy smartSyncOptOutPolicy;
        SmartSyncOptOutPolicy smartSyncOptOutPolicy2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SmartSyncNotOptOutDetails smartSyncNotOptOutDetails = (SmartSyncNotOptOutDetails) obj;
        SmartSyncOptOutPolicy smartSyncOptOutPolicy3 = this.previousValue;
        SmartSyncOptOutPolicy smartSyncOptOutPolicy4 = smartSyncNotOptOutDetails.previousValue;
        return (smartSyncOptOutPolicy3 == smartSyncOptOutPolicy4 || smartSyncOptOutPolicy3.equals(smartSyncOptOutPolicy4)) && ((smartSyncOptOutPolicy = this.newValue) == (smartSyncOptOutPolicy2 = smartSyncNotOptOutDetails.newValue) || smartSyncOptOutPolicy.equals(smartSyncOptOutPolicy2));
    }

    public SmartSyncOptOutPolicy getNewValue() {
        return this.newValue;
    }

    public SmartSyncOptOutPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C4225a.f20501b.serialize((C4225a) this, false);
    }

    public String toStringMultiline() {
        return C4225a.f20501b.serialize((C4225a) this, true);
    }
}
