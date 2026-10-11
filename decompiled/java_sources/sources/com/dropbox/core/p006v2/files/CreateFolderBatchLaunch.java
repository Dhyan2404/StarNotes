package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.CreateFolderBatchResult;
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
public final class CreateFolderBatchLaunch {
    public static final CreateFolderBatchLaunch OTHER = new CreateFolderBatchLaunch().m10595c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17065a;

    /* renamed from: b */
    public String f17066b;

    /* renamed from: c */
    public CreateFolderBatchResult f17067c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchLaunch$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2502a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17068a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17068a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17068a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17068a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchLaunch$b */
    /* loaded from: classes4.dex */
    public static class C2503b extends UnionSerializer<CreateFolderBatchLaunch> {

        /* renamed from: b */
        public static final C2503b f17069b = new C2503b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFolderBatchLaunch deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            CreateFolderBatchLaunch complete;
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
                complete = CreateFolderBatchLaunch.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                complete = "complete".equals(readTag) ? CreateFolderBatchLaunch.complete(CreateFolderBatchResult.C2504a.f17070b.deserialize(jsonParser, true)) : CreateFolderBatchLaunch.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFolderBatchLaunch createFolderBatchLaunch, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2502a.f17068a[createFolderBatchLaunch.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) createFolderBatchLaunch.f17066b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            CreateFolderBatchResult.C2504a.f17070b.serialize(createFolderBatchLaunch.f17067c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static CreateFolderBatchLaunch asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new CreateFolderBatchLaunch().m10596d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static CreateFolderBatchLaunch complete(CreateFolderBatchResult createFolderBatchResult) {
        if (createFolderBatchResult != null) {
            return new CreateFolderBatchLaunch().m10597e(Tag.COMPLETE, createFolderBatchResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final CreateFolderBatchLaunch m10595c(Tag tag) {
        CreateFolderBatchLaunch createFolderBatchLaunch = new CreateFolderBatchLaunch();
        createFolderBatchLaunch.f17065a = tag;
        return createFolderBatchLaunch;
    }

    /* renamed from: d */
    public final CreateFolderBatchLaunch m10596d(Tag tag, String str) {
        CreateFolderBatchLaunch createFolderBatchLaunch = new CreateFolderBatchLaunch();
        createFolderBatchLaunch.f17065a = tag;
        createFolderBatchLaunch.f17066b = str;
        return createFolderBatchLaunch;
    }

    /* renamed from: e */
    public final CreateFolderBatchLaunch m10597e(Tag tag, CreateFolderBatchResult createFolderBatchResult) {
        CreateFolderBatchLaunch createFolderBatchLaunch = new CreateFolderBatchLaunch();
        createFolderBatchLaunch.f17065a = tag;
        createFolderBatchLaunch.f17067c = createFolderBatchResult;
        return createFolderBatchLaunch;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateFolderBatchLaunch)) {
            return false;
        }
        CreateFolderBatchLaunch createFolderBatchLaunch = (CreateFolderBatchLaunch) obj;
        Tag tag = this.f17065a;
        if (tag != createFolderBatchLaunch.f17065a) {
            return false;
        }
        int i = C2502a.f17068a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17066b;
            String str2 = createFolderBatchLaunch.f17066b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return i == 3;
        }
        CreateFolderBatchResult createFolderBatchResult = this.f17067c;
        CreateFolderBatchResult createFolderBatchResult2 = createFolderBatchLaunch.f17067c;
        return createFolderBatchResult == createFolderBatchResult2 || createFolderBatchResult.equals(createFolderBatchResult2);
    }

    public String getAsyncJobIdValue() {
        if (this.f17065a == Tag.ASYNC_JOB_ID) {
            return this.f17066b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f17065a.name());
    }

    public CreateFolderBatchResult getCompleteValue() {
        if (this.f17065a == Tag.COMPLETE) {
            return this.f17067c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17065a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17065a, this.f17066b, this.f17067c});
    }

    public boolean isAsyncJobId() {
        return this.f17065a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f17065a == Tag.COMPLETE;
    }

    public boolean isOther() {
        return this.f17065a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17065a;
    }

    public String toString() {
        return C2503b.f17069b.serialize((C2503b) this, false);
    }

    public String toStringMultiline() {
        return C2503b.f17069b.serialize((C2503b) this, true);
    }
}
