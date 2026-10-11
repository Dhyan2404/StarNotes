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
public class FileEditCommentDetails {
    protected final String commentText;
    protected final String previousCommentText;

    /* renamed from: com.dropbox.core.v2.teamlog.FileEditCommentDetails$a */
    /* loaded from: classes4.dex */
    public static class C3554a extends StructSerializer<FileEditCommentDetails> {

        /* renamed from: b */
        public static final C3554a f19813b = new C3554a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileEditCommentDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("previous_comment_text".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("comment_text".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"previous_comment_text\" missing.");
            }
            FileEditCommentDetails fileEditCommentDetails = new FileEditCommentDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileEditCommentDetails, fileEditCommentDetails.toStringMultiline());
            return fileEditCommentDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileEditCommentDetails fileEditCommentDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("previous_comment_text");
            StoneSerializers.string().serialize((StoneSerializer<String>) fileEditCommentDetails.previousCommentText, jsonGenerator);
            if (fileEditCommentDetails.commentText != null) {
                jsonGenerator.writeFieldName("comment_text");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileEditCommentDetails.commentText, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileEditCommentDetails(String str, String str2) {
        this.commentText = str2;
        if (str != null) {
            this.previousCommentText = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'previousCommentText' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileEditCommentDetails fileEditCommentDetails = (FileEditCommentDetails) obj;
        String str = this.previousCommentText;
        String str2 = fileEditCommentDetails.previousCommentText;
        if (str == str2 || str.equals(str2)) {
            String str3 = this.commentText;
            String str4 = fileEditCommentDetails.commentText;
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

    public String getPreviousCommentText() {
        return this.previousCommentText;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.commentText, this.previousCommentText});
    }

    public String toString() {
        return C3554a.f19813b.serialize((C3554a) this, false);
    }

    public String toStringMultiline() {
        return C3554a.f19813b.serialize((C3554a) this, true);
    }

    public FileEditCommentDetails(String str) {
        this(str, null);
    }
}
