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
public class LegalHoldsReleaseAHoldDetails {
    protected final String legalHoldId;
    protected final String name;

    /* renamed from: com.dropbox.core.v2.teamlog.LegalHoldsReleaseAHoldDetails$a */
    /* loaded from: classes4.dex */
    public static class C3709a extends StructSerializer<LegalHoldsReleaseAHoldDetails> {

        /* renamed from: b */
        public static final C3709a f19977b = new C3709a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsReleaseAHoldDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("legal_hold_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
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
            LegalHoldsReleaseAHoldDetails legalHoldsReleaseAHoldDetails = new LegalHoldsReleaseAHoldDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsReleaseAHoldDetails, legalHoldsReleaseAHoldDetails.toStringMultiline());
            return legalHoldsReleaseAHoldDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsReleaseAHoldDetails legalHoldsReleaseAHoldDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("legal_hold_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsReleaseAHoldDetails.legalHoldId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsReleaseAHoldDetails.name, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsReleaseAHoldDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'legalHoldId' is null");
        }
        this.legalHoldId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.name = str2;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldsReleaseAHoldDetails legalHoldsReleaseAHoldDetails = (LegalHoldsReleaseAHoldDetails) obj;
        String str3 = this.legalHoldId;
        String str4 = legalHoldsReleaseAHoldDetails.legalHoldId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.name) == (str2 = legalHoldsReleaseAHoldDetails.name) || str.equals(str2));
    }

    public String getLegalHoldId() {
        return this.legalHoldId;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.legalHoldId, this.name});
    }

    public String toString() {
        return C3709a.f19977b.serialize((C3709a) this, false);
    }

    public String toStringMultiline() {
        return C3709a.f19977b.serialize((C3709a) this, true);
    }
}
