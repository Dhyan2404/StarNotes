package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.CommitInfo;
import com.dropbox.core.p006v2.files.UploadSessionCursor;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class UploadSessionFinishArg {
    protected final CommitInfo commit;
    protected final UploadSessionCursor cursor;

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishArg$a */
    /* loaded from: classes4.dex */
    public static class C2683a extends StructSerializer<UploadSessionFinishArg> {

        /* renamed from: b */
        public static final C2683a f17449b = new C2683a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionFinishArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            UploadSessionCursor uploadSessionCursor = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            CommitInfo commitInfo = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("cursor".equals(currentName)) {
                    uploadSessionCursor = UploadSessionCursor.C2682a.f17448b.deserialize(jsonParser);
                } else if ("commit".equals(currentName)) {
                    commitInfo = CommitInfo.C2495a.f17042b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (uploadSessionCursor == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (commitInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"commit\" missing.");
            }
            UploadSessionFinishArg uploadSessionFinishArg = new UploadSessionFinishArg(uploadSessionCursor, commitInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(uploadSessionFinishArg, uploadSessionFinishArg.toStringMultiline());
            return uploadSessionFinishArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionFinishArg uploadSessionFinishArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("cursor");
            UploadSessionCursor.C2682a.f17448b.serialize((UploadSessionCursor.C2682a) uploadSessionFinishArg.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("commit");
            CommitInfo.C2495a.f17042b.serialize((CommitInfo.C2495a) uploadSessionFinishArg.commit, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UploadSessionFinishArg(UploadSessionCursor uploadSessionCursor, CommitInfo commitInfo) {
        if (uploadSessionCursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = uploadSessionCursor;
        if (commitInfo == null) {
            throw new IllegalArgumentException("Required value for 'commit' is null");
        }
        this.commit = commitInfo;
    }

    public boolean equals(Object obj) {
        CommitInfo commitInfo;
        CommitInfo commitInfo2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UploadSessionFinishArg uploadSessionFinishArg = (UploadSessionFinishArg) obj;
        UploadSessionCursor uploadSessionCursor = this.cursor;
        UploadSessionCursor uploadSessionCursor2 = uploadSessionFinishArg.cursor;
        return (uploadSessionCursor == uploadSessionCursor2 || uploadSessionCursor.equals(uploadSessionCursor2)) && ((commitInfo = this.commit) == (commitInfo2 = uploadSessionFinishArg.commit) || commitInfo.equals(commitInfo2));
    }

    public CommitInfo getCommit() {
        return this.commit;
    }

    public UploadSessionCursor getCursor() {
        return this.cursor;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.cursor, this.commit});
    }

    public String toString() {
        return C2683a.f17449b.serialize((C2683a) this, false);
    }

    public String toStringMultiline() {
        return C2683a.f17449b.serialize((C2683a) this, true);
    }
}
