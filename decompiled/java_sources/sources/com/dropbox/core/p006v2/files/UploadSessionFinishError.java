package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.p006v2.files.UploadSessionLookupError;
import com.dropbox.core.p006v2.files.WriteError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
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
public final class UploadSessionFinishError {

    /* renamed from: a */
    public Tag f17465a;

    /* renamed from: b */
    public UploadSessionLookupError f17466b;

    /* renamed from: c */
    public WriteError f17467c;

    /* renamed from: d */
    public InvalidPropertyGroupError f17468d;
    public static final UploadSessionFinishError TOO_MANY_SHARED_FOLDER_TARGETS = new UploadSessionFinishError().m11165d(Tag.TOO_MANY_SHARED_FOLDER_TARGETS);
    public static final UploadSessionFinishError TOO_MANY_WRITE_OPERATIONS = new UploadSessionFinishError().m11165d(Tag.TOO_MANY_WRITE_OPERATIONS);
    public static final UploadSessionFinishError OTHER = new UploadSessionFinishError().m11165d(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        LOOKUP_FAILED,
        PATH,
        PROPERTIES_ERROR,
        TOO_MANY_SHARED_FOLDER_TARGETS,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2691a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17469a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17469a = iArr;
            try {
                iArr[Tag.LOOKUP_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17469a[Tag.PATH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17469a[Tag.PROPERTIES_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17469a[Tag.TOO_MANY_SHARED_FOLDER_TARGETS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17469a[Tag.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17469a[Tag.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionFinishError$b */
    /* loaded from: classes4.dex */
    public static class C2692b extends UnionSerializer<UploadSessionFinishError> {

        /* renamed from: b */
        public static final C2692b f17470b = new C2692b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionFinishError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UploadSessionFinishError uploadSessionFinishError;
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
            if ("lookup_failed".equals(readTag)) {
                StoneSerializer.expectField("lookup_failed", jsonParser);
                uploadSessionFinishError = UploadSessionFinishError.lookupFailed(UploadSessionLookupError.C2694b.f17474b.deserialize(jsonParser));
            } else if ("path".equals(readTag)) {
                StoneSerializer.expectField("path", jsonParser);
                uploadSessionFinishError = UploadSessionFinishError.path(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else if ("properties_error".equals(readTag)) {
                StoneSerializer.expectField("properties_error", jsonParser);
                uploadSessionFinishError = UploadSessionFinishError.propertiesError(InvalidPropertyGroupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                uploadSessionFinishError = "too_many_shared_folder_targets".equals(readTag) ? UploadSessionFinishError.TOO_MANY_SHARED_FOLDER_TARGETS : "too_many_write_operations".equals(readTag) ? UploadSessionFinishError.TOO_MANY_WRITE_OPERATIONS : UploadSessionFinishError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return uploadSessionFinishError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionFinishError uploadSessionFinishError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2691a.f17469a[uploadSessionFinishError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("lookup_failed", jsonGenerator);
                jsonGenerator.writeFieldName("lookup_failed");
                UploadSessionLookupError.C2694b.f17474b.serialize(uploadSessionFinishError.f17466b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                WriteError.C2702b.f17485b.serialize(uploadSessionFinishError.f17467c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                InvalidPropertyGroupError.Serializer.INSTANCE.serialize(uploadSessionFinishError.f17468d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("too_many_shared_folder_targets");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_write_operations");
            }
        }
    }

    public static UploadSessionFinishError lookupFailed(UploadSessionLookupError uploadSessionLookupError) {
        if (uploadSessionLookupError != null) {
            return new UploadSessionFinishError().m11166e(Tag.LOOKUP_FAILED, uploadSessionLookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UploadSessionFinishError path(WriteError writeError) {
        if (writeError != null) {
            return new UploadSessionFinishError().m11167f(Tag.PATH, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UploadSessionFinishError propertiesError(InvalidPropertyGroupError invalidPropertyGroupError) {
        if (invalidPropertyGroupError != null) {
            return new UploadSessionFinishError().m11168g(Tag.PROPERTIES_ERROR, invalidPropertyGroupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final UploadSessionFinishError m11165d(Tag tag) {
        UploadSessionFinishError uploadSessionFinishError = new UploadSessionFinishError();
        uploadSessionFinishError.f17465a = tag;
        return uploadSessionFinishError;
    }

    /* renamed from: e */
    public final UploadSessionFinishError m11166e(Tag tag, UploadSessionLookupError uploadSessionLookupError) {
        UploadSessionFinishError uploadSessionFinishError = new UploadSessionFinishError();
        uploadSessionFinishError.f17465a = tag;
        uploadSessionFinishError.f17466b = uploadSessionLookupError;
        return uploadSessionFinishError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionFinishError)) {
            return false;
        }
        UploadSessionFinishError uploadSessionFinishError = (UploadSessionFinishError) obj;
        Tag tag = this.f17465a;
        if (tag != uploadSessionFinishError.f17465a) {
            return false;
        }
        switch (C2691a.f17469a[tag.ordinal()]) {
            case 1:
                UploadSessionLookupError uploadSessionLookupError = this.f17466b;
                UploadSessionLookupError uploadSessionLookupError2 = uploadSessionFinishError.f17466b;
                return uploadSessionLookupError == uploadSessionLookupError2 || uploadSessionLookupError.equals(uploadSessionLookupError2);
            case 2:
                WriteError writeError = this.f17467c;
                WriteError writeError2 = uploadSessionFinishError.f17467c;
                return writeError == writeError2 || writeError.equals(writeError2);
            case 3:
                InvalidPropertyGroupError invalidPropertyGroupError = this.f17468d;
                InvalidPropertyGroupError invalidPropertyGroupError2 = uploadSessionFinishError.f17468d;
                return invalidPropertyGroupError == invalidPropertyGroupError2 || invalidPropertyGroupError.equals(invalidPropertyGroupError2);
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final UploadSessionFinishError m11167f(Tag tag, WriteError writeError) {
        UploadSessionFinishError uploadSessionFinishError = new UploadSessionFinishError();
        uploadSessionFinishError.f17465a = tag;
        uploadSessionFinishError.f17467c = writeError;
        return uploadSessionFinishError;
    }

    /* renamed from: g */
    public final UploadSessionFinishError m11168g(Tag tag, InvalidPropertyGroupError invalidPropertyGroupError) {
        UploadSessionFinishError uploadSessionFinishError = new UploadSessionFinishError();
        uploadSessionFinishError.f17465a = tag;
        uploadSessionFinishError.f17468d = invalidPropertyGroupError;
        return uploadSessionFinishError;
    }

    public UploadSessionLookupError getLookupFailedValue() {
        if (this.f17465a == Tag.LOOKUP_FAILED) {
            return this.f17466b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LOOKUP_FAILED, but was Tag." + this.f17465a.name());
    }

    public WriteError getPathValue() {
        if (this.f17465a == Tag.PATH) {
            return this.f17467c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17465a.name());
    }

    public InvalidPropertyGroupError getPropertiesErrorValue() {
        if (this.f17465a == Tag.PROPERTIES_ERROR) {
            return this.f17468d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag." + this.f17465a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17465a, this.f17466b, this.f17467c, this.f17468d});
    }

    public boolean isLookupFailed() {
        return this.f17465a == Tag.LOOKUP_FAILED;
    }

    public boolean isOther() {
        return this.f17465a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17465a == Tag.PATH;
    }

    public boolean isPropertiesError() {
        return this.f17465a == Tag.PROPERTIES_ERROR;
    }

    public boolean isTooManySharedFolderTargets() {
        return this.f17465a == Tag.TOO_MANY_SHARED_FOLDER_TARGETS;
    }

    public boolean isTooManyWriteOperations() {
        return this.f17465a == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public Tag tag() {
        return this.f17465a;
    }

    public String toString() {
        return C2692b.f17470b.serialize((C2692b) this, false);
    }

    public String toStringMultiline() {
        return C2692b.f17470b.serialize((C2692b) this, true);
    }
}
