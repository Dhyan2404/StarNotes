package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.ExportFormat;
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
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.paper.f */
/* loaded from: classes4.dex */
public class C2787f extends C2790i {

    /* renamed from: b */
    public final ExportFormat f17638b;

    /* renamed from: com.dropbox.core.v2.paper.f$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2787f> {

        /* renamed from: b */
        public static final a f17639b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2787f deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            ExportFormat exportFormat = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("export_format".equals(currentName)) {
                    exportFormat = ExportFormat.C2735b.f17564b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (exportFormat == null) {
                throw new JsonParseException(jsonParser, "Required field \"export_format\" missing.");
            }
            C2787f c2787f = new C2787f(str2, exportFormat);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2787f, c2787f.mo11293b());
            return c2787f;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2787f c2787f, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) c2787f.f17646a, jsonGenerator);
            jsonGenerator.writeFieldName("export_format");
            ExportFormat.C2735b.f17564b.serialize(c2787f.f17638b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2787f(String str, ExportFormat exportFormat) {
        super(str);
        if (exportFormat == null) {
            throw new IllegalArgumentException("Required value for 'exportFormat' is null");
        }
        this.f17638b = exportFormat;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: a */
    public String mo11292a() {
        return this.f17646a;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: b */
    public String mo11293b() {
        return a.f17639b.serialize((a) this, true);
    }

    /* renamed from: c */
    public ExportFormat m11424c() {
        return this.f17638b;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public boolean equals(Object obj) {
        ExportFormat exportFormat;
        ExportFormat exportFormat2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2787f c2787f = (C2787f) obj;
        String str = this.f17646a;
        String str2 = c2787f.f17646a;
        return (str == str2 || str.equals(str2)) && ((exportFormat = this.f17638b) == (exportFormat2 = c2787f.f17638b) || exportFormat.equals(exportFormat2));
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17638b});
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public String toString() {
        return a.f17639b.serialize((a) this, false);
    }
}
