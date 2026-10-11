package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.ImportFormat;
import com.dropbox.core.p006v2.paper.PaperDocUpdatePolicy;
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

/* renamed from: com.dropbox.core.v2.paper.h */
/* loaded from: classes4.dex */
public class C2789h extends C2790i {

    /* renamed from: b */
    public final PaperDocUpdatePolicy f17642b;

    /* renamed from: c */
    public final long f17643c;

    /* renamed from: d */
    public final ImportFormat f17644d;

    /* renamed from: com.dropbox.core.v2.paper.h$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2789h> {

        /* renamed from: b */
        public static final a f17645b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2789h deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
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
            PaperDocUpdatePolicy paperDocUpdatePolicy = null;
            ImportFormat importFormat = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("doc_update_policy".equals(currentName)) {
                    paperDocUpdatePolicy = PaperDocUpdatePolicy.C2769b.f17611b.deserialize(jsonParser);
                } else if ("revision".equals(currentName)) {
                    l = StoneSerializers.int64().deserialize(jsonParser);
                } else if ("import_format".equals(currentName)) {
                    importFormat = ImportFormat.C2741b.f17573b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (paperDocUpdatePolicy == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_update_policy\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"revision\" missing.");
            }
            if (importFormat == null) {
                throw new JsonParseException(jsonParser, "Required field \"import_format\" missing.");
            }
            C2789h c2789h = new C2789h(str2, paperDocUpdatePolicy, l.longValue(), importFormat);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2789h, c2789h.mo11293b());
            return c2789h;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2789h c2789h, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) c2789h.f17646a, jsonGenerator);
            jsonGenerator.writeFieldName("doc_update_policy");
            PaperDocUpdatePolicy.C2769b.f17611b.serialize(c2789h.f17642b, jsonGenerator);
            jsonGenerator.writeFieldName("revision");
            StoneSerializers.int64().serialize((StoneSerializer<Long>) Long.valueOf(c2789h.f17643c), jsonGenerator);
            jsonGenerator.writeFieldName("import_format");
            ImportFormat.C2741b.f17573b.serialize(c2789h.f17644d, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2789h(String str, PaperDocUpdatePolicy paperDocUpdatePolicy, long j, ImportFormat importFormat) {
        super(str);
        if (paperDocUpdatePolicy == null) {
            throw new IllegalArgumentException("Required value for 'docUpdatePolicy' is null");
        }
        this.f17642b = paperDocUpdatePolicy;
        this.f17643c = j;
        if (importFormat == null) {
            throw new IllegalArgumentException("Required value for 'importFormat' is null");
        }
        this.f17644d = importFormat;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: a */
    public String mo11292a() {
        return this.f17646a;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: b */
    public String mo11293b() {
        return a.f17645b.serialize((a) this, true);
    }

    /* renamed from: c */
    public PaperDocUpdatePolicy m11430c() {
        return this.f17642b;
    }

    /* renamed from: d */
    public ImportFormat m11431d() {
        return this.f17644d;
    }

    /* renamed from: e */
    public long m11432e() {
        return this.f17643c;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public boolean equals(Object obj) {
        PaperDocUpdatePolicy paperDocUpdatePolicy;
        PaperDocUpdatePolicy paperDocUpdatePolicy2;
        ImportFormat importFormat;
        ImportFormat importFormat2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2789h c2789h = (C2789h) obj;
        String str = this.f17646a;
        String str2 = c2789h.f17646a;
        return (str == str2 || str.equals(str2)) && ((paperDocUpdatePolicy = this.f17642b) == (paperDocUpdatePolicy2 = c2789h.f17642b) || paperDocUpdatePolicy.equals(paperDocUpdatePolicy2)) && this.f17643c == c2789h.f17643c && ((importFormat = this.f17644d) == (importFormat2 = c2789h.f17644d) || importFormat.equals(importFormat2));
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17642b, Long.valueOf(this.f17643c), this.f17644d});
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public String toString() {
        return a.f17645b.serialize((a) this, false);
    }
}
