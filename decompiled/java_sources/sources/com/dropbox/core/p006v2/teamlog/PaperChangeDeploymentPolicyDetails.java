package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teampolicies.PaperDeploymentPolicy;
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
public class PaperChangeDeploymentPolicyDetails {
    protected final PaperDeploymentPolicy newValue;
    protected final PaperDeploymentPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperChangeDeploymentPolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3838a extends StructSerializer<PaperChangeDeploymentPolicyDetails> {

        /* renamed from: b */
        public static final C3838a f20111b = new C3838a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperChangeDeploymentPolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PaperDeploymentPolicy paperDeploymentPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            PaperDeploymentPolicy paperDeploymentPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    paperDeploymentPolicy = PaperDeploymentPolicy.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    paperDeploymentPolicy2 = (PaperDeploymentPolicy) StoneSerializers.nullable(PaperDeploymentPolicy.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (paperDeploymentPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails = new PaperChangeDeploymentPolicyDetails(paperDeploymentPolicy, paperDeploymentPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperChangeDeploymentPolicyDetails, paperChangeDeploymentPolicyDetails.toStringMultiline());
            return paperChangeDeploymentPolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            PaperDeploymentPolicy.Serializer serializer = PaperDeploymentPolicy.Serializer.INSTANCE;
            serializer.serialize(paperChangeDeploymentPolicyDetails.newValue, jsonGenerator);
            if (paperChangeDeploymentPolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(serializer).serialize((StoneSerializer) paperChangeDeploymentPolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperChangeDeploymentPolicyDetails(PaperDeploymentPolicy paperDeploymentPolicy, PaperDeploymentPolicy paperDeploymentPolicy2) {
        if (paperDeploymentPolicy != null) {
            this.newValue = paperDeploymentPolicy;
            this.previousValue = paperDeploymentPolicy2;
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
        PaperChangeDeploymentPolicyDetails paperChangeDeploymentPolicyDetails = (PaperChangeDeploymentPolicyDetails) obj;
        PaperDeploymentPolicy paperDeploymentPolicy = this.newValue;
        PaperDeploymentPolicy paperDeploymentPolicy2 = paperChangeDeploymentPolicyDetails.newValue;
        if (paperDeploymentPolicy == paperDeploymentPolicy2 || paperDeploymentPolicy.equals(paperDeploymentPolicy2)) {
            PaperDeploymentPolicy paperDeploymentPolicy3 = this.previousValue;
            PaperDeploymentPolicy paperDeploymentPolicy4 = paperChangeDeploymentPolicyDetails.previousValue;
            if (paperDeploymentPolicy3 == paperDeploymentPolicy4) {
                return true;
            }
            if (paperDeploymentPolicy3 != null && paperDeploymentPolicy3.equals(paperDeploymentPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public PaperDeploymentPolicy getNewValue() {
        return this.newValue;
    }

    public PaperDeploymentPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3838a.f20111b.serialize((C3838a) this, false);
    }

    public String toStringMultiline() {
        return C3838a.f20111b.serialize((C3838a) this, true);
    }

    public PaperChangeDeploymentPolicyDetails(PaperDeploymentPolicy paperDeploymentPolicy) {
        this(paperDeploymentPolicy, null);
    }
}
