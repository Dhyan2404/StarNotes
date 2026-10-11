package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileMetadata;
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
public final class SaveUrlResult {

    /* renamed from: a */
    public Tag f17370a;

    /* renamed from: b */
    public String f17371b;

    /* renamed from: c */
    public FileMetadata f17372c;

    /* loaded from: classes4.dex */
    public enum Tag {
        ASYNC_JOB_ID,
        COMPLETE
    }

    /* renamed from: com.dropbox.core.v2.files.SaveUrlResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2641a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17373a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17373a = iArr;
            try {
                iArr[Tag.ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17373a[Tag.COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SaveUrlResult$b */
    /* loaded from: classes4.dex */
    public static class C2642b extends UnionSerializer<SaveUrlResult> {

        /* renamed from: b */
        public static final C2642b f17374b = new C2642b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SaveUrlResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SaveUrlResult complete;
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
                complete = SaveUrlResult.asyncJobId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                if (!"complete".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                complete = SaveUrlResult.complete(FileMetadata.C2543a.f17151b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return complete;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SaveUrlResult saveUrlResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2641a.f17373a[saveUrlResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("async_job_id", jsonGenerator);
                jsonGenerator.writeFieldName("async_job_id");
                StoneSerializers.string().serialize((StoneSerializer<String>) saveUrlResult.f17371b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + saveUrlResult.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("complete", jsonGenerator);
            FileMetadata.C2543a.f17151b.serialize(saveUrlResult.f17372c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static SaveUrlResult asyncJobId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new SaveUrlResult().m11038d(Tag.ASYNC_JOB_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static SaveUrlResult complete(FileMetadata fileMetadata) {
        if (fileMetadata != null) {
            return new SaveUrlResult().m11039e(Tag.COMPLETE, fileMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final SaveUrlResult m11037c(Tag tag) {
        SaveUrlResult saveUrlResult = new SaveUrlResult();
        saveUrlResult.f17370a = tag;
        return saveUrlResult;
    }

    /* renamed from: d */
    public final SaveUrlResult m11038d(Tag tag, String str) {
        SaveUrlResult saveUrlResult = new SaveUrlResult();
        saveUrlResult.f17370a = tag;
        saveUrlResult.f17371b = str;
        return saveUrlResult;
    }

    /* renamed from: e */
    public final SaveUrlResult m11039e(Tag tag, FileMetadata fileMetadata) {
        SaveUrlResult saveUrlResult = new SaveUrlResult();
        saveUrlResult.f17370a = tag;
        saveUrlResult.f17372c = fileMetadata;
        return saveUrlResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SaveUrlResult)) {
            return false;
        }
        SaveUrlResult saveUrlResult = (SaveUrlResult) obj;
        Tag tag = this.f17370a;
        if (tag != saveUrlResult.f17370a) {
            return false;
        }
        int i = C2641a.f17373a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17371b;
            String str2 = saveUrlResult.f17371b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return false;
        }
        FileMetadata fileMetadata = this.f17372c;
        FileMetadata fileMetadata2 = saveUrlResult.f17372c;
        return fileMetadata == fileMetadata2 || fileMetadata.equals(fileMetadata2);
    }

    public String getAsyncJobIdValue() {
        if (this.f17370a == Tag.ASYNC_JOB_ID) {
            return this.f17371b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag." + this.f17370a.name());
    }

    public FileMetadata getCompleteValue() {
        if (this.f17370a == Tag.COMPLETE) {
            return this.f17372c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.COMPLETE, but was Tag." + this.f17370a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17370a, this.f17371b, this.f17372c});
    }

    public boolean isAsyncJobId() {
        return this.f17370a == Tag.ASYNC_JOB_ID;
    }

    public boolean isComplete() {
        return this.f17370a == Tag.COMPLETE;
    }

    public Tag tag() {
        return this.f17370a;
    }

    public String toString() {
        return C2642b.f17374b.serialize((C2642b) this, false);
    }

    public String toStringMultiline() {
        return C2642b.f17374b.serialize((C2642b) this, true);
    }
}
