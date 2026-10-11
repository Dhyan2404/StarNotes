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
public class ExportMetadata {
    protected final String exportHash;
    protected final String name;
    protected final long size;

    /* renamed from: com.dropbox.core.v2.files.ExportMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2536a extends StructSerializer<ExportMetadata> {

        /* renamed from: b */
        public static final C2536a f17140b = new C2536a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExportMetadata deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("size".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("export_hash".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"size\" missing.");
            }
            ExportMetadata exportMetadata = new ExportMetadata(str2, l.longValue(), str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(exportMetadata, exportMetadata.toStringMultiline());
            return exportMetadata;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExportMetadata exportMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) exportMetadata.name, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(exportMetadata.size), jsonGenerator);
            if (exportMetadata.exportHash != null) {
                jsonGenerator.writeFieldName("export_hash");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) exportMetadata.exportHash, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExportMetadata(String str, long j, String str2) {
        if (str != null) {
            this.name = str;
            this.size = j;
            if (str2 != null) {
                if (str2.length() >= 64) {
                    if (str2.length() > 64) {
                        throw new IllegalArgumentException("String 'exportHash' is longer than 64");
                    }
                } else {
                    throw new IllegalArgumentException("String 'exportHash' is shorter than 64");
                }
            }
            this.exportHash = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ExportMetadata exportMetadata = (ExportMetadata) obj;
        String str = this.name;
        String str2 = exportMetadata.name;
        if ((str == str2 || str.equals(str2)) && this.size == exportMetadata.size) {
            String str3 = this.exportHash;
            String str4 = exportMetadata.exportHash;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getExportHash() {
        return this.exportHash;
    }

    public String getName() {
        return this.name;
    }

    public long getSize() {
        return this.size;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, Long.valueOf(this.size), this.exportHash});
    }

    public String toString() {
        return C2536a.f17140b.serialize((C2536a) this, false);
    }

    public String toStringMultiline() {
        return C2536a.f17140b.serialize((C2536a) this, true);
    }

    public ExportMetadata(String str, long j) {
        this(str, j, null);
    }
}
