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
public class FileAddCommentDetails {
    protected final String commentText;

    /* renamed from: com.dropbox.core.v2.teamlog.FileAddCommentDetails$a */
    /* loaded from: classes4.dex */
    public static class C3534a extends StructSerializer<FileAddCommentDetails> {

        /* renamed from: b */
        public static final C3534a f19793b = new C3534a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileAddCommentDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("comment_text".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            FileAddCommentDetails fileAddCommentDetails = new FileAddCommentDetails(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileAddCommentDetails, fileAddCommentDetails.toStringMultiline());
            return fileAddCommentDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileAddCommentDetails fileAddCommentDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (fileAddCommentDetails.commentText != null) {
                jsonGenerator.writeFieldName("comment_text");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) fileAddCommentDetails.commentText, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileAddCommentDetails(String str) {
        this.commentText = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.commentText;
        String str2 = ((FileAddCommentDetails) obj).commentText;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getCommentText() {
        return this.commentText;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.commentText});
    }

    public String toString() {
        return C3534a.f19793b.serialize((C3534a) this, false);
    }

    public String toStringMultiline() {
        return C3534a.f19793b.serialize((C3534a) this, true);
    }

    public FileAddCommentDetails() {
        this(null);
    }
}
