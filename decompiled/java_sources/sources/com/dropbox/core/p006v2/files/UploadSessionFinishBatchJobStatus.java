package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.UploadSessionFinishBatchResult;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class UploadSessionFinishBatchJobStatus {
    public static final UploadSessionFinishBatchJobStatus IN_PROGRESS = new UploadSessionFinishBatchJobStatus().m11142b(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f17450a;

    /* renamed from: b */
    public UploadSessionFinishBatchResult f17451b;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishBatchJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2684a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17452a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17452a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17452a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishBatchJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2685b extends UnionSerializer<UploadSessionFinishBatchJobStatus> {

        /* renamed from: b */
        public static final C2685b f17453b = new C2685b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionFinishBatchJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UploadSessionFinishBatchJobStatus complete;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("in_progress".equals(readTag)) {
                complete = UploadSessionFinishBatchJobStatus.IN_PROGRESS;
            } else {
                if (!"complete".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                complete = UploadSessionFinishBatchJobStatus.complete(UploadSessionFinishBatchResult.C2688a.f17459b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2684a.f17452a[uploadSessionFinishBatchJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + uploadSessionFinishBatchJobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            UploadSessionFinishBatchResult.C2688a.f17459b.serialize(uploadSessionFinishBatchJobStatus.f17451b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static UploadSessionFinishBatchJobStatus complete(UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        if (uploadSessionFinishBatchResult != null) {
            return new UploadSessionFinishBatchJobStatus().m11143c(Tag.COMPLETE, uploadSessionFinishBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final UploadSessionFinishBatchJobStatus m11142b(Tag tag) {
        UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus = new UploadSessionFinishBatchJobStatus();
        uploadSessionFinishBatchJobStatus.f17450a = tag;
        return uploadSessionFinishBatchJobStatus;
    }

    /* renamed from: c */
    public final UploadSessionFinishBatchJobStatus m11143c(Tag tag, UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus = new UploadSessionFinishBatchJobStatus();
        uploadSessionFinishBatchJobStatus.f17450a = tag;
        uploadSessionFinishBatchJobStatus.f17451b = uploadSessionFinishBatchResult;
        return uploadSessionFinishBatchJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionFinishBatchJobStatus)) {
            return false;
        }
        UploadSessionFinishBatchJobStatus uploadSessionFinishBatchJobStatus = (UploadSessionFinishBatchJobStatus) obj;
        Tag tag = this.f17450a;
        if (tag != uploadSessionFinishBatchJobStatus.f17450a) {
            return false;
        }
        int i = C2684a.f17452a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        UploadSessionFinishBatchResult uploadSessionFinishBatchResult = this.f17451b;
        UploadSessionFinishBatchResult uploadSessionFinishBatchResult2 = uploadSessionFinishBatchJobStatus.f17451b;
        return uploadSessionFinishBatchResult == uploadSessionFinishBatchResult2 || uploadSessionFinishBatchResult.equals(uploadSessionFinishBatchResult2);
    }

    public UploadSessionFinishBatchResult getCompleteValue() {
        if (this.f17450a == Tag.COMPLETE) {
            return this.f17451b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17450a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17450a, this.f17451b});
    }

    public boolean isComplete() {
        return this.f17450a == Tag.COMPLETE;
    }

    public boolean isInProgress() {
        return this.f17450a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f17450a;
    }

    public String toString() {
        return C2685b.f17453b.serialize((C2685b) this, false);
    }

    public String toStringMultiline() {
        return C2685b.f17453b.serialize((C2685b) this, true);
    }
}
