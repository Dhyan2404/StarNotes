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
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PaperDocAddCommentDetails {
    protected final String commentText;
    protected final String eventUuid;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperDocAddCommentDetails$a */
    /* loaded from: classes4.dex */
    public static class C3872a extends StructSerializer<PaperDocAddCommentDetails> {

        /* renamed from: b */
        public static final C3872a f20145b = new C3872a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperDocAddCommentDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("comment_text".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            PaperDocAddCommentDetails paperDocAddCommentDetails = new PaperDocAddCommentDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperDocAddCommentDetails, paperDocAddCommentDetails.toStringMultiline());
            return paperDocAddCommentDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperDocAddCommentDetails paperDocAddCommentDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperDocAddCommentDetails.eventUuid, jsonGenerator);
            if (paperDocAddCommentDetails.commentText != null) {
                jsonGenerator.writeFieldName("comment_text");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) paperDocAddCommentDetails.commentText, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperDocAddCommentDetails(String str, String str2) {
        if (str != null) {
            this.eventUuid = str;
            this.commentText = str2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'eventUuid' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PaperDocAddCommentDetails paperDocAddCommentDetails = (PaperDocAddCommentDetails) obj;
        String str = this.eventUuid;
        String str2 = paperDocAddCommentDetails.eventUuid;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.commentText;
            String str4 = paperDocAddCommentDetails.commentText;
            if (str3 == str4) {
                return true;
            }
            if (str3 != null && str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public String getCommentText() {
        return this.commentText;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.commentText});
    }

    public String toString() {
        return C3872a.f20145b.serialize((C3872a) this, false);
    }

    public String toStringMultiline() {
        return C3872a.f20145b.serialize((C3872a) this, true);
    }

    public PaperDocAddCommentDetails(String str) {
        this(str, null);
    }
}
