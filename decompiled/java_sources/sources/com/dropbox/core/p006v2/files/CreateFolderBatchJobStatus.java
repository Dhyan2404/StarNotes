package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.CreateFolderBatchError;
import com.dropbox.core.p006v2.files.CreateFolderBatchResult;
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
public final class CreateFolderBatchJobStatus {
    public static final CreateFolderBatchJobStatus IN_PROGRESS = new CreateFolderBatchJobStatus().m10588c(Tag.IN_PROGRESS);
    public static final CreateFolderBatchJobStatus OTHER = new CreateFolderBatchJobStatus().m10588c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17060a;

    /* renamed from: b */
    public CreateFolderBatchResult f17061b;

    /* renamed from: c */
    public CreateFolderBatchError f17062c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2500a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17063a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17063a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17063a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17063a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17063a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2501b extends UnionSerializer<CreateFolderBatchJobStatus> {

        /* renamed from: b */
        public static final C2501b f17064b = new C2501b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFolderBatchJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CreateFolderBatchJobStatus createFolderBatchJobStatus;
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
                createFolderBatchJobStatus = CreateFolderBatchJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                createFolderBatchJobStatus = CreateFolderBatchJobStatus.complete(CreateFolderBatchResult.C2504a.f17070b.deserialize(jsonParser, true));
            } else if ("failed".equals(readTag)) {
                StoneSerializer.expectField("failed", jsonParser);
                createFolderBatchJobStatus = CreateFolderBatchJobStatus.failed(CreateFolderBatchError.C2499b.f17059b.deserialize(jsonParser));
            } else {
                createFolderBatchJobStatus = CreateFolderBatchJobStatus.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return createFolderBatchJobStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFolderBatchJobStatus createFolderBatchJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2500a.f17063a[createFolderBatchJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                CreateFolderBatchResult.C2504a.f17070b.serialize(createFolderBatchJobStatus.f17061b, jsonGenerator, true);
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
            CreateFolderBatchError.C2499b.f17059b.serialize(createFolderBatchJobStatus.f17062c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static CreateFolderBatchJobStatus complete(CreateFolderBatchResult createFolderBatchResult) {
        if (createFolderBatchResult != null) {
            return new CreateFolderBatchJobStatus().m10589d(Tag.COMPLETE, createFolderBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static CreateFolderBatchJobStatus failed(CreateFolderBatchError createFolderBatchError) {
        if (createFolderBatchError != null) {
            return new CreateFolderBatchJobStatus().m10590e(Tag.FAILED, createFolderBatchError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final CreateFolderBatchJobStatus m10588c(Tag tag) {
        CreateFolderBatchJobStatus createFolderBatchJobStatus = new CreateFolderBatchJobStatus();
        createFolderBatchJobStatus.f17060a = tag;
        return createFolderBatchJobStatus;
    }

    /* renamed from: d */
    public final CreateFolderBatchJobStatus m10589d(Tag tag, CreateFolderBatchResult createFolderBatchResult) {
        CreateFolderBatchJobStatus createFolderBatchJobStatus = new CreateFolderBatchJobStatus();
        createFolderBatchJobStatus.f17060a = tag;
        createFolderBatchJobStatus.f17061b = createFolderBatchResult;
        return createFolderBatchJobStatus;
    }

    /* renamed from: e */
    public final CreateFolderBatchJobStatus m10590e(Tag tag, CreateFolderBatchError createFolderBatchError) {
        CreateFolderBatchJobStatus createFolderBatchJobStatus = new CreateFolderBatchJobStatus();
        createFolderBatchJobStatus.f17060a = tag;
        createFolderBatchJobStatus.f17062c = createFolderBatchError;
        return createFolderBatchJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateFolderBatchJobStatus)) {
            return false;
        }
        CreateFolderBatchJobStatus createFolderBatchJobStatus = (CreateFolderBatchJobStatus) obj;
        Tag tag = this.f17060a;
        if (tag != createFolderBatchJobStatus.f17060a) {
            return false;
        }
        int i = C2500a.f17063a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            CreateFolderBatchResult createFolderBatchResult = this.f17061b;
            CreateFolderBatchResult createFolderBatchResult2 = createFolderBatchJobStatus.f17061b;
            return createFolderBatchResult == createFolderBatchResult2 || createFolderBatchResult.equals(createFolderBatchResult2);
        }
        if (i != 3) {
            return i == 4;
        }
        CreateFolderBatchError createFolderBatchError = this.f17062c;
        CreateFolderBatchError createFolderBatchError2 = createFolderBatchJobStatus.f17062c;
        return createFolderBatchError == createFolderBatchError2 || createFolderBatchError.equals(createFolderBatchError2);
    }

    public CreateFolderBatchResult getCompleteValue() {
        if (this.f17060a == Tag.COMPLETE) {
            return this.f17061b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17060a.name());
    }

    public CreateFolderBatchError getFailedValue() {
        if (this.f17060a == Tag.FAILED) {
            return this.f17062c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f17060a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17060a, this.f17061b, this.f17062c});
    }

    public boolean isComplete() {
        return this.f17060a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f17060a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f17060a == Tag.IN_PROGRESS;
    }

    public boolean isOther() {
        return this.f17060a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17060a;
    }

    public String toString() {
        return C2501b.f17064b.serialize((C2501b) this, false);
    }

    public String toStringMultiline() {
        return C2501b.f17064b.serialize((C2501b) this, true);
    }
}
