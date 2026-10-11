package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.JobError;
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
public final class JobStatus {

    /* renamed from: a */
    public Tag f17777a;

    /* renamed from: b */
    public JobError f17778b;
    public static final JobStatus IN_PROGRESS = new JobStatus().m11662b(Tag.IN_PROGRESS);
    public static final JobStatus COMPLETE = new JobStatus().m11662b(Tag.COMPLETE);

    /* loaded from: classes4.dex */
    public enum Tag {
        IN_PROGRESS,
        COMPLETE,
        FAILED
    }

    /* renamed from: com.dropbox.core.v2.sharing.JobStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2851a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17779a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17779a = iArr;
            try {
                iArr[Tag.IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17779a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17779a[Tag.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.JobStatus$b */
    /* loaded from: classes4.dex */
    public static class C2852b extends UnionSerializer<JobStatus> {

        /* renamed from: b */
        public static final C2852b f17780b = new C2852b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public JobStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            JobStatus failed;
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
                failed = JobStatus.IN_PROGRESS;
            } else if ("complete".equals(readTag)) {
                failed = JobStatus.COMPLETE;
            } else {
                if (!"failed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failed", jsonParser);
                failed = JobStatus.failed(JobError.C2850b.f17776b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(JobStatus jobStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2851a.f17779a[jobStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("complete");
                return;
            }
            if (i != 3) {
                throw new IllegalArgumentException("Unrecognized tag: " + jobStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failed", jsonGenerator);
            jsonGenerator.writeFieldName("failed");
            JobError.C2850b.f17776b.serialize(jobStatus.f17778b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static JobStatus failed(JobError jobError) {
        if (jobError != null) {
            return new JobStatus().m11663c(Tag.FAILED, jobError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final JobStatus m11662b(Tag tag) {
        JobStatus jobStatus = new JobStatus();
        jobStatus.f17777a = tag;
        return jobStatus;
    }

    /* renamed from: c */
    public final JobStatus m11663c(Tag tag, JobError jobError) {
        JobStatus jobStatus = new JobStatus();
        jobStatus.f17777a = tag;
        jobStatus.f17778b = jobError;
        return jobStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof JobStatus)) {
            return false;
        }
        JobStatus jobStatus = (JobStatus) obj;
        Tag tag = this.f17777a;
        if (tag != jobStatus.f17777a) {
            return false;
        }
        int i = C2851a.f17779a[tag.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return false;
        }
        JobError jobError = this.f17778b;
        JobError jobError2 = jobStatus.f17778b;
        return jobError == jobError2 || jobError.equals(jobError2);
    }

    public JobError getFailedValue() {
        if (this.f17777a == Tag.FAILED) {
            return this.f17778b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILED, but was Tag." + this.f17777a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17777a, this.f17778b});
    }

    public boolean isComplete() {
        return this.f17777a == Tag.COMPLETE;
    }

    public boolean isFailed() {
        return this.f17777a == Tag.FAILED;
    }

    public boolean isInProgress() {
        return this.f17777a == Tag.IN_PROGRESS;
    }

    public Tag tag() {
        return this.f17777a;
    }

    public String toString() {
        return C2852b.f17780b.serialize((C2852b) this, false);
    }

    public String toStringMultiline() {
        return C2852b.f17780b.serialize((C2852b) this, true);
    }
}
