package com.dropbox.core.p006v2.paper;

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

/* loaded from: classes4.dex */
public class PaperDocCreateUpdateResult {
    protected final String docId;
    protected final long revision;
    protected final String title;

    /* renamed from: com.dropbox.core.v2.paper.PaperDocCreateUpdateResult$a */
    /* loaded from: classes4.dex */
    public static class C2762a extends StructSerializer<PaperDocCreateUpdateResult> {

        /* renamed from: b */
        public static final C2762a f17604b = new C2762a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocCreateUpdateResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("revision".equals(currentName)) {
                    l = StoneSerializers.int64().deserialize(jsonParser);
                } else if ("title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"revision\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"title\" missing.");
            }
            PaperDocCreateUpdateResult paperDocCreateUpdateResult = new PaperDocCreateUpdateResult(str2, l.longValue(), str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocCreateUpdateResult, paperDocCreateUpdateResult.toStringMultiline());
            return paperDocCreateUpdateResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocCreateUpdateResult paperDocCreateUpdateResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocCreateUpdateResult.docId, jsonGenerator);
            jsonGenerator.writeFieldName("revision");
            StoneSerializers.int64().serialize((StoneSerializer<Long>) Long.valueOf(paperDocCreateUpdateResult.revision), jsonGenerator);
            jsonGenerator.writeFieldName("title");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocCreateUpdateResult.title, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocCreateUpdateResult(String str, long j, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'docId' is null");
        }
        this.docId = str;
        this.revision = j;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        this.title = str2;
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
        PaperDocCreateUpdateResult paperDocCreateUpdateResult = (PaperDocCreateUpdateResult) obj;
        String str3 = this.docId;
        String str4 = paperDocCreateUpdateResult.docId;
        return (str3 == str4 || str3.equals(str4)) && this.revision == paperDocCreateUpdateResult.revision && ((str = this.title) == (str2 = paperDocCreateUpdateResult.title) || str.equals(str2));
    }

    public String getDocId() {
        return this.docId;
    }

    public long getRevision() {
        return this.revision;
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.docId, Long.valueOf(this.revision), this.title});
    }

    public String toString() {
        return C2762a.f17604b.serialize((C2762a) this, false);
    }

    public String toStringMultiline() {
        return C2762a.f17604b.serialize((C2762a) this, true);
    }
}
