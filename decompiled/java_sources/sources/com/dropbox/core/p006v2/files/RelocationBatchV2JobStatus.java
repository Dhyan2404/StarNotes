package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.RelocationBatchV2Result;
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
public final class RelocationBatchV2JobStatus {
    public static final RelocationBatchV2JobStatus IN_PROGRESS = new RelocationBatchV2JobStatus().m10980b(Tag.IN_PROGRESS);

    /* renamed from: a */
    public Tag f17331a;

    /* renamed from: b */
    public RelocationBatchV2Result f17332b;

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchV2JobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2623a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17333a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17333a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17333a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchV2JobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2624b extends UnionSerializer<RelocationBatchV2JobStatus> {

        /* renamed from: b */
        public static final C2624b f17334b = new C2624b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchV2JobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationBatchV2JobStatus complete;
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
                complete = RelocationBatchV2JobStatus.IN_PROGRESS;
            } else {
                if (!"complete".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                complete = RelocationBatchV2JobStatus.complete(RelocationBatchV2Result.C2627a.f17340b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchV2JobStatus relocationBatchV2JobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2623a.f17333a[relocationBatchV2JobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + relocationBatchV2JobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            RelocationBatchV2Result.C2627a.f17340b.serialize(relocationBatchV2JobStatus.f17332b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static RelocationBatchV2JobStatus complete(RelocationBatchV2Result relocationBatchV2Result) {
        if (relocationBatchV2Result != null) {
            return new RelocationBatchV2JobStatus().m10981c(Tag.COMPLETE, relocationBatchV2Result);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final RelocationBatchV2JobStatus m10980b(Tag tag) {
        RelocationBatchV2JobStatus relocationBatchV2JobStatus = new RelocationBatchV2JobStatus();
        relocationBatchV2JobStatus.f17331a = tag;
        return relocationBatchV2JobStatus;
    }

    /* renamed from: c */
    public final RelocationBatchV2JobStatus m10981c(Tag tag, RelocationBatchV2Result relocationBatchV2Result) {
        RelocationBatchV2JobStatus relocationBatchV2JobStatus = new RelocationBatchV2JobStatus();
        relocationBatchV2JobStatus.f17331a = tag;
        relocationBatchV2JobStatus.f17332b = relocationBatchV2Result;
        return relocationBatchV2JobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchV2JobStatus)) {
            return false;
        }
        RelocationBatchV2JobStatus relocationBatchV2JobStatus = (RelocationBatchV2JobStatus) obj;
        Tag tag = this.f17331a;
        if (tag != relocationBatchV2JobStatus.f17331a) {
            return false;
        }
        int i = C2623a.f17333a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        RelocationBatchV2Result relocationBatchV2Result = this.f17332b;
        RelocationBatchV2Result relocationBatchV2Result2 = relocationBatchV2JobStatus.f17332b;
        return relocationBatchV2Result == relocationBatchV2Result2 || relocationBatchV2Result.equals(relocationBatchV2Result2);
    }

    public RelocationBatchV2Result getCompleteValue() {
        if (this.f17331a == Tag.COMPLETE) {
            return this.f17332b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17331a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17331a, this.f17332b});
    }

    public boolean isComplete() {
        return this.f17331a == Tag.COMPLETE;
    }

    public boolean isInProgress() {
        return this.f17331a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f17331a;
    }

    public String toString() {
        return C2624b.f17334b.serialize((C2624b) this, false);
    }

    public String toStringMultiline() {
        return C2624b.f17334b.serialize((C2624b) this, true);
    }
}
