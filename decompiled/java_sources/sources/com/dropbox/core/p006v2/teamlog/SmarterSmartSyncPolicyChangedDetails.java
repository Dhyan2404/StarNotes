package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.SmarterSmartSyncPolicyState;
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
public class SmarterSmartSyncPolicyChangedDetails {
    protected final SmarterSmartSyncPolicyState newValue;
    protected final SmarterSmartSyncPolicyState previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.SmarterSmartSyncPolicyChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4231a extends StructSerializer<SmarterSmartSyncPolicyChangedDetails> {

        /* renamed from: b */
        public static final C4231a f20507b = new C4231a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SmarterSmartSyncPolicyChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SmarterSmartSyncPolicyState smarterSmartSyncPolicyState = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            SmarterSmartSyncPolicyState smarterSmartSyncPolicyState2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("previous_value".equals(currentName)) {
                    smarterSmartSyncPolicyState = SmarterSmartSyncPolicyState.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    smarterSmartSyncPolicyState2 = SmarterSmartSyncPolicyState.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (smarterSmartSyncPolicyState == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (smarterSmartSyncPolicyState2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            SmarterSmartSyncPolicyChangedDetails smarterSmartSyncPolicyChangedDetails = new SmarterSmartSyncPolicyChangedDetails(smarterSmartSyncPolicyState, smarterSmartSyncPolicyState2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(smarterSmartSyncPolicyChangedDetails, smarterSmartSyncPolicyChangedDetails.toStringMultiline());
            return smarterSmartSyncPolicyChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SmarterSmartSyncPolicyChangedDetails smarterSmartSyncPolicyChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_value");
            SmarterSmartSyncPolicyState.Serializer serializer = SmarterSmartSyncPolicyState.Serializer.INSTANCE;
            serializer.serialize(smarterSmartSyncPolicyChangedDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            serializer.serialize(smarterSmartSyncPolicyChangedDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SmarterSmartSyncPolicyChangedDetails(SmarterSmartSyncPolicyState smarterSmartSyncPolicyState, SmarterSmartSyncPolicyState smarterSmartSyncPolicyState2) {
        if (smarterSmartSyncPolicyState == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = smarterSmartSyncPolicyState;
        if (smarterSmartSyncPolicyState2 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = smarterSmartSyncPolicyState2;
    }

    public boolean equals(Object obj) {
        SmarterSmartSyncPolicyState smarterSmartSyncPolicyState;
        SmarterSmartSyncPolicyState smarterSmartSyncPolicyState2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SmarterSmartSyncPolicyChangedDetails smarterSmartSyncPolicyChangedDetails = (SmarterSmartSyncPolicyChangedDetails) obj;
        SmarterSmartSyncPolicyState smarterSmartSyncPolicyState3 = this.previousValue;
        SmarterSmartSyncPolicyState smarterSmartSyncPolicyState4 = smarterSmartSyncPolicyChangedDetails.previousValue;
        return (smarterSmartSyncPolicyState3 == smarterSmartSyncPolicyState4 || smarterSmartSyncPolicyState3.equals(smarterSmartSyncPolicyState4)) && ((smarterSmartSyncPolicyState = this.newValue) == (smarterSmartSyncPolicyState2 = smarterSmartSyncPolicyChangedDetails.newValue) || smarterSmartSyncPolicyState.equals(smarterSmartSyncPolicyState2));
    }

    public SmarterSmartSyncPolicyState getNewValue() {
        return this.newValue;
    }

    public SmarterSmartSyncPolicyState getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.previousValue, this.newValue});
    }

    public String toString() {
        return C4231a.f20507b.serialize((C4231a) this, false);
    }

    public String toStringMultiline() {
        return C4231a.f20507b.serialize((C4231a) this, true);
    }
}
