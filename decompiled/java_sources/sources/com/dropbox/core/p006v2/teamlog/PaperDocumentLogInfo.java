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
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PaperDocumentLogInfo {
    protected final String docId;
    protected final String docTitle;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDocumentLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3914a extends StructSerializer<PaperDocumentLogInfo> {

        /* renamed from: b */
        public static final C3914a f20187b = new C3914a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocumentLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("doc_title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_title\" missing.");
            }
            PaperDocumentLogInfo paperDocumentLogInfo = new PaperDocumentLogInfo(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocumentLogInfo, paperDocumentLogInfo.toStringMultiline());
            return paperDocumentLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocumentLogInfo paperDocumentLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocumentLogInfo.docId, jsonGenerator);
            jsonGenerator.writeFieldName("doc_title");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocumentLogInfo.docTitle, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocumentLogInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'docId' is null");
        }
        this.docId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'docTitle' is null");
        }
        this.docTitle = str2;
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
        PaperDocumentLogInfo paperDocumentLogInfo = (PaperDocumentLogInfo) obj;
        String str3 = this.docId;
        String str4 = paperDocumentLogInfo.docId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.docTitle) == (str2 = paperDocumentLogInfo.docTitle) || str.equals(str2));
    }

    public String getDocId() {
        return this.docId;
    }

    public String getDocTitle() {
        return this.docTitle;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.docId, this.docTitle});
    }

    public String toString() {
        return C3914a.f20187b.serialize((C3914a) this, false);
    }

    public String toStringMultiline() {
        return C3914a.f20187b.serialize((C3914a) this, true);
    }
}
