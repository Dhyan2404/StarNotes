package com.dropbox.core.p006v2.clouddocs;

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
public class RenameArg {

    /* renamed from: a */
    public final String f16853a;

    /* renamed from: b */
    public final String f16854b;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String fileId = "\"\"";
        protected String title = "\"\"";

        public RenameArg build() {
            return new RenameArg(this.fileId, this.title);
        }

        public Builder withFileId(String str) {
            if (str != null) {
                this.fileId = str;
            } else {
                this.fileId = "\"\"";
            }
            return this;
        }

        public Builder withTitle(String str) {
            if (str != null) {
                this.title = str;
            } else {
                this.title = "\"\"";
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.RenameArg$a */
    /* loaded from: classes4.dex */
    public static class C2402a extends StructSerializer<RenameArg> {

        /* renamed from: b */
        public static final C2402a f16855b = new C2402a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RenameArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = "\"\"";
            String str3 = "\"\"";
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            RenameArg renameArg = new RenameArg(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(renameArg, renameArg.m10307d());
            return renameArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RenameArg renameArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) renameArg.f16853a, jsonGenerator);
            jsonGenerator.writeFieldName("title");
            StoneSerializers.string().serialize((StoneSerializer<String>) renameArg.f16854b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RenameArg(String str, String str2) {
        if (str != null) {
            this.f16853a = str;
            if (str2 != null) {
                this.f16854b = str2;
                return;
            }
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        throw new IllegalArgumentException("Required value for 'fileId' is null");
    }

    /* renamed from: c */
    public static Builder m10304c() {
        return new Builder();
    }

    /* renamed from: a */
    public String m10305a() {
        return this.f16853a;
    }

    /* renamed from: b */
    public String m10306b() {
        return this.f16854b;
    }

    /* renamed from: d */
    public String m10307d() {
        return C2402a.f16855b.serialize((C2402a) this, true);
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
        RenameArg renameArg = (RenameArg) obj;
        String str3 = this.f16853a;
        String str4 = renameArg.f16853a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f16854b) == (str2 = renameArg.f16854b) || str.equals(str2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16853a, this.f16854b});
    }

    public String toString() {
        return C2402a.f16855b.serialize((C2402a) this, false);
    }

    public RenameArg() {
        this("\"\"", "\"\"");
    }
}
