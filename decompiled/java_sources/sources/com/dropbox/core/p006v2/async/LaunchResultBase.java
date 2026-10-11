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
public final class LaunchResultBase {

    /* renamed from: a */
    public Tag f16799a;

    /* renamed from: b */
    public String f16800b;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<LaunchResultBase> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public LaunchResultBase deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
                    LaunchResultBase asyncJobId = LaunchResultBase.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
                    if (!z) {
                        StoneSerializer.skipFields(jsonParser);
                        StoneSerializer.expectEndObject(jsonParser);
                    }
                    return asyncJobId;
                }
                throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(LaunchResultBase launchResultBase, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2371a.f16801a[launchResultBase.tag().ordinal()] == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) launchResultBase.f16800b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + launchResultBase.tag());
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID
    }

    /* renamed from: com.dropbox.core.v2.async.LaunchResultBase$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2371a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16801a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16801a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static LaunchResultBase asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new LaunchResultBase().m10241c(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    /* renamed from: b */
    public final LaunchResultBase m10240b(Tag tag) {
        LaunchResultBase launchResultBase = new LaunchResultBase();
        launchResultBase.f16799a = tag;
        return launchResultBase;
    }

    /* renamed from: c */
    public final LaunchResultBase m10241c(Tag tag, String str) {
        LaunchResultBase launchResultBase = new LaunchResultBase();
        launchResultBase.f16799a = tag;
        launchResultBase.f16800b = str;
        return launchResultBase;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof LaunchResultBase)) {
            return false;
        }
        LaunchResultBase launchResultBase = (LaunchResultBase) obj;
        Tag tag = this.f16799a;
        if (tag != launchResultBase.f16799a || C2371a.f16801a[tag.ordinal()] != 1) {
            return false;
        }
        String str = this.f16800b;
        String str2 = launchResultBase.f16800b;
        return str == str2 || str.equals(str2);
    }

    public String getAsyncJobIdValue() {
        if (this.f16799a == Tag.ASYNC_JOB_ID) {
            return this.f16800b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f16799a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16799a, this.f16800b});
    }

    public boolean isAsyncJobId() {
        return this.f16799a == Tag.ASYNC_JOB_ID;
    }

    public Tag tag() {
        return this.f16799a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
