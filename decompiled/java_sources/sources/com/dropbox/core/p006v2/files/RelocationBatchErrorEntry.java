package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.RelocationError;
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
public final class RelocationBatchErrorEntry {

    /* renamed from: a */
    public Tag f17310a;

    /* renamed from: b */
    public RelocationError f17311b;
    public static final RelocationBatchErrorEntry INTERNAL_ERROR = new RelocationBatchErrorEntry().m10950b(Tag.INTERNAL_ERROR);
    public static final RelocationBatchErrorEntry TOO_MANY_WRITE_OPERATIONS = new RelocationBatchErrorEntry().m10950b(Tag.TOO_MANY_WRITE_OPERATIONS);
    public static final RelocationBatchErrorEntry OTHER = new RelocationBatchErrorEntry().m10950b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        RELOCATION_ERROR,
        INTERNAL_ERROR,
        TOO_MANY_WRITE_OPERATIONS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchErrorEntry$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2613a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17312a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17312a = iArr;
            try {
                iArr[Tag.RELOCATION_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17312a[Tag.INTERNAL_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17312a[Tag.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17312a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationBatchErrorEntry$b */
    /* loaded from: classes4.dex */
    public static class C2614b extends UnionSerializer<RelocationBatchErrorEntry> {

        /* renamed from: b */
        public static final C2614b f17313b = new C2614b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationBatchErrorEntry deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelocationBatchErrorEntry relocationBatchErrorEntry;
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
            if ("relocation_error".equals(readTag)) {
                StoneSerializer.expectField("relocation_error", jsonParser);
                relocationBatchErrorEntry = RelocationBatchErrorEntry.relocationError(RelocationError.C2629b.f17348b.deserialize(jsonParser));
            } else {
                relocationBatchErrorEntry = "internal_error".equals(readTag) ? RelocationBatchErrorEntry.INTERNAL_ERROR : "too_many_write_operations".equals(readTag) ? RelocationBatchErrorEntry.TOO_MANY_WRITE_OPERATIONS : RelocationBatchErrorEntry.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return relocationBatchErrorEntry;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationBatchErrorEntry relocationBatchErrorEntry, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2613a.f17312a[relocationBatchErrorEntry.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("relocation_error", jsonGenerator);
                jsonGenerator.writeFieldName("relocation_error");
                RelocationError.C2629b.f17348b.serialize(relocationBatchErrorEntry.f17311b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("internal_error");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_write_operations");
            }
        }
    }

    public static RelocationBatchErrorEntry relocationError(RelocationError relocationError) {
        if (relocationError != null) {
            return new RelocationBatchErrorEntry().m10951c(Tag.RELOCATION_ERROR, relocationError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final RelocationBatchErrorEntry m10950b(Tag tag) {
        RelocationBatchErrorEntry relocationBatchErrorEntry = new RelocationBatchErrorEntry();
        relocationBatchErrorEntry.f17310a = tag;
        return relocationBatchErrorEntry;
    }

    /* renamed from: c */
    public final RelocationBatchErrorEntry m10951c(Tag tag, RelocationError relocationError) {
        RelocationBatchErrorEntry relocationBatchErrorEntry = new RelocationBatchErrorEntry();
        relocationBatchErrorEntry.f17310a = tag;
        relocationBatchErrorEntry.f17311b = relocationError;
        return relocationBatchErrorEntry;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelocationBatchErrorEntry)) {
            return false;
        }
        RelocationBatchErrorEntry relocationBatchErrorEntry = (RelocationBatchErrorEntry) obj;
        Tag tag = this.f17310a;
        if (tag != relocationBatchErrorEntry.f17310a) {
            return false;
        }
        int i = C2613a.f17312a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        RelocationError relocationError = this.f17311b;
        RelocationError relocationError2 = relocationBatchErrorEntry.f17311b;
        return relocationError == relocationError2 || relocationError.equals(relocationError2);
    }

    public RelocationError getRelocationErrorValue() {
        if (this.f17310a == Tag.RELOCATION_ERROR) {
            return this.f17311b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RELOCATION_ERROR, but was Tag." + this.f17310a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17310a, this.f17311b});
    }

    public boolean isInternalError() {
        return this.f17310a == Tag.INTERNAL_ERROR;
    }

    public boolean isOther() {
        return this.f17310a == Tag.OTHER;
    }

    public boolean isRelocationError() {
        return this.f17310a == Tag.RELOCATION_ERROR;
    }

    public boolean isTooManyWriteOperations() {
        return this.f17310a == Tag.TOO_MANY_WRITE_OPERATIONS;
    }

    public Tag tag() {
        return this.f17310a;
    }

    public String toString() {
        return C2614b.f17313b.serialize((C2614b) this, false);
    }

    public String toStringMultiline() {
        return C2614b.f17313b.serialize((C2614b) this, true);
    }
}
