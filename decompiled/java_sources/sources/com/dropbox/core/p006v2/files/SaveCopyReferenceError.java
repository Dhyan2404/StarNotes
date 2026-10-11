package com.dropbox.core.p006v2.files;

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
public final class SaveCopyReferenceError {

    /* renamed from: a */
    public Tag f17356a;

    /* renamed from: b */
    public WriteError f17357b;
    public static final SaveCopyReferenceError INVALID_COPY_REFERENCE = new SaveCopyReferenceError().m11017b(Tag.INVALID_COPY_REFERENCE);
    public static final SaveCopyReferenceError NO_PERMISSION = new SaveCopyReferenceError().m11017b(Tag.NO_PERMISSION);
    public static final SaveCopyReferenceError NOT_FOUND = new SaveCopyReferenceError().m11017b(Tag.NOT_FOUND);
    public static final SaveCopyReferenceError TOO_MANY_FILES = new SaveCopyReferenceError().m11017b(Tag.TOO_MANY_FILES);
    public static final SaveCopyReferenceError OTHER = new SaveCopyReferenceError().m11017b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        INVALID_COPY_REFERENCE,
        NO_PERMISSION,
        NOT_FOUND,
        TOO_MANY_FILES,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.SaveCopyReferenceError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2634a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17358a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17358a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17358a[Tag.INVALID_COPY_REFERENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17358a[Tag.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17358a[Tag.NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17358a[Tag.TOO_MANY_FILES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17358a[Tag.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SaveCopyReferenceError$b */
    /* loaded from: classes4.dex */
    public static class C2635b extends UnionSerializer<SaveCopyReferenceError> {

        /* renamed from: b */
        public static final C2635b f17359b = new C2635b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SaveCopyReferenceError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SaveCopyReferenceError saveCopyReferenceError;
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
            if ("path".equals(readTag)) {
                StoneSerializer.expectField("path", jsonParser);
                saveCopyReferenceError = SaveCopyReferenceError.path(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else {
                saveCopyReferenceError = "invalid_copy_reference".equals(readTag) ? SaveCopyReferenceError.INVALID_COPY_REFERENCE : "no_permission".equals(readTag) ? SaveCopyReferenceError.NO_PERMISSION : "not_found".equals(readTag) ? SaveCopyReferenceError.NOT_FOUND : "too_many_files".equals(readTag) ? SaveCopyReferenceError.TOO_MANY_FILES : SaveCopyReferenceError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return saveCopyReferenceError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SaveCopyReferenceError saveCopyReferenceError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2634a.f17358a[saveCopyReferenceError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                WriteError.C2702b.f17485b.serialize(saveCopyReferenceError.f17357b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("invalid_copy_reference");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("no_permission");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("not_found");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    public static SaveCopyReferenceError path(WriteError writeError) {
        if (writeError != null) {
            return new SaveCopyReferenceError().m11018c(Tag.PATH, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final SaveCopyReferenceError m11017b(Tag tag) {
        SaveCopyReferenceError saveCopyReferenceError = new SaveCopyReferenceError();
        saveCopyReferenceError.f17356a = tag;
        return saveCopyReferenceError;
    }

    /* renamed from: c */
    public final SaveCopyReferenceError m11018c(Tag tag, WriteError writeError) {
        SaveCopyReferenceError saveCopyReferenceError = new SaveCopyReferenceError();
        saveCopyReferenceError.f17356a = tag;
        saveCopyReferenceError.f17357b = writeError;
        return saveCopyReferenceError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SaveCopyReferenceError)) {
            return false;
        }
        SaveCopyReferenceError saveCopyReferenceError = (SaveCopyReferenceError) obj;
        Tag tag = this.f17356a;
        if (tag != saveCopyReferenceError.f17356a) {
            return false;
        }
        switch (C2634a.f17358a[tag.ordinal()]) {
            case 1:
                WriteError writeError = this.f17357b;
                WriteError writeError2 = saveCopyReferenceError.f17357b;
                return writeError == writeError2 || writeError.equals(writeError2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public WriteError getPathValue() {
        if (this.f17356a == Tag.PATH) {
            return this.f17357b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17356a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17356a, this.f17357b});
    }

    public boolean isInvalidCopyReference() {
        return this.f17356a == Tag.INVALID_COPY_REFERENCE;
    }

    public boolean isNoPermission() {
        return this.f17356a == Tag.NO_PERMISSION;
    }

    public boolean isNotFound() {
        return this.f17356a == Tag.NOT_FOUND;
    }

    public boolean isOther() {
        return this.f17356a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17356a == Tag.PATH;
    }

    public boolean isTooManyFiles() {
        return this.f17356a == Tag.TOO_MANY_FILES;
    }

    public Tag tag() {
        return this.f17356a;
    }

    public String toString() {
        return C2635b.f17359b.serialize((C2635b) this, false);
    }

    public String toStringMultiline() {
        return C2635b.f17359b.serialize((C2635b) this, true);
    }
}
