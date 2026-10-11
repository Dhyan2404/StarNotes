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
public final class PreviewError {

    /* renamed from: a */
    public Tag f17290a;

    /* renamed from: b */
    public LookupError f17291b;
    public static final PreviewError IN_PROGRESS = new PreviewError().m10920b(Tag.IN_PROGRESS);
    public static final PreviewError UNSUPPORTED_EXTENSION = new PreviewError().m10920b(Tag.UNSUPPORTED_EXTENSION);
    public static final PreviewError UNSUPPORTED_CONTENT = new PreviewError().m10920b(Tag.UNSUPPORTED_CONTENT);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        IN_PROGRESS,
        UNSUPPORTED_EXTENSION,
        UNSUPPORTED_CONTENT
    }

    /* renamed from: com.dropbox.core.v2.files.PreviewError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2606a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17292a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17292a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17292a[Tag.IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17292a[Tag.UNSUPPORTED_EXTENSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17292a[Tag.UNSUPPORTED_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.PreviewError$b */
    /* loaded from: classes4.dex */
    public static class C2607b extends UnionSerializer<PreviewError> {

        /* renamed from: b */
        public static final C2607b f17293b = new C2607b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PreviewError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PreviewError previewError;
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
                previewError = PreviewError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("in_progress".equals(readTag)) {
                previewError = PreviewError.IN_PROGRESS;
            } else if ("unsupported_extension".equals(readTag)) {
                previewError = PreviewError.UNSUPPORTED_EXTENSION;
            } else {
                if (!"unsupported_content".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                previewError = PreviewError.UNSUPPORTED_CONTENT;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return previewError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PreviewError previewError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2606a.f17292a[previewError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(previewError.f17291b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("in_progress");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("unsupported_extension");
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("unsupported_content");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + previewError.tag());
            }
        }
    }

    public static PreviewError path(LookupError lookupError) {
        if (lookupError != null) {
            return new PreviewError().m10921c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final PreviewError m10920b(Tag tag) {
        PreviewError previewError = new PreviewError();
        previewError.f17290a = tag;
        return previewError;
    }

    /* renamed from: c */
    public final PreviewError m10921c(Tag tag, LookupError lookupError) {
        PreviewError previewError = new PreviewError();
        previewError.f17290a = tag;
        previewError.f17291b = lookupError;
        return previewError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PreviewError)) {
            return false;
        }
        PreviewError previewError = (PreviewError) obj;
        Tag tag = this.f17290a;
        if (tag != previewError.f17290a) {
            return false;
        }
        int i = C2606a.f17292a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        LookupError lookupError = this.f17291b;
        LookupError lookupError2 = previewError.f17291b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17290a == Tag.PATH) {
            return this.f17291b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17290a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17290a, this.f17291b});
    }

    public boolean isInProgress() {
        return this.f17290a == Tag.IN_PROGRESS;
    }

    public boolean isPath() {
        return this.f17290a == Tag.PATH;
    }

    public boolean isUnsupportedContent() {
        return this.f17290a == Tag.UNSUPPORTED_CONTENT;
    }

    public boolean isUnsupportedExtension() {
        return this.f17290a == Tag.UNSUPPORTED_EXTENSION;
    }

    public Tag tag() {
        return this.f17290a;
    }

    public String toString() {
        return C2607b.f17293b.serialize((C2607b) this, false);
    }

    public String toStringMultiline() {
        return C2607b.f17293b.serialize((C2607b) this, true);
    }
}
