package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.DeleteBatchError;
import com.dropbox.core.p006v2.files.DeleteBatchResult;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class DeleteBatchJobStatus {
    public static final DeleteBatchJobStatus IN_PROGRESS = new DeleteBatchJobStatus().m10691c(Tag.IN_PROGRESS);
    public static final DeleteBatchJobStatus OTHER = new DeleteBatchJobStatus().m10691c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17095a;

    /* renamed from: b */
    public DeleteBatchResult f17096b;

    /* renamed from: c */
    public DeleteBatchError f17097c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2516a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17098a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17098a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17098a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17098a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17098a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2517b extends UnionSerializer<DeleteBatchJobStatus> {

        /* renamed from: b */
        public static final C2517b f17099b = new C2517b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteBatchJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DeleteBatchJobStatus deleteBatchJobStatus;
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
                deleteBatchJobStatus = DeleteBatchJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                deleteBatchJobStatus = DeleteBatchJobStatus.complete(DeleteBatchResult.C2520a.f17105b.deserialize(jsonParser, true));
            } else if ("failed".equals(readTag)) {
                StoneSerializer.expectField("failed", jsonParser);
                deleteBatchJobStatus = DeleteBatchJobStatus.failed(DeleteBatchError.C2515b.f17094b.deserialize(jsonParser));
            } else {
                deleteBatchJobStatus = DeleteBatchJobStatus.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deleteBatchJobStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteBatchJobStatus deleteBatchJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2516a.f17098a[deleteBatchJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                DeleteBatchResult.C2520a.f17105b.serialize(deleteBatchJobStatus.f17096b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            DeleteBatchError.C2515b.f17094b.serialize(deleteBatchJobStatus.f17097c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static DeleteBatchJobStatus complete(DeleteBatchResult deleteBatchResult) {
        if (deleteBatchResult != null) {
            return new DeleteBatchJobStatus().m10692d(Tag.COMPLETE, deleteBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static DeleteBatchJobStatus failed(DeleteBatchError deleteBatchError) {
        if (deleteBatchError != null) {
            return new DeleteBatchJobStatus().m10693e(Tag.FAILED, deleteBatchError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final DeleteBatchJobStatus m10691c(Tag tag) {
        DeleteBatchJobStatus deleteBatchJobStatus = new DeleteBatchJobStatus();
        deleteBatchJobStatus.f17095a = tag;
        return deleteBatchJobStatus;
    }

    /* renamed from: d */
    public final DeleteBatchJobStatus m10692d(Tag tag, DeleteBatchResult deleteBatchResult) {
        DeleteBatchJobStatus deleteBatchJobStatus = new DeleteBatchJobStatus();
        deleteBatchJobStatus.f17095a = tag;
        deleteBatchJobStatus.f17096b = deleteBatchResult;
        return deleteBatchJobStatus;
    }

    /* renamed from: e */
    public final DeleteBatchJobStatus m10693e(Tag tag, DeleteBatchError deleteBatchError) {
        DeleteBatchJobStatus deleteBatchJobStatus = new DeleteBatchJobStatus();
        deleteBatchJobStatus.f17095a = tag;
        deleteBatchJobStatus.f17097c = deleteBatchError;
        return deleteBatchJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteBatchJobStatus)) {
            return false;
        }
        DeleteBatchJobStatus deleteBatchJobStatus = (DeleteBatchJobStatus) obj;
        Tag tag = this.f17095a;
        if (tag != deleteBatchJobStatus.f17095a) {
            return false;
        }
        int i = C2516a.f17098a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            DeleteBatchResult deleteBatchResult = this.f17096b;
            DeleteBatchResult deleteBatchResult2 = deleteBatchJobStatus.f17096b;
            return deleteBatchResult == deleteBatchResult2 || deleteBatchResult.equals(deleteBatchResult2);
        }
        if (i != 3) {
            return i == 4;
        }
        DeleteBatchError deleteBatchError = this.f17097c;
        DeleteBatchError deleteBatchError2 = deleteBatchJobStatus.f17097c;
        return deleteBatchError == deleteBatchError2 || deleteBatchError.equals(deleteBatchError2);
    }

    public DeleteBatchResult getCompleteValue() {
        if (this.f17095a == Tag.COMPLETE) {
            return this.f17096b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17095a.name());
    }

    public DeleteBatchError getFailedValue() {
        if (this.f17095a == Tag.FAILED) {
            return this.f17097c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f17095a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17095a, this.f17096b, this.f17097c});
    }

    public boolean isComplete() {
        return this.f17095a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f17095a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f17095a == Tag.IN_PROGRESS;
    }

    public boolean isOther() {
        return this.f17095a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17095a;
    }

    public String toString() {
        return C2517b.f17099b.serialize((C2517b) this, false);
    }

    public String toStringMultiline() {
        return C2517b.f17099b.serialize((C2517b) this, true);
    }
}
