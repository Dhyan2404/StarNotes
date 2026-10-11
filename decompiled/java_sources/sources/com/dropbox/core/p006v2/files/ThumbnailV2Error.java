package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
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
public final class ThumbnailV2Error {

    /* renamed from: a */
    public Tag f17431a;

    /* renamed from: b */
    public LookupError f17432b;
    public static final ThumbnailV2Error UNSUPPORTED_EXTENSION = new ThumbnailV2Error().m11117b(Tag.UNSUPPORTED_EXTENSION);
    public static final ThumbnailV2Error UNSUPPORTED_IMAGE = new ThumbnailV2Error().m11117b(Tag.UNSUPPORTED_IMAGE);
    public static final ThumbnailV2Error CONVERSION_ERROR = new ThumbnailV2Error().m11117b(Tag.CONVERSION_ERROR);
    public static final ThumbnailV2Error ACCESS_DENIED = new ThumbnailV2Error().m11117b(Tag.ACCESS_DENIED);
    public static final ThumbnailV2Error NOT_FOUND = new ThumbnailV2Error().m11117b(Tag.NOT_FOUND);
    public static final ThumbnailV2Error OTHER = new ThumbnailV2Error().m11117b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_IMAGE,
        CONVERSION_ERROR,
        ACCESS_DENIED,
        NOT_FOUND,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailV2Error$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2675a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17433a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17433a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17433a[Tag.UNSUPPORTED_EXTENSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17433a[Tag.UNSUPPORTED_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17433a[Tag.CONVERSION_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17433a[Tag.ACCESS_DENIED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17433a[Tag.NOT_FOUND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17433a[Tag.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailV2Error$b */
    /* loaded from: classes4.dex */
    public static class C2676b extends UnionSerializer<ThumbnailV2Error> {

        /* renamed from: b */
        public static final C2676b f17434b = new C2676b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ThumbnailV2Error deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ThumbnailV2Error thumbnailV2Error;
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
                thumbnailV2Error = ThumbnailV2Error.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                thumbnailV2Error = "unsupported_extension".equals(readTag) ? ThumbnailV2Error.UNSUPPORTED_EXTENSION : "unsupported_image".equals(readTag) ? ThumbnailV2Error.UNSUPPORTED_IMAGE : "conversion_error".equals(readTag) ? ThumbnailV2Error.CONVERSION_ERROR : "access_denied".equals(readTag) ? ThumbnailV2Error.ACCESS_DENIED : "not_found".equals(readTag) ? ThumbnailV2Error.NOT_FOUND : ThumbnailV2Error.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return thumbnailV2Error;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ThumbnailV2Error thumbnailV2Error, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2675a.f17433a[thumbnailV2Error.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("path", jsonGenerator);
                    jsonGenerator.writeFieldName("path");
                    LookupError.Serializer.INSTANCE.serialize(thumbnailV2Error.f17432b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("unsupported_extension");
                    return;
                case 3:
                    jsonGenerator.writeString("unsupported_image");
                    return;
                case 4:
                    jsonGenerator.writeString("conversion_error");
                    return;
                case 5:
                    jsonGenerator.writeString("access_denied");
                    return;
                case 6:
                    jsonGenerator.writeString("not_found");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static ThumbnailV2Error path(LookupError lookupError) {
        if (lookupError != null) {
            return new ThumbnailV2Error().m11118c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ThumbnailV2Error m11117b(Tag tag) {
        ThumbnailV2Error thumbnailV2Error = new ThumbnailV2Error();
        thumbnailV2Error.f17431a = tag;
        return thumbnailV2Error;
    }

    /* renamed from: c */
    public final ThumbnailV2Error m11118c(Tag tag, LookupError lookupError) {
        ThumbnailV2Error thumbnailV2Error = new ThumbnailV2Error();
        thumbnailV2Error.f17431a = tag;
        thumbnailV2Error.f17432b = lookupError;
        return thumbnailV2Error;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ThumbnailV2Error)) {
            return false;
        }
        ThumbnailV2Error thumbnailV2Error = (ThumbnailV2Error) obj;
        Tag tag = this.f17431a;
        if (tag != thumbnailV2Error.f17431a) {
            return false;
        }
        switch (C2675a.f17433a[tag.ordinal()]) {
            case 1:
                LookupError lookupError = this.f17432b;
                LookupError lookupError2 = thumbnailV2Error.f17432b;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public LookupError getPathValue() {
        if (this.f17431a == Tag.PATH) {
            return this.f17432b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17431a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17431a, this.f17432b});
    }

    public boolean isAccessDenied() {
        return this.f17431a == Tag.ACCESS_DENIED;
    }

    public boolean isConversionError() {
        return this.f17431a == Tag.CONVERSION_ERROR;
    }

    public boolean isNotFound() {
        return this.f17431a == Tag.NOT_FOUND;
    }

    public boolean isOther() {
        return this.f17431a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17431a == Tag.PATH;
    }

    public boolean isUnsupportedExtension() {
        return this.f17431a == Tag.UNSUPPORTED_EXTENSION;
    }

    public boolean isUnsupportedImage() {
        return this.f17431a == Tag.UNSUPPORTED_IMAGE;
    }

    public Tag tag() {
        return this.f17431a;
    }

    public String toString() {
        return C2676b.f17434b.serialize((C2676b) this, false);
    }

    public String toStringMultiline() {
        return C2676b.f17434b.serialize((C2676b) this, true);
    }
}
