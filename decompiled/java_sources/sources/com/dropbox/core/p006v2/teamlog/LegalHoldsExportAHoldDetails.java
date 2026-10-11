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
public class LegalHoldsExportAHoldDetails {
    protected final String exportName;
    protected final String legalHoldId;
    protected final String name;

    /* renamed from: com.dropbox.core.v2.teamlog.LegalHoldsExportAHoldDetails$a */
    /* loaded from: classes4.dex */
    public static class C3701a extends StructSerializer<LegalHoldsExportAHoldDetails> {

        /* renamed from: b */
        public static final C3701a f19969b = new C3701a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsExportAHoldDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("export_name".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
            LegalHoldsExportAHoldDetails legalHoldsExportAHoldDetails = new LegalHoldsExportAHoldDetails(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsExportAHoldDetails, legalHoldsExportAHoldDetails.toStringMultiline());
            return legalHoldsExportAHoldDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsExportAHoldDetails legalHoldsExportAHoldDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("legal_hold_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsExportAHoldDetails.legalHoldId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsExportAHoldDetails.name, jsonGenerator);
            if (legalHoldsExportAHoldDetails.exportName != null) {
                jsonGenerator.writeFieldName("export_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsExportAHoldDetails.exportName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsExportAHoldDetails(String str, String str2, String str3) {
        if (str != null) {
            this.legalHoldId = str;
            if (str2 != null) {
                this.name = str2;
                this.exportName = str3;
                return;
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        throw new IllegalArgumentException("Required value for 'legalHoldId' is null");
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
        LegalHoldsExportAHoldDetails legalHoldsExportAHoldDetails = (LegalHoldsExportAHoldDetails) obj;
        String str3 = this.legalHoldId;
        String str4 = legalHoldsExportAHoldDetails.legalHoldId;
        if ((str3 == str4 || str3.equals(str4)) && ((str = this.name) == (str2 = legalHoldsExportAHoldDetails.name) || str.equals(str2))) {
            String str5 = this.exportName;
            String str6 = legalHoldsExportAHoldDetails.exportName;
            if (str5 == str6) {
                return true;
            }
            if (str5 != null && str5.equals(str6)) {
                return true;
            }
        }
        return false;
    }

    public String getExportName() {
        return this.exportName;
    }

    public String getLegalHoldId() {
        return this.legalHoldId;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.legalHoldId, this.name, this.exportName});
    }

    public String toString() {
        return C3701a.f19969b.serialize((C3701a) this, false);
    }

    public String toStringMultiline() {
        return C3701a.f19969b.serialize((C3701a) this, true);
    }

    public LegalHoldsExportAHoldDetails(String str, String str2) {
        this(str, str2, null);
    }
}
