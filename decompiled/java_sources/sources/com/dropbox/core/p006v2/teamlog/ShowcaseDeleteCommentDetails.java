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
public class ShowcaseDeleteCommentDetails {
    protected final String commentText;
    protected final String eventUuid;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseDeleteCommentDetails$a */
    /* loaded from: classes4.dex */
    public static class C4170a extends StructSerializer<ShowcaseDeleteCommentDetails> {

        /* renamed from: b */
        public static final C4170a f20446b = new C4170a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseDeleteCommentDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            ShowcaseDeleteCommentDetails showcaseDeleteCommentDetails = new ShowcaseDeleteCommentDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(showcaseDeleteCommentDetails, showcaseDeleteCommentDetails.toStringMultiline());
            return showcaseDeleteCommentDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseDeleteCommentDetails showcaseDeleteCommentDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) showcaseDeleteCommentDetails.eventUuid, jsonGenerator);
            if (showcaseDeleteCommentDetails.commentText != null) {
                jsonGenerator.writeFieldName("comment_text");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) showcaseDeleteCommentDetails.commentText, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShowcaseDeleteCommentDetails(String str, String str2) {
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
        ShowcaseDeleteCommentDetails showcaseDeleteCommentDetails = (ShowcaseDeleteCommentDetails) obj;
        String str = this.eventUuid;
        String str2 = showcaseDeleteCommentDetails.eventUuid;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.commentText;
            String str4 = showcaseDeleteCommentDetails.commentText;
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
        return C4170a.f20446b.serialize((C4170a) this, false);
    }

    public String toStringMultiline() {
        return C4170a.f20446b.serialize((C4170a) this, true);
    }

    public ShowcaseDeleteCommentDetails(String str) {
        this(str, null);
    }
}
