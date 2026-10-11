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
public class LegalHoldsExportDownloadedDetails {
    protected final String exportName;
    protected final String fileName;
    protected final String legalHoldId;
    protected final String name;
    protected final String part;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String exportName;
        protected String fileName;
        protected final String legalHoldId;
        protected final String name;
        protected String part;

        public Builder(String str, String str2, String str3) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'legalHoldId' is null");
            }
            this.legalHoldId = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.name = str2;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'exportName' is null");
            }
            this.exportName = str3;
            this.part = null;
            this.fileName = null;
        }

        public LegalHoldsExportDownloadedDetails build() {
            return new LegalHoldsExportDownloadedDetails(this.legalHoldId, this.name, this.exportName, this.part, this.fileName);
        }

        public Builder withFileName(String str) {
            this.fileName = str;
            return this;
        }

        public Builder withPart(String str) {
            this.part = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.LegalHoldsExportDownloadedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3705a extends StructSerializer<LegalHoldsExportDownloadedDetails> {

        /* renamed from: b */
        public static final C3705a f19973b = new C3705a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsExportDownloadedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("legal_hold_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("export_name".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("part".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("file_name".equals(currentName)) {
                    str6 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
                throw new JsonParseException(jsonParser, "Required field \"export_name\" missing.");
            }
            LegalHoldsExportDownloadedDetails legalHoldsExportDownloadedDetails = new LegalHoldsExportDownloadedDetails(str2, str3, str4, str5, str6);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsExportDownloadedDetails, legalHoldsExportDownloadedDetails.toStringMultiline());
            return legalHoldsExportDownloadedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsExportDownloadedDetails legalHoldsExportDownloadedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("legal_hold_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsExportDownloadedDetails.legalHoldId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsExportDownloadedDetails.name, jsonGenerator);
            jsonGenerator.writeFieldName("export_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsExportDownloadedDetails.exportName, jsonGenerator);
            if (legalHoldsExportDownloadedDetails.part != null) {
                jsonGenerator.writeFieldName("part");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsExportDownloadedDetails.part, jsonGenerator);
            }
            if (legalHoldsExportDownloadedDetails.fileName != null) {
                jsonGenerator.writeFieldName("file_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsExportDownloadedDetails.fileName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsExportDownloadedDetails(String str, String str2, String str3, String str4, String str5) {
        if (str != null) {
            this.legalHoldId = str;
            if (str2 != null) {
                this.name = str2;
                if (str3 != null) {
                    this.exportName = str3;
                    this.part = str4;
                    this.fileName = str5;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'exportName' is null");
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        throw new IllegalArgumentException("Required value for 'legalHoldId' is null");
    }

    public static Builder newBuilder(String str, String str2, String str3) {
        return new Builder(str, str2, str3);
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
        LegalHoldsExportDownloadedDetails legalHoldsExportDownloadedDetails = (LegalHoldsExportDownloadedDetails) obj;
        String str7 = this.legalHoldId;
        String str8 = legalHoldsExportDownloadedDetails.legalHoldId;
        if ((str7 == str8 || str7.equals(str8)) && (((str = this.name) == (str2 = legalHoldsExportDownloadedDetails.name) || str.equals(str2)) && (((str3 = this.exportName) == (str4 = legalHoldsExportDownloadedDetails.exportName) || str3.equals(str4)) && ((str5 = this.part) == (str6 = legalHoldsExportDownloadedDetails.part) || (str5 != null && str5.equals(str6)))))) {
            String str9 = this.fileName;
            String str10 = legalHoldsExportDownloadedDetails.fileName;
            if (str9 == str10) {
                return true;
            }
            if (str9 != null && str9.equals(str10)) {
                return true;
            }
        }
        return false;
    }

    public String getExportName() {
        return this.exportName;
    }

    public String getFileName() {
        return this.fileName;
    }

    public String getLegalHoldId() {
        return this.legalHoldId;
    }

    public String getName() {
        return this.name;
    }

    public String getPart() {
        return this.part;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.legalHoldId, this.name, this.exportName, this.part, this.fileName});
    }

    public String toString() {
        return C3705a.f19973b.serialize((C3705a) this, false);
    }

    public String toStringMultiline() {
        return C3705a.f19973b.serialize((C3705a) this, true);
    }

    public LegalHoldsExportDownloadedDetails(String str, String str2, String str3) {
        this(str, str2, str3, null, null);
    }
}
