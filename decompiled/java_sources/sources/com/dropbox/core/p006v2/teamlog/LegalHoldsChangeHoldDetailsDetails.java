package com.dropbox.core.p006v2.teamlog;

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
public class LegalHoldsChangeHoldDetailsDetails {
    protected final String legalHoldId;
    protected final String name;
    protected final String newValue;
    protected final String previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.LegalHoldsChangeHoldDetailsDetails$a */
    /* loaded from: classes4.dex */
    public static class C3697a extends StructSerializer<LegalHoldsChangeHoldDetailsDetails> {

        /* renamed from: b */
        public static final C3697a f19965b = new C3697a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsChangeHoldDetailsDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            String str4 = null;
            String str5 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("legal_hold_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    str5 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"legal_hold_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (str5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            LegalHoldsChangeHoldDetailsDetails legalHoldsChangeHoldDetailsDetails = new LegalHoldsChangeHoldDetailsDetails(str2, str3, str4, str5);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsChangeHoldDetailsDetails, legalHoldsChangeHoldDetailsDetails.toStringMultiline());
            return legalHoldsChangeHoldDetailsDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsChangeHoldDetailsDetails legalHoldsChangeHoldDetailsDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("legal_hold_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsChangeHoldDetailsDetails.legalHoldId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsChangeHoldDetailsDetails.name, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsChangeHoldDetailsDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsChangeHoldDetailsDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsChangeHoldDetailsDetails(String str, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'legalHoldId' is null");
        }
        this.legalHoldId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = str4;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldsChangeHoldDetailsDetails legalHoldsChangeHoldDetailsDetails = (LegalHoldsChangeHoldDetailsDetails) obj;
        String str7 = this.legalHoldId;
        String str8 = legalHoldsChangeHoldDetailsDetails.legalHoldId;
        return (str7 == str8 || str7.equals(str8)) && ((str = this.name) == (str2 = legalHoldsChangeHoldDetailsDetails.name) || str.equals(str2)) && (((str3 = this.previousValue) == (str4 = legalHoldsChangeHoldDetailsDetails.previousValue) || str3.equals(str4)) && ((str5 = this.newValue) == (str6 = legalHoldsChangeHoldDetailsDetails.newValue) || str5.equals(str6)));
    }

    public String getLegalHoldId() {
        return this.legalHoldId;
    }

    public String getName() {
        return this.name;
    }

    public String getNewValue() {
        return this.newValue;
    }

    public String getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.legalHoldId, this.name, this.previousValue, this.newValue});
    }

    public String toString() {
        return C3697a.f19965b.serialize((C3697a) this, false);
    }

    public String toStringMultiline() {
        return C3697a.f19965b.serialize((C3697a) this, true);
    }
}
