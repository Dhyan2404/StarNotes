package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
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
public final class DeleteError {

    /* renamed from: a */
    public Tag f17112a;

    /* renamed from: b */
    public LookupError f17113b;

    /* renamed from: c */
    public WriteError f17114c;
    public static final DeleteError TOO_MANY_WRITE_OPERATIONS = new DeleteError().m10716c(Tag.TOO_MANY_WRITE_OPERATIONS);
    public static final DeleteError TOO_MANY_FILES = new DeleteError().m10716c(Tag.TOO_MANY_FILES);
    public static final DeleteError OTHER = new DeleteError().m10716c(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH_LOOKUP,
        PATH_WRITE,
        TOO_MANY_WRITE_OPERATIONS,
        TOO_MANY_FILES,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2524a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17115a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17115a = iArr;
            try {
                iArr[Tag.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17115a[Tag.PATH_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17115a[Tag.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17115a[Tag.TOO_MANY_FILES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17115a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DeleteError$b */
    /* loaded from: classes4.dex */
    public static class C2525b extends UnionSerializer<DeleteError> {

        /* renamed from: b */
        public static final C2525b f17116b = new C2525b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DeleteError deleteError;
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
            if ("path_lookup".equals(readTag)) {
                StoneSerializer.expectField("path_lookup", jsonParser);
                deleteError = DeleteError.pathLookup(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("path_write".equals(readTag)) {
                StoneSerializer.expectField("path_write", jsonParser);
                deleteError = DeleteError.pathWrite(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else {
                deleteError = "too_many_write_operations".equals(readTag) ? DeleteError.TOO_MANY_WRITE_OPERATIONS : "too_many_files".equals(readTag) ? DeleteError.TOO_MANY_FILES : DeleteError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deleteError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteError deleteError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2524a.f17115a[deleteError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path_lookup", jsonGenerator);
                jsonGenerator.writeFieldName("path_lookup");
                LookupError.Serializer.INSTANCE.serialize(deleteError.f17113b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("path_write", jsonGenerator);
                jsonGenerator.writeFieldName("path_write");
                WriteError.C2702b.f17485b.serialize(deleteError.f17114c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("too_many_write_operations");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    public static DeleteError pathLookup(LookupError lookupError) {
        if (lookupError != null) {
            return new DeleteError().m10717d(Tag.PATH_LOOKUP, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static DeleteError pathWrite(WriteError writeError) {
        if (writeError != null) {
            return new DeleteError().m10718e(Tag.PATH_WRITE, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final DeleteError m10716c(Tag tag) {
        DeleteError deleteError = new DeleteError();
        deleteError.f17112a = tag;
        return deleteError;
    }

    /* renamed from: d */
    public final DeleteError m10717d(Tag tag, LookupError lookupError) {
        DeleteError deleteError = new DeleteError();
        deleteError.f17112a = tag;
        deleteError.f17113b = lookupError;
        return deleteError;
    }

    /* renamed from: e */
    public final DeleteError m10718e(Tag tag, WriteError writeError) {
        DeleteError deleteError = new DeleteError();
        deleteError.f17112a = tag;
        deleteError.f17114c = writeError;
        return deleteError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteError)) {
            return false;
        }
        DeleteError deleteError = (DeleteError) obj;
        Tag tag = this.f17112a;
        if (tag != deleteError.f17112a) {
            return false;
        }
        int i = C2524a.f17115a[tag.ordinal()];
        if (i == 1) {
            LookupError lookupError = this.f17113b;
            LookupError lookupError2 = deleteError.f17113b;
            return lookupError == lookupError2 || lookupError.equals(lookupError2);
        }
        if (i != 2) {
            return i == 3 || i == 4 || i == 5;
        }
        WriteError writeError = this.f17114c;
        WriteError writeError2 = deleteError.f17114c;
        return writeError == writeError2 || writeError.equals(writeError2);
    }

    public LookupError getPathLookupValue() {
        if (this.f17112a == Tag.PATH_LOOKUP) {
            return this.f17113b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH_LOOKUP, but was Tag." + this.f17112a.name());
    }

    public WriteError getPathWriteValue() {
        if (this.f17112a == Tag.PATH_WRITE) {
            return this.f17114c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH_WRITE, but was Tag." + this.f17112a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17112a, this.f17113b, this.f17114c});
    }

    public boolean isOther() {
        return this.f17112a == Tag.OTHER;
    }

    public boolean isPathLookup() {
        return this.f17112a == Tag.PATH_LOOKUP;
    }

    public boolean isPathWrite() {
        return this.f17112a == Tag.PATH_WRITE;
    }

    public boolean isTooManyFiles() {
        return this.f17112a == Tag.TOO_MANY_FILES;
    }

    public boolean isTooManyWriteOperations() {
        return this.f17112a == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public Tag tag() {
        return this.f17112a;
    }

    public String toString() {
        return C2525b.f17116b.serialize((C2525b) this, false);
    }

    public String toStringMultiline() {
        return C2525b.f17116b.serialize((C2525b) this, true);
    }
}
