package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TfaConfiguration;
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
public class TfaChangeStatusDetails {
    protected final TfaConfiguration newValue;
    protected final TfaConfiguration previousValue;
    protected final Boolean usedRescueCode;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final TfaConfiguration newValue;
        protected TfaConfiguration previousValue;
        protected Boolean usedRescueCode;

        public Builder(TfaConfiguration tfaConfiguration) {
            if (tfaConfiguration == null) {
                throw new IllegalArgumentException("Required value for 'newValue' is null");
            }
            this.newValue = tfaConfiguration;
            this.previousValue = null;
            this.usedRescueCode = null;
        }

        public TfaChangeStatusDetails build() {
            return new TfaChangeStatusDetails(this.newValue, this.previousValue, this.usedRescueCode);
        }

        public Builder withPreviousValue(TfaConfiguration tfaConfiguration) {
            this.previousValue = tfaConfiguration;
            return this;
        }

        public Builder withUsedRescueCode(Boolean bool) {
            this.usedRescueCode = bool;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TfaChangeStatusDetails$a */
    /* loaded from: classes4.dex */
    public static class C4366a extends StructSerializer<TfaChangeStatusDetails> {

        /* renamed from: b */
        public static final C4366a f20654b = new C4366a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TfaChangeStatusDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TfaConfiguration tfaConfiguration = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TfaConfiguration tfaConfiguration2 = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("new_value".equals(currentName)) {
                    tfaConfiguration = TfaConfiguration.C4369b.f20657b.deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    tfaConfiguration2 = (TfaConfiguration) StoneSerializers.nullable(TfaConfiguration.C4369b.f20657b).deserialize(jsonParser);
                } else if ("used_rescue_code".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (tfaConfiguration == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            TfaChangeStatusDetails tfaChangeStatusDetails = new TfaChangeStatusDetails(tfaConfiguration, tfaConfiguration2, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(tfaChangeStatusDetails, tfaChangeStatusDetails.toStringMultiline());
            return tfaChangeStatusDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TfaChangeStatusDetails tfaChangeStatusDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("new_value");
            TfaConfiguration.C4369b c4369b = TfaConfiguration.C4369b.f20657b;
            c4369b.serialize(tfaChangeStatusDetails.newValue, jsonGenerator);
            if (tfaChangeStatusDetails.previousValue != null) {
                jsonGenerator.writeFieldName("previous_value");
                StoneSerializers.nullable(c4369b).serialize((StoneSerializer) tfaChangeStatusDetails.previousValue, jsonGenerator);
            }
            if (tfaChangeStatusDetails.usedRescueCode != null) {
                jsonGenerator.writeFieldName("used_rescue_code");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) tfaChangeStatusDetails.usedRescueCode, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TfaChangeStatusDetails(TfaConfiguration tfaConfiguration, TfaConfiguration tfaConfiguration2, Boolean bool) {
        if (tfaConfiguration != null) {
            this.newValue = tfaConfiguration;
            this.previousValue = tfaConfiguration2;
            this.usedRescueCode = bool;
            return;
        }
        throw new IllegalArgumentException("Required value for 'newValue' is null");
    }

    public static Builder newBuilder(TfaConfiguration tfaConfiguration) {
        return new Builder(tfaConfiguration);
    }

    public boolean equals(Object obj) {
        TfaConfiguration tfaConfiguration;
        TfaConfiguration tfaConfiguration2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TfaChangeStatusDetails tfaChangeStatusDetails = (TfaChangeStatusDetails) obj;
        TfaConfiguration tfaConfiguration3 = this.newValue;
        TfaConfiguration tfaConfiguration4 = tfaChangeStatusDetails.newValue;
        if ((tfaConfiguration3 == tfaConfiguration4 || tfaConfiguration3.equals(tfaConfiguration4)) && ((tfaConfiguration = this.previousValue) == (tfaConfiguration2 = tfaChangeStatusDetails.previousValue) || (tfaConfiguration != null && tfaConfiguration.equals(tfaConfiguration2)))) {
            Boolean bool = this.usedRescueCode;
            Boolean bool2 = tfaChangeStatusDetails.usedRescueCode;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    public TfaConfiguration getNewValue() {
        return this.newValue;
    }

    public TfaConfiguration getPreviousValue() {
        return this.previousValue;
    }

    public Boolean getUsedRescueCode() {
        return this.usedRescueCode;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.newValue, this.previousValue, this.usedRescueCode});
    }

    public String toString() {
        return C4366a.f20654b.serialize((C4366a) this, false);
    }

    public String toStringMultiline() {
        return C4366a.f20654b.serialize((C4366a) this, true);
    }

    public TfaChangeStatusDetails(TfaConfiguration tfaConfiguration) {
        this(tfaConfiguration, null, null);
    }
}
