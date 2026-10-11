package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.SaveUrlError;
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
public final class SaveUrlJobStatus {
    public static final SaveUrlJobStatus IN_PROGRESS = new SaveUrlJobStatus().m11030c(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f17365a;

    /* renamed from: b */
    public FileMetadata f17366b;

    /* renamed from: c */
    public SaveUrlError f17367c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    /* renamed from: com.dropbox.core.v2.files.SaveUrlJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2639a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17368a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17368a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17368a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17368a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SaveUrlJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2640b extends UnionSerializer<SaveUrlJobStatus> {

        /* renamed from: b */
        public static final C2640b f17369b = new C2640b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SaveUrlJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SaveUrlJobStatus failed;
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
                failed = SaveUrlJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                failed = SaveUrlJobStatus.complete(FileMetadata.C2543a.f17151b.deserialize(jsonParser, true));
            } else {
                if (!"failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failed", jsonParser);
                failed = SaveUrlJobStatus.failed(SaveUrlError.C2638b.f17364b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SaveUrlJobStatus saveUrlJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2639a.f17368a[saveUrlJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                FileMetadata.C2543a.f17151b.serialize(saveUrlJobStatus.f17366b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + saveUrlJobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            SaveUrlError.C2638b.f17364b.serialize(saveUrlJobStatus.f17367c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static SaveUrlJobStatus complete(FileMetadata fileMetadata) {
        if (fileMetadata != null) {
            return new SaveUrlJobStatus().m11031d(Tag.COMPLETE, fileMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static SaveUrlJobStatus failed(SaveUrlError saveUrlError) {
        if (saveUrlError != null) {
            return new SaveUrlJobStatus().m11032e(Tag.FAILED, saveUrlError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final SaveUrlJobStatus m11030c(Tag tag) {
        SaveUrlJobStatus saveUrlJobStatus = new SaveUrlJobStatus();
        saveUrlJobStatus.f17365a = tag;
        return saveUrlJobStatus;
    }

    /* renamed from: d */
    public final SaveUrlJobStatus m11031d(Tag tag, FileMetadata fileMetadata) {
        SaveUrlJobStatus saveUrlJobStatus = new SaveUrlJobStatus();
        saveUrlJobStatus.f17365a = tag;
        saveUrlJobStatus.f17366b = fileMetadata;
        return saveUrlJobStatus;
    }

    /* renamed from: e */
    public final SaveUrlJobStatus m11032e(Tag tag, SaveUrlError saveUrlError) {
        SaveUrlJobStatus saveUrlJobStatus = new SaveUrlJobStatus();
        saveUrlJobStatus.f17365a = tag;
        saveUrlJobStatus.f17367c = saveUrlError;
        return saveUrlJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SaveUrlJobStatus)) {
            return false;
        }
        SaveUrlJobStatus saveUrlJobStatus = (SaveUrlJobStatus) obj;
        Tag tag = this.f17365a;
        if (tag != saveUrlJobStatus.f17365a) {
            return false;
        }
        int i = C2639a.f17368a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            FileMetadata fileMetadata = this.f17366b;
            FileMetadata fileMetadata2 = saveUrlJobStatus.f17366b;
            return fileMetadata == fileMetadata2 || fileMetadata.equals(fileMetadata2);
        }
        if (i != 3) {
            return false;
        }
        SaveUrlError saveUrlError = this.f17367c;
        SaveUrlError saveUrlError2 = saveUrlJobStatus.f17367c;
        return saveUrlError == saveUrlError2 || saveUrlError.equals(saveUrlError2);
    }

    public FileMetadata getCompleteValue() {
        if (this.f17365a == Tag.COMPLETE) {
            return this.f17366b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17365a.name());
    }

    public SaveUrlError getFailedValue() {
        if (this.f17365a == Tag.FAILED) {
            return this.f17367c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f17365a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17365a, this.f17366b, this.f17367c});
    }

    public boolean isComplete() {
        return this.f17365a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f17365a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f17365a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f17365a;
    }

    public String toString() {
        return C2640b.f17369b.serialize((C2640b) this, false);
    }

    public String toStringMultiline() {
        return C2640b.f17369b.serialize((C2640b) this, true);
    }
}
