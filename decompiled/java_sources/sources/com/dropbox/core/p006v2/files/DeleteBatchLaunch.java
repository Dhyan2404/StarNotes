package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.DeleteBatchResult;
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
public final class DeleteBatchLaunch {
    public static final DeleteBatchLaunch OTHER = new DeleteBatchLaunch().m10698c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17100a;

    /* renamed from: b */
    public String f17101b;

    /* renamed from: c */
    public DeleteBatchResult f17102c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchLaunch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2518a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17103a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17103a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17103a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17103a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteBatchLaunch$b */
    /* loaded from: classes4.dex */
    public static class C2519b extends UnionSerializer<DeleteBatchLaunch> {

        /* renamed from: b */
        public static final C2519b f17104b = new C2519b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteBatchLaunch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DeleteBatchLaunch complete;
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
                complete = DeleteBatchLaunch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                complete = "complete".equals(readTag) ? DeleteBatchLaunch.complete(DeleteBatchResult.C2520a.f17105b.deserialize(jsonParser, true)) : DeleteBatchLaunch.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteBatchLaunch deleteBatchLaunch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2518a.f17103a[deleteBatchLaunch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) deleteBatchLaunch.f17101b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            DeleteBatchResult.C2520a.f17105b.serialize(deleteBatchLaunch.f17102c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static DeleteBatchLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new DeleteBatchLaunch().m10699d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static DeleteBatchLaunch complete(DeleteBatchResult deleteBatchResult) {
        if (deleteBatchResult != null) {
            return new DeleteBatchLaunch().m10700e(Tag.COMPLETE, deleteBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final DeleteBatchLaunch m10698c(Tag tag) {
        DeleteBatchLaunch deleteBatchLaunch = new DeleteBatchLaunch();
        deleteBatchLaunch.f17100a = tag;
        return deleteBatchLaunch;
    }

    /* renamed from: d */
    public final DeleteBatchLaunch m10699d(Tag tag, String str) {
        DeleteBatchLaunch deleteBatchLaunch = new DeleteBatchLaunch();
        deleteBatchLaunch.f17100a = tag;
        deleteBatchLaunch.f17101b = str;
        return deleteBatchLaunch;
    }

    /* renamed from: e */
    public final DeleteBatchLaunch m10700e(Tag tag, DeleteBatchResult deleteBatchResult) {
        DeleteBatchLaunch deleteBatchLaunch = new DeleteBatchLaunch();
        deleteBatchLaunch.f17100a = tag;
        deleteBatchLaunch.f17102c = deleteBatchResult;
        return deleteBatchLaunch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteBatchLaunch)) {
            return false;
        }
        DeleteBatchLaunch deleteBatchLaunch = (DeleteBatchLaunch) obj;
        Tag tag = this.f17100a;
        if (tag != deleteBatchLaunch.f17100a) {
            return false;
        }
        int i = C2518a.f17103a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17101b;
            String str2 = deleteBatchLaunch.f17101b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return i == 3;
        }
        DeleteBatchResult deleteBatchResult = this.f17102c;
        DeleteBatchResult deleteBatchResult2 = deleteBatchLaunch.f17102c;
        return deleteBatchResult == deleteBatchResult2 || deleteBatchResult.equals(deleteBatchResult2);
    }

    public String getAsyncJobIdValue() {
        if (this.f17100a == Tag.ASYNC_JOB_ID) {
            return this.f17101b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f17100a.name());
    }

    public DeleteBatchResult getCompleteValue() {
        if (this.f17100a == Tag.COMPLETE) {
            return this.f17102c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17100a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17100a, this.f17101b, this.f17102c});
    }

    public boolean isAsyncJobId() {
        return this.f17100a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f17100a == Tag.COMPLETE;
    }

    public boolean isOther() {
        return this.f17100a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17100a;
    }

    public String toString() {
        return C2519b.f17104b.serialize((C2519b) this, false);
    }

    public String toStringMultiline() {
        return C2519b.f17104b.serialize((C2519b) this, true);
    }
}
