package com.dropbox.core.p006v2.files;

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
public class ExportInfo {
    protected final String exportAs;

    /* renamed from: com.dropbox.core.v2.files.ExportInfo$a */
    /* loaded from: classes4.dex */
    public static class C2535a extends StructSerializer<ExportInfo> {

        /* renamed from: b */
        public static final C2535a f17139b = new C2535a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExportInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("export_as".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ExportInfo exportInfo = new ExportInfo(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(exportInfo, exportInfo.toStringMultiline());
            return exportInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExportInfo exportInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (exportInfo.exportAs != null) {
                jsonGenerator.writeFieldName("export_as");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) exportInfo.exportAs, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExportInfo(String str) {
        this.exportAs = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.exportAs;
        String str2 = ((ExportInfo) obj).exportAs;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getExportAs() {
        return this.exportAs;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.exportAs});
    }

    public String toString() {
        return C2535a.f17139b.serialize((C2535a) this, false);
    }

    public String toStringMultiline() {
        return C2535a.f17139b.serialize((C2535a) this, true);
    }

    public ExportInfo() {
        this(null);
    }
}
