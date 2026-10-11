package com.dropbox.core.p006v2.async;

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
public final class LaunchEmptyResult {
    public static final LaunchEmptyResult COMPLETE = new LaunchEmptyResult().m10237b(Tag.COMPLETE);

    /* renamed from: a */
    public Tag f16796a;

    /* renamed from: b */
    public String f16797b;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<LaunchEmptyResult> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public LaunchEmptyResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            LaunchEmptyResult launchEmptyResult;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("async_job_id".equals(readTag)) {
                    StoneSerializer.expectField("async_job_id", jsonParser);
                    launchEmptyResult = LaunchEmptyResult.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
                } else if ("complete".equals(readTag)) {
                    launchEmptyResult = LaunchEmptyResult.COMPLETE;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return launchEmptyResult;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LaunchEmptyResult launchEmptyResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2370a.f16798a[launchEmptyResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) launchEmptyResult.f16797b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("complete");
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + launchEmptyResult.tag());
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.async.LaunchEmptyResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2370a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16798a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16798a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16798a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static LaunchEmptyResult asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new LaunchEmptyResult().m10238c(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    /* renamed from: b */
    public final LaunchEmptyResult m10237b(Tag tag) {
        LaunchEmptyResult launchEmptyResult = new LaunchEmptyResult();
        launchEmptyResult.f16796a = tag;
        return launchEmptyResult;
    }

    /* renamed from: c */
    public final LaunchEmptyResult m10238c(Tag tag, String str) {
        LaunchEmptyResult launchEmptyResult = new LaunchEmptyResult();
        launchEmptyResult.f16796a = tag;
        launchEmptyResult.f16797b = str;
        return launchEmptyResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LaunchEmptyResult)) {
            return false;
        }
        LaunchEmptyResult launchEmptyResult = (LaunchEmptyResult) obj;
        Tag tag = this.f16796a;
        if (tag != launchEmptyResult.f16796a) {
            return false;
        }
        int i = C2370a.f16798a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f16797b;
        String str2 = launchEmptyResult.f16797b;
        return str == str2 || str.equals(str2);
    }

    public String getAsyncJobIdValue() {
        if (this.f16796a == Tag.ASYNC_JOB_ID) {
            return this.f16797b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f16796a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f16796a, this.f16797b});
    }

    public boolean isAsyncJobId() {
        return this.f16796a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f16796a == Tag.COMPLETE;
    }

    public Tag tag() {
        return this.f16796a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
