package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.UploadSessionFinishBatchResult;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
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
public final class UploadSessionFinishBatchLaunch {
    public static final UploadSessionFinishBatchLaunch OTHER = new UploadSessionFinishBatchLaunch().m11148c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17454a;

    /* renamed from: b */
    public String f17455b;

    /* renamed from: c */
    public UploadSessionFinishBatchResult f17456c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishBatchLaunch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2686a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17457a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17457a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17457a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17457a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishBatchLaunch$b */
    /* loaded from: classes4.dex */
    public static class C2687b extends UnionSerializer<UploadSessionFinishBatchLaunch> {

        /* renamed from: b */
        public static final C2687b f17458b = new C2687b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionFinishBatchLaunch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UploadSessionFinishBatchLaunch complete;
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
            if ("async_job_id".equals(readTag)) {
                StoneSerializer.expectField("async_job_id", jsonParser);
                complete = UploadSessionFinishBatchLaunch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                complete = "complete".equals(readTag) ? UploadSessionFinishBatchLaunch.complete(UploadSessionFinishBatchResult.C2688a.f17459b.deserialize(jsonParser, true)) : UploadSessionFinishBatchLaunch.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2686a.f17457a[uploadSessionFinishBatchLaunch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) uploadSessionFinishBatchLaunch.f17455b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            UploadSessionFinishBatchResult.C2688a.f17459b.serialize(uploadSessionFinishBatchLaunch.f17456c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static UploadSessionFinishBatchLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new UploadSessionFinishBatchLaunch().m11149d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static UploadSessionFinishBatchLaunch complete(UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        if (uploadSessionFinishBatchResult != null) {
            return new UploadSessionFinishBatchLaunch().m11150e(Tag.COMPLETE, uploadSessionFinishBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UploadSessionFinishBatchLaunch m11148c(Tag tag) {
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = new UploadSessionFinishBatchLaunch();
        uploadSessionFinishBatchLaunch.f17454a = tag;
        return uploadSessionFinishBatchLaunch;
    }

    /* renamed from: d */
    public final UploadSessionFinishBatchLaunch m11149d(Tag tag, String str) {
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = new UploadSessionFinishBatchLaunch();
        uploadSessionFinishBatchLaunch.f17454a = tag;
        uploadSessionFinishBatchLaunch.f17455b = str;
        return uploadSessionFinishBatchLaunch;
    }

    /* renamed from: e */
    public final UploadSessionFinishBatchLaunch m11150e(Tag tag, UploadSessionFinishBatchResult uploadSessionFinishBatchResult) {
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = new UploadSessionFinishBatchLaunch();
        uploadSessionFinishBatchLaunch.f17454a = tag;
        uploadSessionFinishBatchLaunch.f17456c = uploadSessionFinishBatchResult;
        return uploadSessionFinishBatchLaunch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionFinishBatchLaunch)) {
            return false;
        }
        UploadSessionFinishBatchLaunch uploadSessionFinishBatchLaunch = (UploadSessionFinishBatchLaunch) obj;
        Tag tag = this.f17454a;
        if (tag != uploadSessionFinishBatchLaunch.f17454a) {
            return false;
        }
        int i = C2686a.f17457a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17455b;
            String str2 = uploadSessionFinishBatchLaunch.f17455b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return i == 3;
        }
        UploadSessionFinishBatchResult uploadSessionFinishBatchResult = this.f17456c;
        UploadSessionFinishBatchResult uploadSessionFinishBatchResult2 = uploadSessionFinishBatchLaunch.f17456c;
        return uploadSessionFinishBatchResult == uploadSessionFinishBatchResult2 || uploadSessionFinishBatchResult.equals(uploadSessionFinishBatchResult2);
    }

    public String getAsyncJobIdValue() {
        if (this.f17454a == Tag.ASYNC_JOB_ID) {
            return this.f17455b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f17454a.name());
    }

    public UploadSessionFinishBatchResult getCompleteValue() {
        if (this.f17454a == Tag.COMPLETE) {
            return this.f17456c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17454a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17454a, this.f17455b, this.f17456c});
    }

    public boolean isAsyncJobId() {
        return this.f17454a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f17454a == Tag.COMPLETE;
    }

    public boolean isOther() {
        return this.f17454a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17454a;
    }

    public String toString() {
        return C2687b.f17458b.serialize((C2687b) this, false);
    }

    public String toStringMultiline() {
        return C2687b.f17458b.serialize((C2687b) this, true);
    }
}
