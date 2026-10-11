package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.PaperEnabledPolicy;
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
public class PaperChangePolicyDetails {
    protected final PaperEnabledPolicy newValue;
    protected final PaperEnabledPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3844a extends StructSerializer<PaperChangePolicyDetails> {

        /* renamed from: b */
        public static final C3844a f20117b = new C3844a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PaperEnabledPolicy paperEnabledPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperEnabledPolicy paperEnabledPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    paperEnabledPolicy = PaperEnabledPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    paperEnabledPolicy2 = (PaperEnabledPolicy) StoneSerializers.nullable(PaperEnabledPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (paperEnabledPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            PaperChangePolicyDetails paperChangePolicyDetails = new PaperChangePolicyDetails(paperEnabledPolicy, paperEnabledPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperChangePolicyDetails, paperChangePolicyDetails.toStringMultiline());
            return paperChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperChangePolicyDetails paperChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            PaperEnabledPolicy.Serializer serializer = PaperEnabledPolicy.Serializer.INSTANCE;
            serializer.serialize(paperChangePolicyDetails.newValue, jsonGenerator);
            if (paperChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) paperChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperChangePolicyDetails(PaperEnabledPolicy paperEnabledPolicy, PaperEnabledPolicy paperEnabledPolicy2) {
        if (paperEnabledPolicy != null) {
            this.newValue = paperEnabledPolicy;
            this.previousValue = paperEnabledPolicy2;
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
        PaperChangePolicyDetails paperChangePolicyDetails = (PaperChangePolicyDetails) obj;
        PaperEnabledPolicy paperEnabledPolicy = this.newValue;
        PaperEnabledPolicy paperEnabledPolicy2 = paperChangePolicyDetails.newValue;
        if (paperEnabledPolicy == paperEnabledPolicy2 || paperEnabledPolicy.equals(paperEnabledPolicy2)) {
            PaperEnabledPolicy paperEnabledPolicy3 = this.previousValue;
            PaperEnabledPolicy paperEnabledPolicy4 = paperChangePolicyDetails.previousValue;
            if (paperEnabledPolicy3 == paperEnabledPolicy4) {
                return true;
            }
            if (paperEnabledPolicy3 != null && paperEnabledPolicy3.equals(paperEnabledPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public PaperEnabledPolicy getNewValue() {
        return this.newValue;
    }

    public PaperEnabledPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3844a.f20117b.serialize((C3844a) this, false);
    }

    public String toStringMultiline() {
        return C3844a.f20117b.serialize((C3844a) this, true);
    }

    public PaperChangePolicyDetails(PaperEnabledPolicy paperEnabledPolicy) {
        this(paperEnabledPolicy, null);
    }
}
