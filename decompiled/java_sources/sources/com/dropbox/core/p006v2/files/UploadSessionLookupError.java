package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.UploadSessionOffsetError;
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
public final class UploadSessionLookupError {

    /* renamed from: a */
    public Tag f17471a;

    /* renamed from: b */
    public UploadSessionOffsetError f17472b;
    public static final UploadSessionLookupError NOT_FOUND = new UploadSessionLookupError().m11172b(Tag.NOT_FOUND);
    public static final UploadSessionLookupError CLOSED = new UploadSessionLookupError().m11172b(Tag.CLOSED);
    public static final UploadSessionLookupError NOT_CLOSED = new UploadSessionLookupError().m11172b(Tag.NOT_CLOSED);
    public static final UploadSessionLookupError TOO_LARGE = new UploadSessionLookupError().m11172b(Tag.TOO_LARGE);
    public static final UploadSessionLookupError OTHER = new UploadSessionLookupError().m11172b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        NOT_FOUND,
        INCORRECT_OFFSET,
        CLOSED,
        NOT_CLOSED,
        TOO_LARGE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionLookupError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2693a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17473a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17473a = iArr;
            try {
                iArr[Tag.NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17473a[Tag.INCORRECT_OFFSET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17473a[Tag.CLOSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17473a[Tag.NOT_CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17473a[Tag.TOO_LARGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17473a[Tag.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.UploadSessionLookupError$b */
    /* loaded from: classes4.dex */
    public static class C2694b extends UnionSerializer<UploadSessionLookupError> {

        /* renamed from: b */
        public static final C2694b f17474b = new C2694b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadSessionLookupError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            UploadSessionLookupError incorrectOffset = "not_found".equals(readTag) ? UploadSessionLookupError.NOT_FOUND : "incorrect_offset".equals(readTag) ? UploadSessionLookupError.incorrectOffset(UploadSessionOffsetError.C2695a.f17475b.deserialize(jsonParser, true)) : "closed".equals(readTag) ? UploadSessionLookupError.CLOSED : "not_closed".equals(readTag) ? UploadSessionLookupError.NOT_CLOSED : "too_large".equals(readTag) ? UploadSessionLookupError.TOO_LARGE : UploadSessionLookupError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return incorrectOffset;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadSessionLookupError uploadSessionLookupError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2693a.f17473a[uploadSessionLookupError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("incorrect_offset", jsonGenerator);
                UploadSessionOffsetError.C2695a.f17475b.serialize(uploadSessionLookupError.f17472b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("closed");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("not_closed");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_large");
            }
        }
    }

    public static UploadSessionLookupError incorrectOffset(UploadSessionOffsetError uploadSessionOffsetError) {
        if (uploadSessionOffsetError != null) {
            return new UploadSessionLookupError().m11173c(Tag.INCORRECT_OFFSET, uploadSessionOffsetError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final UploadSessionLookupError m11172b(Tag tag) {
        UploadSessionLookupError uploadSessionLookupError = new UploadSessionLookupError();
        uploadSessionLookupError.f17471a = tag;
        return uploadSessionLookupError;
    }

    /* renamed from: c */
    public final UploadSessionLookupError m11173c(Tag tag, UploadSessionOffsetError uploadSessionOffsetError) {
        UploadSessionLookupError uploadSessionLookupError = new UploadSessionLookupError();
        uploadSessionLookupError.f17471a = tag;
        uploadSessionLookupError.f17472b = uploadSessionOffsetError;
        return uploadSessionLookupError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadSessionLookupError)) {
            return false;
        }
        UploadSessionLookupError uploadSessionLookupError = (UploadSessionLookupError) obj;
        Tag tag = this.f17471a;
        if (tag != uploadSessionLookupError.f17471a) {
            return false;
        }
        switch (C2693a.f17473a[tag.ordinal()]) {
            case 1:
                return true;
            case 2:
                UploadSessionOffsetError uploadSessionOffsetError = this.f17472b;
                UploadSessionOffsetError uploadSessionOffsetError2 = uploadSessionLookupError.f17472b;
                return uploadSessionOffsetError == uploadSessionOffsetError2 || uploadSessionOffsetError.equals(uploadSessionOffsetError2);
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public UploadSessionOffsetError getIncorrectOffsetValue() {
        if (this.f17471a == Tag.INCORRECT_OFFSET) {
            return this.f17472b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INCORRECT_OFFSET, but was Tag." + this.f17471a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17471a, this.f17472b});
    }

    public boolean isClosed() {
        return this.f17471a == Tag.CLOSED;
    }

    public boolean isIncorrectOffset() {
        return this.f17471a == Tag.INCORRECT_OFFSET;
    }

    public boolean isNotClosed() {
        return this.f17471a == Tag.NOT_CLOSED;
    }

    public boolean isNotFound() {
        return this.f17471a == Tag.NOT_FOUND;
    }

    public boolean isOther() {
        return this.f17471a == Tag.OTHER;
    }

    public boolean isTooLarge() {
        return this.f17471a == Tag.TOO_LARGE;
    }

    public Tag tag() {
        return this.f17471a;
    }

    public String toString() {
        return C2694b.f17474b.serialize((C2694b) this, false);
    }

    public String toStringMultiline() {
        return C2694b.f17474b.serialize((C2694b) this, true);
    }
}
