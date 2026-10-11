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
public final class DownloadZipError {

    /* renamed from: a */
    public Tag f17129a;

    /* renamed from: b */
    public LookupError f17130b;
    public static final DownloadZipError TOO_LARGE = new DownloadZipError().m10733b(Tag.TOO_LARGE);
    public static final DownloadZipError TOO_MANY_FILES = new DownloadZipError().m10733b(Tag.TOO_MANY_FILES);
    public static final DownloadZipError OTHER = new DownloadZipError().m10733b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        TOO_LARGE,
        TOO_MANY_FILES,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.DownloadZipError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2531a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17131a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17131a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17131a[Tag.TOO_LARGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17131a[Tag.TOO_MANY_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17131a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DownloadZipError$b */
    /* loaded from: classes4.dex */
    public static class C2532b extends UnionSerializer<DownloadZipError> {

        /* renamed from: b */
        public static final C2532b f17132b = new C2532b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DownloadZipError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DownloadZipError downloadZipError;
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
                downloadZipError = DownloadZipError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                downloadZipError = "too_large".equals(readTag) ? DownloadZipError.TOO_LARGE : "too_many_files".equals(readTag) ? DownloadZipError.TOO_MANY_FILES : DownloadZipError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return downloadZipError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DownloadZipError downloadZipError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2531a.f17131a[downloadZipError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(downloadZipError.f17130b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("too_large");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    public static DownloadZipError path(LookupError lookupError) {
        if (lookupError != null) {
            return new DownloadZipError().m10734c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final DownloadZipError m10733b(Tag tag) {
        DownloadZipError downloadZipError = new DownloadZipError();
        downloadZipError.f17129a = tag;
        return downloadZipError;
    }

    /* renamed from: c */
    public final DownloadZipError m10734c(Tag tag, LookupError lookupError) {
        DownloadZipError downloadZipError = new DownloadZipError();
        downloadZipError.f17129a = tag;
        downloadZipError.f17130b = lookupError;
        return downloadZipError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DownloadZipError)) {
            return false;
        }
        DownloadZipError downloadZipError = (DownloadZipError) obj;
        Tag tag = this.f17129a;
        if (tag != downloadZipError.f17129a) {
            return false;
        }
        int i = C2531a.f17131a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        LookupError lookupError = this.f17130b;
        LookupError lookupError2 = downloadZipError.f17130b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17129a == Tag.PATH) {
            return this.f17130b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17129a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17129a, this.f17130b});
    }

    public boolean isOther() {
        return this.f17129a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17129a == Tag.PATH;
    }

    public boolean isTooLarge() {
        return this.f17129a == Tag.TOO_LARGE;
    }

    public boolean isTooManyFiles() {
        return this.f17129a == Tag.TOO_MANY_FILES;
    }

    public Tag tag() {
        return this.f17129a;
    }

    public String toString() {
        return C2532b.f17132b.serialize((C2532b) this, false);
    }

    public String toStringMultiline() {
        return C2532b.f17132b.serialize((C2532b) this, true);
    }
}
