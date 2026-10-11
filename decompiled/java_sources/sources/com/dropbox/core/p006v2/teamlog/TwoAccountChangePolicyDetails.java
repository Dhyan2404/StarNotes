package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TwoAccountPolicy;
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
public class TwoAccountChangePolicyDetails {
    protected final TwoAccountPolicy newValue;
    protected final TwoAccountPolicy previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.TwoAccountChangePolicyDetails$a */
    /* loaded from: classes4.dex */
    public static class C4387a extends StructSerializer<TwoAccountChangePolicyDetails> {

        /* renamed from: b */
        public static final C4387a f20675b = new C4387a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TwoAccountChangePolicyDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TwoAccountPolicy twoAccountPolicy = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TwoAccountPolicy twoAccountPolicy2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    twoAccountPolicy = TwoAccountPolicy.C4390b.f20678b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    twoAccountPolicy2 = (TwoAccountPolicy) StoneSerializers.nullable(TwoAccountPolicy.C4390b.f20678b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (twoAccountPolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            TwoAccountChangePolicyDetails twoAccountChangePolicyDetails = new TwoAccountChangePolicyDetails(twoAccountPolicy, twoAccountPolicy2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(twoAccountChangePolicyDetails, twoAccountChangePolicyDetails.toStringMultiline());
            return twoAccountChangePolicyDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TwoAccountChangePolicyDetails twoAccountChangePolicyDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            TwoAccountPolicy.C4390b c4390b = TwoAccountPolicy.C4390b.f20678b;
            c4390b.serialize(twoAccountChangePolicyDetails.newValue, jsonGenerator);
            if (twoAccountChangePolicyDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c4390b).serialize((StoneSerializer) twoAccountChangePolicyDetails.previousValue, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TwoAccountChangePolicyDetails(TwoAccountPolicy twoAccountPolicy, TwoAccountPolicy twoAccountPolicy2) {
        if (twoAccountPolicy != null) {
            this.newValue = twoAccountPolicy;
            this.previousValue = twoAccountPolicy2;
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
        TwoAccountChangePolicyDetails twoAccountChangePolicyDetails = (TwoAccountChangePolicyDetails) obj;
        TwoAccountPolicy twoAccountPolicy = this.newValue;
        TwoAccountPolicy twoAccountPolicy2 = twoAccountChangePolicyDetails.newValue;
        if (twoAccountPolicy == twoAccountPolicy2 || twoAccountPolicy.equals(twoAccountPolicy2)) {
            TwoAccountPolicy twoAccountPolicy3 = this.previousValue;
            TwoAccountPolicy twoAccountPolicy4 = twoAccountChangePolicyDetails.previousValue;
            if (twoAccountPolicy3 == twoAccountPolicy4) {
                return true;
            }
            if (twoAccountPolicy3 != null && twoAccountPolicy3.equals(twoAccountPolicy4)) {
                return true;
            }
        }
        return false;
    }

    public TwoAccountPolicy getNewValue() {
        return this.newValue;
    }

    public TwoAccountPolicy getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue});
    }

    public String toString() {
        return C4387a.f20675b.serialize((C4387a) this, false);
    }

    public String toStringMultiline() {
        return C4387a.f20675b.serialize((C4387a) this, true);
    }

    public TwoAccountChangePolicyDetails(TwoAccountPolicy twoAccountPolicy) {
        this(twoAccountPolicy, null);
    }
}
