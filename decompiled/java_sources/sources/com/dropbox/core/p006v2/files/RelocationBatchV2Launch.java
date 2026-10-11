package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.RelocationBatchV2Result;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class RelocationBatchV2Launch {

    /* renamed from: a */
    public Tag f17335a;

    /* renamed from: b */
    public String f17336b;

    /* renamed from: c */
    public RelocationBatchV2Result f17337c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchV2Launch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2625a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17338a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17338a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17338a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchV2Launch$b */
    /* loaded from: classes4.dex */
    public static class C2626b extends UnionSerializer<RelocationBatchV2Launch> {

        /* renamed from: b */
        public static final C2626b f17339b = new C2626b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchV2Launch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationBatchV2Launch complete;
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
                complete = RelocationBatchV2Launch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"complete".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                complete = RelocationBatchV2Launch.complete(RelocationBatchV2Result.C2627a.f17340b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchV2Launch relocationBatchV2Launch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2625a.f17338a[relocationBatchV2Launch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) relocationBatchV2Launch.f17336b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + relocationBatchV2Launch.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            RelocationBatchV2Result.C2627a.f17340b.serialize(relocationBatchV2Launch.f17337c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static RelocationBatchV2Launch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new RelocationBatchV2Launch().m10987d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static RelocationBatchV2Launch complete(RelocationBatchV2Result relocationBatchV2Result) {
        if (relocationBatchV2Result != null) {
            return new RelocationBatchV2Launch().m10988e(Tag.COMPLETE, relocationBatchV2Result);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RelocationBatchV2Launch m10986c(Tag tag) {
        RelocationBatchV2Launch relocationBatchV2Launch = new RelocationBatchV2Launch();
        relocationBatchV2Launch.f17335a = tag;
        return relocationBatchV2Launch;
    }

    /* renamed from: d */
    public final RelocationBatchV2Launch m10987d(Tag tag, String str) {
        RelocationBatchV2Launch relocationBatchV2Launch = new RelocationBatchV2Launch();
        relocationBatchV2Launch.f17335a = tag;
        relocationBatchV2Launch.f17336b = str;
        return relocationBatchV2Launch;
    }

    /* renamed from: e */
    public final RelocationBatchV2Launch m10988e(Tag tag, RelocationBatchV2Result relocationBatchV2Result) {
        RelocationBatchV2Launch relocationBatchV2Launch = new RelocationBatchV2Launch();
        relocationBatchV2Launch.f17335a = tag;
        relocationBatchV2Launch.f17337c = relocationBatchV2Result;
        return relocationBatchV2Launch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchV2Launch)) {
            return false;
        }
        RelocationBatchV2Launch relocationBatchV2Launch = (RelocationBatchV2Launch) obj;
        Tag tag = this.f17335a;
        if (tag != relocationBatchV2Launch.f17335a) {
            return false;
        }
        int i = C2625a.f17338a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17336b;
            String str2 = relocationBatchV2Launch.f17336b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        RelocationBatchV2Result relocationBatchV2Result = this.f17337c;
        RelocationBatchV2Result relocationBatchV2Result2 = relocationBatchV2Launch.f17337c;
        return relocationBatchV2Result == relocationBatchV2Result2 || relocationBatchV2Result.equals(relocationBatchV2Result2);
    }

    public String getAsyncJobIdValue() {
        if (this.f17335a == Tag.ASYNC_JOB_ID) {
            return this.f17336b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f17335a.name());
    }

    public RelocationBatchV2Result getCompleteValue() {
        if (this.f17335a == Tag.COMPLETE) {
            return this.f17337c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17335a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17335a, this.f17336b, this.f17337c});
    }

    public boolean isAsyncJobId() {
        return this.f17335a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f17335a == Tag.COMPLETE;
    }

    public Tag tag() {
        return this.f17335a;
    }

    public String toString() {
        return C2626b.f17339b.serialize((C2626b) this, false);
    }

    public String toStringMultiline() {
        return C2626b.f17339b.serialize((C2626b) this, true);
    }
}
