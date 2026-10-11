package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.p006v2.files.UploadSessionFinishError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class UploadSessionFinishBatchResultEntry {

    /* renamed from: a */
    public Tag f17460a;

    /* renamed from: b */
    public FileMetadata f17461b;

    /* renamed from: c */
    public UploadSessionFinishError f17462c;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        FAILURE
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishBatchResultEntry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2689a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17463a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17463a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17463a[Tag.FAILURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishBatchResultEntry$b */
    /* loaded from: classes4.dex */
    public static class C2690b extends UnionSerializer<UploadSessionFinishBatchResultEntry> {

        /* renamed from: b */
        public static final C2690b f17464b = new C2690b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionFinishBatchResultEntry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UploadSessionFinishBatchResultEntry failure;
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
            if (FirebaseAnalytics.Param.SUCCESS.equals(readTag)) {
                failure = UploadSessionFinishBatchResultEntry.success(FileMetadata.C2543a.f17151b.deserialize(jsonParser, true));
            } else {
                if (!"failure".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("failure", jsonParser);
                failure = UploadSessionFinishBatchResultEntry.failure(UploadSessionFinishError.C2692b.f17470b.deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return failure;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2689a.f17463a[uploadSessionFinishBatchResultEntry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                FileMetadata.C2543a.f17151b.serialize(uploadSessionFinishBatchResultEntry.f17461b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                throw new IllegalArgumentException("Unrecognized tag: " + uploadSessionFinishBatchResultEntry.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("failure", jsonGenerator);
            jsonGenerator.writeFieldName("failure");
            UploadSessionFinishError.C2692b.f17470b.serialize(uploadSessionFinishBatchResultEntry.f17462c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UploadSessionFinishBatchResultEntry failure(UploadSessionFinishError uploadSessionFinishError) {
        if (uploadSessionFinishError != null) {
            return new UploadSessionFinishBatchResultEntry().m11158d(Tag.FAILURE, uploadSessionFinishError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UploadSessionFinishBatchResultEntry success(FileMetadata fileMetadata) {
        if (fileMetadata != null) {
            return new UploadSessionFinishBatchResultEntry().m11159e(Tag.SUCCESS, fileMetadata);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UploadSessionFinishBatchResultEntry m11157c(Tag tag) {
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = new UploadSessionFinishBatchResultEntry();
        uploadSessionFinishBatchResultEntry.f17460a = tag;
        return uploadSessionFinishBatchResultEntry;
    }

    /* renamed from: d */
    public final UploadSessionFinishBatchResultEntry m11158d(Tag tag, UploadSessionFinishError uploadSessionFinishError) {
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = new UploadSessionFinishBatchResultEntry();
        uploadSessionFinishBatchResultEntry.f17460a = tag;
        uploadSessionFinishBatchResultEntry.f17462c = uploadSessionFinishError;
        return uploadSessionFinishBatchResultEntry;
    }

    /* renamed from: e */
    public final UploadSessionFinishBatchResultEntry m11159e(Tag tag, FileMetadata fileMetadata) {
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = new UploadSessionFinishBatchResultEntry();
        uploadSessionFinishBatchResultEntry.f17460a = tag;
        uploadSessionFinishBatchResultEntry.f17461b = fileMetadata;
        return uploadSessionFinishBatchResultEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionFinishBatchResultEntry)) {
            return false;
        }
        UploadSessionFinishBatchResultEntry uploadSessionFinishBatchResultEntry = (UploadSessionFinishBatchResultEntry) obj;
        Tag tag = this.f17460a;
        if (tag != uploadSessionFinishBatchResultEntry.f17460a) {
            return false;
        }
        int i = C2689a.f17463a[tag.ordinal()];
        if (i == 1) {
            FileMetadata fileMetadata = this.f17461b;
            FileMetadata fileMetadata2 = uploadSessionFinishBatchResultEntry.f17461b;
            return fileMetadata == fileMetadata2 || fileMetadata.equals(fileMetadata2);
        }
        if (i != 2) {
            return false;
        }
        UploadSessionFinishError uploadSessionFinishError = this.f17462c;
        UploadSessionFinishError uploadSessionFinishError2 = uploadSessionFinishBatchResultEntry.f17462c;
        return uploadSessionFinishError == uploadSessionFinishError2 || uploadSessionFinishError.equals(uploadSessionFinishError2);
    }

    public UploadSessionFinishError getFailureValue() {
        if (this.f17460a == Tag.FAILURE) {
            return this.f17462c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FAILURE, but was Tag." + this.f17460a.name());
    }

    public FileMetadata getSuccessValue() {
        if (this.f17460a == Tag.SUCCESS) {
            return this.f17461b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f17460a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17460a, this.f17461b, this.f17462c});
    }

    public boolean isFailure() {
        return this.f17460a == Tag.FAILURE;
    }

    public boolean isSuccess() {
        return this.f17460a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f17460a;
    }

    public String toString() {
        return C2690b.f17464b.serialize((C2690b) this, false);
    }

    public String toStringMultiline() {
        return C2690b.f17464b.serialize((C2690b) this, true);
    }
}
