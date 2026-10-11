package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.EmmState;
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
public class EmmChangePolicyDetails {
    protected final EmmState newValue;
    protected final EmmState previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.EmmChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3484a extends StructSerializer<EmmChangePolicyDetails> {

        /* renamed from: b */
        public static final C3484a f18877b = new C3484a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EmmChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            EmmState emmState = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            EmmState emmState2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    emmState = EmmState.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    emmState2 = (EmmState) StoneSerializers.nullable(EmmState.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (emmState == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            EmmChangePolicyDetails emmChangePolicyDetails = new EmmChangePolicyDetails(emmState, emmState2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(emmChangePolicyDetails, emmChangePolicyDetails.toStringMultiline());
            return emmChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EmmChangePolicyDetails emmChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            EmmState.Serializer serializer = EmmState.Serializer.INSTANCE;
            serializer.serialize(emmChangePolicyDetails.newValue, jsonGenerator);
            if (emmChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) emmChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public EmmChangePolicyDetails(EmmState emmState, EmmState emmState2) {
        if (emmState != null) {
            this.newValue = emmState;
            this.previousValue = emmState2;
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
        EmmChangePolicyDetails emmChangePolicyDetails = (EmmChangePolicyDetails) obj;
        EmmState emmState = this.newValue;
        EmmState emmState2 = emmChangePolicyDetails.newValue;
        if (emmState == emmState2 || emmState.equals(emmState2)) {
            EmmState emmState3 = this.previousValue;
            EmmState emmState4 = emmChangePolicyDetails.previousValue;
            if (emmState3 == emmState4) {
                return true;
            }
            if (emmState3 != null && emmState3.equals(emmState4)) {
                return true;
            }
        }
        return false;
    }

    public EmmState getNewValue() {
        return this.newValue;
    }

    public EmmState getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3484a.f18877b.serialize((C3484a) this, false);
    }

    public String toStringMultiline() {
        return C3484a.f18877b.serialize((C3484a) this, true);
    }

    public EmmChangePolicyDetails(EmmState emmState) {
        this(emmState, null);
    }
}
