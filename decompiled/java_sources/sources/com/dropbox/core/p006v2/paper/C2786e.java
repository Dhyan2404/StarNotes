package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.ImportFormat;
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

/* renamed from: com.dropbox.core.v2.paper.e */
/* loaded from: classes4.dex */
public class C2786e {

    /* renamed from: a */
    public final String f17635a;

    /* renamed from: b */
    public final ImportFormat f17636b;

    /* renamed from: com.dropbox.core.v2.paper.e$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2786e> {

        /* renamed from: b */
        public static final a f17637b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2786e deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ImportFormat importFormat = null;
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("import_format".equals(currentName)) {
                    importFormat = ImportFormat.C2741b.f17573b.deserialize(jsonParser);
                } else if ("parent_folder_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (importFormat == null) {
                throw new JsonParseException(jsonParser, "Required field \"import_format\" missing.");
            }
            C2786e c2786e = new C2786e(importFormat, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2786e, c2786e.m11421c());
            return c2786e;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2786e c2786e, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("import_format");
            ImportFormat.C2741b.f17573b.serialize(c2786e.f17636b, jsonGenerator);
            if (c2786e.f17635a != null) {
                jsonGenerator.writeFieldName("parent_folder_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) c2786e.f17635a, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2786e(ImportFormat importFormat, String str) {
        this.f17635a = str;
        if (importFormat != null) {
            this.f17636b = importFormat;
            return;
        }
        throw new IllegalArgumentException("Required value for 'importFormat' is null");
    }

    /* renamed from: a */
    public ImportFormat m11419a() {
        return this.f17636b;
    }

    /* renamed from: b */
    public String m11420b() {
        return this.f17635a;
    }

    /* renamed from: c */
    public String m11421c() {
        return a.f17637b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2786e c2786e = (C2786e) obj;
        ImportFormat importFormat = this.f17636b;
        ImportFormat importFormat2 = c2786e.f17636b;
        if (importFormat == importFormat2 || importFormat.equals(importFormat2)) {
            String str = this.f17635a;
            String str2 = c2786e.f17635a;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17635a, this.f17636b});
    }

    public String toString() {
        return a.f17637b.serialize((a) this, false);
    }

    public C2786e(ImportFormat importFormat) {
        this(importFormat, null);
    }
}
