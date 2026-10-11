package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.RelocationBatchResult;
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
public final class RelocationBatchLaunch {
    public static final RelocationBatchLaunch OTHER = new RelocationBatchLaunch().m10963c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17319a;

    /* renamed from: b */
    public String f17320b;

    /* renamed from: c */
    public RelocationBatchResult f17321c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchLaunch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2617a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17322a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17322a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17322a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17322a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchLaunch$b */
    /* loaded from: classes4.dex */
    public static class C2618b extends UnionSerializer<RelocationBatchLaunch> {

        /* renamed from: b */
        public static final C2618b f17323b = new C2618b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchLaunch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationBatchLaunch complete;
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
                complete = RelocationBatchLaunch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                complete = "complete".equals(readTag) ? RelocationBatchLaunch.complete(RelocationBatchResult.C2619a.f17324b.deserialize(jsonParser, true)) : RelocationBatchLaunch.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchLaunch relocationBatchLaunch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2617a.f17322a[relocationBatchLaunch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) relocationBatchLaunch.f17320b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            RelocationBatchResult.C2619a.f17324b.serialize(relocationBatchLaunch.f17321c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static RelocationBatchLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new RelocationBatchLaunch().m10964d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static RelocationBatchLaunch complete(RelocationBatchResult relocationBatchResult) {
        if (relocationBatchResult != null) {
            return new RelocationBatchLaunch().m10965e(Tag.COMPLETE, relocationBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RelocationBatchLaunch m10963c(Tag tag) {
        RelocationBatchLaunch relocationBatchLaunch = new RelocationBatchLaunch();
        relocationBatchLaunch.f17319a = tag;
        return relocationBatchLaunch;
    }

    /* renamed from: d */
    public final RelocationBatchLaunch m10964d(Tag tag, String str) {
        RelocationBatchLaunch relocationBatchLaunch = new RelocationBatchLaunch();
        relocationBatchLaunch.f17319a = tag;
        relocationBatchLaunch.f17320b = str;
        return relocationBatchLaunch;
    }

    /* renamed from: e */
    public final RelocationBatchLaunch m10965e(Tag tag, RelocationBatchResult relocationBatchResult) {
        RelocationBatchLaunch relocationBatchLaunch = new RelocationBatchLaunch();
        relocationBatchLaunch.f17319a = tag;
        relocationBatchLaunch.f17321c = relocationBatchResult;
        return relocationBatchLaunch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchLaunch)) {
            return false;
        }
        RelocationBatchLaunch relocationBatchLaunch = (RelocationBatchLaunch) obj;
        Tag tag = this.f17319a;
        if (tag != relocationBatchLaunch.f17319a) {
            return false;
        }
        int i = C2617a.f17322a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17320b;
            String str2 = relocationBatchLaunch.f17320b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return i == 3;
        }
        RelocationBatchResult relocationBatchResult = this.f17321c;
        RelocationBatchResult relocationBatchResult2 = relocationBatchLaunch.f17321c;
        return relocationBatchResult == relocationBatchResult2 || relocationBatchResult.equals(relocationBatchResult2);
    }

    public String getAsyncJobIdValue() {
        if (this.f17319a == Tag.ASYNC_JOB_ID) {
            return this.f17320b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f17319a.name());
    }

    public RelocationBatchResult getCompleteValue() {
        if (this.f17319a == Tag.COMPLETE) {
            return this.f17321c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17319a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17319a, this.f17320b, this.f17321c});
    }

    public boolean isAsyncJobId() {
        return this.f17319a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f17319a == Tag.COMPLETE;
    }

    public boolean isOther() {
        return this.f17319a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17319a;
    }

    public String toString() {
        return C2618b.f17323b.serialize((C2618b) this, false);
    }

    public String toStringMultiline() {
        return C2618b.f17323b.serialize((C2618b) this, true);
    }
}
