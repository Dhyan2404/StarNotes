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
public class LegalHoldsChangeHoldNameDetails {
    protected final String legalHoldId;
    protected final String newValue;
    protected final String previousValue;

    /* renamed from: com.dropbox.core.v2.teamlog.LegalHoldsChangeHoldNameDetails$a */
    /* loaded from: classes4.dex */
    public static class C3699a extends StructSerializer<LegalHoldsChangeHoldNameDetails> {

        /* renamed from: b */
        public static final C3699a f19967b = new C3699a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsChangeHoldNameDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("legal_hold_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_value".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("new_value".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"legal_hold_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_value\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"new_value\" missing.");
            }
            LegalHoldsChangeHoldNameDetails legalHoldsChangeHoldNameDetails = new LegalHoldsChangeHoldNameDetails(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsChangeHoldNameDetails, legalHoldsChangeHoldNameDetails.toStringMultiline());
            return legalHoldsChangeHoldNameDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsChangeHoldNameDetails legalHoldsChangeHoldNameDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("legal_hold_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsChangeHoldNameDetails.legalHoldId, jsonGenerator);
            jsonGenerator.writeFieldName("previous_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsChangeHoldNameDetails.previousValue, jsonGenerator);
            jsonGenerator.writeFieldName("new_value");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsChangeHoldNameDetails.newValue, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsChangeHoldNameDetails(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'legalHoldId' is null");
        }
        this.legalHoldId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'previousValue' is null");
        }
        this.previousValue = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'newValue' is null");
        }
        this.newValue = str3;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldsChangeHoldNameDetails legalHoldsChangeHoldNameDetails = (LegalHoldsChangeHoldNameDetails) obj;
        String str5 = this.legalHoldId;
        String str6 = legalHoldsChangeHoldNameDetails.legalHoldId;
        return (str5 == str6 || str5.equals(str6)) && ((str = this.previousValue) == (str2 = legalHoldsChangeHoldNameDetails.previousValue) || str.equals(str2)) && ((str3 = this.newValue) == (str4 = legalHoldsChangeHoldNameDetails.newValue) || str3.equals(str4));
    }

    public String getLegalHoldId() {
        return this.legalHoldId;
    }

    public String getNewValue() {
        return this.newValue;
    }

    public String getPreviousValue() {
        return this.previousValue;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.legalHoldId, this.previousValue, this.newValue});
    }

    public String toString() {
        return C3699a.f19967b.serialize((C3699a) this, false);
    }

    public String toStringMultiline() {
        return C3699a.f19967b.serialize((C3699a) this, true);
    }
}
