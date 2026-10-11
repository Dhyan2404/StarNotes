package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.RelocationBatchError;
import com.dropbox.core.p006v2.files.RelocationBatchResult;
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
public final class RelocationBatchJobStatus {
    public static final RelocationBatchJobStatus IN_PROGRESS = new RelocationBatchJobStatus().m10956c(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f17314a;

    /* renamed from: b */
    public RelocationBatchResult f17315b;

    /* renamed from: c */
    public RelocationBatchError f17316c;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchJobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2615a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17317a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17317a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17317a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17317a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchJobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2616b extends UnionSerializer<RelocationBatchJobStatus> {

        /* renamed from: b */
        public static final C2616b f17318b = new C2616b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchJobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationBatchJobStatus failed;
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
                failed = RelocationBatchJobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                failed = RelocationBatchJobStatus.complete(RelocationBatchResult.C2619a.f17324b.deserialize(jsonParser, true));
            } else {
                if (!"failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failed", jsonParser);
                failed = RelocationBatchJobStatus.failed(RelocationBatchError.C2612b.f17309b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchJobStatus relocationBatchJobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2615a.f17317a[relocationBatchJobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("complete", jsonGenerator);
                RelocationBatchResult.C2619a.f17324b.serialize(relocationBatchJobStatus.f17315b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + relocationBatchJobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            RelocationBatchError.C2612b.f17309b.serialize(relocationBatchJobStatus.f17316c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static RelocationBatchJobStatus complete(RelocationBatchResult relocationBatchResult) {
        if (relocationBatchResult != null) {
            return new RelocationBatchJobStatus().m10957d(Tag.COMPLETE, relocationBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RelocationBatchJobStatus failed(RelocationBatchError relocationBatchError) {
        if (relocationBatchError != null) {
            return new RelocationBatchJobStatus().m10958e(Tag.FAILED, relocationBatchError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RelocationBatchJobStatus m10956c(Tag tag) {
        RelocationBatchJobStatus relocationBatchJobStatus = new RelocationBatchJobStatus();
        relocationBatchJobStatus.f17314a = tag;
        return relocationBatchJobStatus;
    }

    /* renamed from: d */
    public final RelocationBatchJobStatus m10957d(Tag tag, RelocationBatchResult relocationBatchResult) {
        RelocationBatchJobStatus relocationBatchJobStatus = new RelocationBatchJobStatus();
        relocationBatchJobStatus.f17314a = tag;
        relocationBatchJobStatus.f17315b = relocationBatchResult;
        return relocationBatchJobStatus;
    }

    /* renamed from: e */
    public final RelocationBatchJobStatus m10958e(Tag tag, RelocationBatchError relocationBatchError) {
        RelocationBatchJobStatus relocationBatchJobStatus = new RelocationBatchJobStatus();
        relocationBatchJobStatus.f17314a = tag;
        relocationBatchJobStatus.f17316c = relocationBatchError;
        return relocationBatchJobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchJobStatus)) {
            return false;
        }
        RelocationBatchJobStatus relocationBatchJobStatus = (RelocationBatchJobStatus) obj;
        Tag tag = this.f17314a;
        if (tag != relocationBatchJobStatus.f17314a) {
            return false;
        }
        int i = C2615a.f17317a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            RelocationBatchResult relocationBatchResult = this.f17315b;
            RelocationBatchResult relocationBatchResult2 = relocationBatchJobStatus.f17315b;
            return relocationBatchResult == relocationBatchResult2 || relocationBatchResult.equals(relocationBatchResult2);
        }
        if (i != 3) {
            return false;
        }
        RelocationBatchError relocationBatchError = this.f17316c;
        RelocationBatchError relocationBatchError2 = relocationBatchJobStatus.f17316c;
        return relocationBatchError == relocationBatchError2 || relocationBatchError.equals(relocationBatchError2);
    }

    public RelocationBatchResult getCompleteValue() {
        if (this.f17314a == Tag.COMPLETE) {
            return this.f17315b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17314a.name());
    }

    public RelocationBatchError getFailedValue() {
        if (this.f17314a == Tag.FAILED) {
            return this.f17316c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f17314a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17314a, this.f17315b, this.f17316c});
    }

    public boolean isComplete() {
        return this.f17314a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f17314a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f17314a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f17314a;
    }

    public String toString() {
        return C2616b.f17318b.serialize((C2616b) this, false);
    }

    public String toStringMultiline() {
        return C2616b.f17318b.serialize((C2616b) this, true);
    }
}
