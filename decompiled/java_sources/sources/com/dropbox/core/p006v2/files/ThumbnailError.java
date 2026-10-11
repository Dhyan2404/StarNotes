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
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class ThumbnailError {

    /* renamed from: a */
    public Tag f17416a;

    /* renamed from: b */
    public LookupError f17417b;
    public static final ThumbnailError UNSUPPORTED_EXTENSION = new ThumbnailError().m11098b(Tag.UNSUPPORTED_EXTENSION);
    public static final ThumbnailError UNSUPPORTED_IMAGE = new ThumbnailError().m11098b(Tag.UNSUPPORTED_IMAGE);
    public static final ThumbnailError CONVERSION_ERROR = new ThumbnailError().m11098b(Tag.CONVERSION_ERROR);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_IMAGE,
        CONVERSION_ERROR
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2666a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17418a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17418a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17418a[Tag.UNSUPPORTED_EXTENSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17418a[Tag.UNSUPPORTED_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17418a[Tag.CONVERSION_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailError$b */
    /* loaded from: classes4.dex */
    public static class C2667b extends UnionSerializer<ThumbnailError> {

        /* renamed from: b */
        public static final C2667b f17419b = new C2667b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ThumbnailError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ThumbnailError thumbnailError;
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
                thumbnailError = ThumbnailError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("unsupported_extension".equals(readTag)) {
                thumbnailError = ThumbnailError.UNSUPPORTED_EXTENSION;
            } else if ("unsupported_image".equals(readTag)) {
                thumbnailError = ThumbnailError.UNSUPPORTED_IMAGE;
            } else {
                if (!"conversion_error".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                thumbnailError = ThumbnailError.CONVERSION_ERROR;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return thumbnailError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ThumbnailError thumbnailError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2666a.f17418a[thumbnailError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(thumbnailError.f17417b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("unsupported_extension");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("unsupported_image");
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("conversion_error");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + thumbnailError.tag());
            }
        }
    }

    public static ThumbnailError path(LookupError lookupError) {
        if (lookupError != null) {
            return new ThumbnailError().m11099c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ThumbnailError m11098b(Tag tag) {
        ThumbnailError thumbnailError = new ThumbnailError();
        thumbnailError.f17416a = tag;
        return thumbnailError;
    }

    /* renamed from: c */
    public final ThumbnailError m11099c(Tag tag, LookupError lookupError) {
        ThumbnailError thumbnailError = new ThumbnailError();
        thumbnailError.f17416a = tag;
        thumbnailError.f17417b = lookupError;
        return thumbnailError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ThumbnailError)) {
            return false;
        }
        ThumbnailError thumbnailError = (ThumbnailError) obj;
        Tag tag = this.f17416a;
        if (tag != thumbnailError.f17416a) {
            return false;
        }
        int i = C2666a.f17418a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        LookupError lookupError = this.f17417b;
        LookupError lookupError2 = thumbnailError.f17417b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17416a == Tag.PATH) {
            return this.f17417b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17416a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17416a, this.f17417b});
    }

    public boolean isConversionError() {
        return this.f17416a == Tag.CONVERSION_ERROR;
    }

    public boolean isPath() {
        return this.f17416a == Tag.PATH;
    }

    public boolean isUnsupportedExtension() {
        return this.f17416a == Tag.UNSUPPORTED_EXTENSION;
    }

    public boolean isUnsupportedImage() {
        return this.f17416a == Tag.UNSUPPORTED_IMAGE;
    }

    public Tag tag() {
        return this.f17416a;
    }

    public String toString() {
        return C2667b.f17419b.serialize((C2667b) this, false);
    }

    public String toStringMultiline() {
        return C2667b.f17419b.serialize((C2667b) this, true);
    }
}
