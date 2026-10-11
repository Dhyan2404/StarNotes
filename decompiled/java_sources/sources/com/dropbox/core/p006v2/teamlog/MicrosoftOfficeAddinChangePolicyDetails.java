package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.MicrosoftOfficeAddinPolicy;
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
public class MicrosoftOfficeAddinChangePolicyDetails {
    protected final MicrosoftOfficeAddinPolicy newValue;
    protected final MicrosoftOfficeAddinPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.MicrosoftOfficeAddinChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C3789a extends StructSerializer<MicrosoftOfficeAddinChangePolicyDetails> {

        /* renamed from: b */
        public static final C3789a f20062b = new C3789a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MicrosoftOfficeAddinChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    microsoftOfficeAddinPolicy = MicrosoftOfficeAddinPolicy.C3792b.f20065b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    microsoftOfficeAddinPolicy2 = (MicrosoftOfficeAddinPolicy) StoneSerializers.nullable(MicrosoftOfficeAddinPolicy.C3792b.f20065b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (microsoftOfficeAddinPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails = new MicrosoftOfficeAddinChangePolicyDetails(microsoftOfficeAddinPolicy, microsoftOfficeAddinPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(microsoftOfficeAddinChangePolicyDetails, microsoftOfficeAddinChangePolicyDetails.toStringMultiline());
            return microsoftOfficeAddinChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            MicrosoftOfficeAddinPolicy.C3792b c3792b = MicrosoftOfficeAddinPolicy.C3792b.f20065b;
            c3792b.serialize(microsoftOfficeAddinChangePolicyDetails.newValue, jsonGenerator);
            if (microsoftOfficeAddinChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c3792b).serialize((StoneSerializer) microsoftOfficeAddinChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MicrosoftOfficeAddinChangePolicyDetails(MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy, MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy2) {
        if (microsoftOfficeAddinPolicy != null) {
            this.newValue = microsoftOfficeAddinPolicy;
            this.previousValue = microsoftOfficeAddinPolicy2;
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
        MicrosoftOfficeAddinChangePolicyDetails microsoftOfficeAddinChangePolicyDetails = (MicrosoftOfficeAddinChangePolicyDetails) obj;
        MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy = this.newValue;
        MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy2 = microsoftOfficeAddinChangePolicyDetails.newValue;
        if (microsoftOfficeAddinPolicy == microsoftOfficeAddinPolicy2 || microsoftOfficeAddinPolicy.equals(microsoftOfficeAddinPolicy2)) {
            MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy3 = this.previousValue;
            MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy4 = microsoftOfficeAddinChangePolicyDetails.previousValue;
            if (microsoftOfficeAddinPolicy3 == microsoftOfficeAddinPolicy4) {
                return true;
            }
            if (microsoftOfficeAddinPolicy3 != null && microsoftOfficeAddinPolicy3.equals(microsoftOfficeAddinPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public MicrosoftOfficeAddinPolicy getNewValue() {
        return this.newValue;
    }

    public MicrosoftOfficeAddinPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C3789a.f20062b.serialize((C3789a) this, false);
    }

    public String toStringMultiline() {
        return C3789a.f20062b.serialize((C3789a) this, true);
    }

    public MicrosoftOfficeAddinChangePolicyDetails(MicrosoftOfficeAddinPolicy microsoftOfficeAddinPolicy) {
        this(microsoftOfficeAddinPolicy, null);
    }
}
