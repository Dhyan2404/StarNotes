package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.PaperDownloadFormat;
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
public class PaperDocDownloadDetails {
    protected final String eventUuid;
    protected final PaperDownloadFormat exportFileFormat;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDocDownloadDetails$a */
    /* loaded from: classes4.dex */
    public static class C3884a extends StructSerializer<PaperDocDownloadDetails> {

        /* renamed from: b */
        public static final C3884a f20157b = new C3884a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocDownloadDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            PaperDownloadFormat paperDownloadFormat = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("export_file_format".equals(currentName)) {
                    paperDownloadFormat = PaperDownloadFormat.C3916b.f20189b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (paperDownloadFormat == null) {
                throw new JsonParseException(jsonParser, "Required field \"export_file_format\" missing.");
            }
            PaperDocDownloadDetails paperDocDownloadDetails = new PaperDocDownloadDetails(str2, paperDownloadFormat);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocDownloadDetails, paperDocDownloadDetails.toStringMultiline());
            return paperDocDownloadDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocDownloadDetails paperDocDownloadDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocDownloadDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("export_file_format");
            PaperDownloadFormat.C3916b.f20189b.serialize(paperDocDownloadDetails.exportFileFormat, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocDownloadDetails(String str, PaperDownloadFormat paperDownloadFormat) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (paperDownloadFormat == null) {
            throw new IllegalArgumentException("Required value for 'exportFileFormat' is null");
        }
        this.exportFileFormat = paperDownloadFormat;
    }

    public boolean equals(Object obj) {
        PaperDownloadFormat paperDownloadFormat;
        PaperDownloadFormat paperDownloadFormat2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperDocDownloadDetails paperDocDownloadDetails = (PaperDocDownloadDetails) obj;
        String str = this.eventUuid;
        String str2 = paperDocDownloadDetails.eventUuid;
        return (str == str2 || str.equals(str2)) && ((paperDownloadFormat = this.exportFileFormat) == (paperDownloadFormat2 = paperDocDownloadDetails.exportFileFormat) || paperDownloadFormat.equals(paperDownloadFormat2));
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public PaperDownloadFormat getExportFileFormat() {
        return this.exportFileFormat;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.exportFileFormat});
    }

    public String toString() {
        return C3884a.f20157b.serialize((C3884a) this, false);
    }

    public String toStringMultiline() {
        return C3884a.f20157b.serialize((C3884a) this, true);
    }
}
