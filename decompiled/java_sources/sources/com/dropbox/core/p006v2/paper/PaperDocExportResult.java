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
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PaperDocExportResult {
    protected final String mimeType;
    protected final String owner;
    protected final long revision;
    protected final String title;

    /* renamed from: com.dropbox.core.v2.paper.PaperDocExportResult$a */
    /* loaded from: classes4.dex */
    public static class C2763a extends StructSerializer<PaperDocExportResult> {

        /* renamed from: b */
        public static final C2763a f17605b = new C2763a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocExportResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("owner".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("revision".equals(currentName)) {
                    l = StoneSerializers.int64().deserialize(jsonParser);
                } else if (DefaultDownloadIndex.f24934i.equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"owner\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"title\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"revision\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"mime_type\" missing.");
            }
            PaperDocExportResult paperDocExportResult = new PaperDocExportResult(str2, str3, l.longValue(), str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocExportResult, paperDocExportResult.toStringMultiline());
            return paperDocExportResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocExportResult paperDocExportResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("owner");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocExportResult.owner, jsonGenerator);
            jsonGenerator.writeFieldName("title");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocExportResult.title, jsonGenerator);
            jsonGenerator.writeFieldName("revision");
            StoneSerializers.int64().serialize((StoneSerializer<Long>) Long.valueOf(paperDocExportResult.revision), jsonGenerator);
            jsonGenerator.writeFieldName(DefaultDownloadIndex.f24934i);
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocExportResult.mimeType, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocExportResult(String str, String str2, long j, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'owner' is null");
        }
        this.owner = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'title' is null");
        }
        this.title = str2;
        this.revision = j;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'mimeType' is null");
        }
        this.mimeType = str3;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperDocExportResult paperDocExportResult = (PaperDocExportResult) obj;
        String str5 = this.owner;
        String str6 = paperDocExportResult.owner;
        return (str5 == str6 || str5.equals(str6)) && ((str = this.title) == (str2 = paperDocExportResult.title) || str.equals(str2)) && this.revision == paperDocExportResult.revision && ((str3 = this.mimeType) == (str4 = paperDocExportResult.mimeType) || str3.equals(str4));
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getOwner() {
        return this.owner;
    }

    public long getRevision() {
        return this.revision;
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.owner, this.title, Long.valueOf(this.revision), this.mimeType});
    }

    public String toString() {
        return C2763a.f17605b.serialize((C2763a) this, false);
    }

    public String toStringMultiline() {
        return C2763a.f17605b.serialize((C2763a) this, true);
    }
}
