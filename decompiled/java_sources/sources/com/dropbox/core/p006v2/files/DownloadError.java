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
public final class DownloadError {

    /* renamed from: a */
    public Tag f17123a;

    /* renamed from: b */
    public LookupError f17124b;
    public static final DownloadError UNSUPPORTED_FILE = new DownloadError().m10728b(Tag.UNSUPPORTED_FILE);
    public static final DownloadError OTHER = new DownloadError().m10728b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        UNSUPPORTED_FILE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.DownloadError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2529a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17125a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17125a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17125a[Tag.UNSUPPORTED_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17125a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.DownloadError$b */
    /* loaded from: classes4.dex */
    public static class C2530b extends UnionSerializer<DownloadError> {

        /* renamed from: b */
        public static final C2530b f17126b = new C2530b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DownloadError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DownloadError downloadError;
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
                downloadError = DownloadError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                downloadError = "unsupported_file".equals(readTag) ? DownloadError.UNSUPPORTED_FILE : DownloadError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return downloadError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DownloadError downloadError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2529a.f17125a[downloadError.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("unsupported_file");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            LookupError.Serializer.INSTANCE.serialize(downloadError.f17124b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static DownloadError path(LookupError lookupError) {
        if (lookupError != null) {
            return new DownloadError().m10729c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final DownloadError m10728b(Tag tag) {
        DownloadError downloadError = new DownloadError();
        downloadError.f17123a = tag;
        return downloadError;
    }

    /* renamed from: c */
    public final DownloadError m10729c(Tag tag, LookupError lookupError) {
        DownloadError downloadError = new DownloadError();
        downloadError.f17123a = tag;
        downloadError.f17124b = lookupError;
        return downloadError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DownloadError)) {
            return false;
        }
        DownloadError downloadError = (DownloadError) obj;
        Tag tag = this.f17123a;
        if (tag != downloadError.f17123a) {
            return false;
        }
        int i = C2529a.f17125a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        LookupError lookupError = this.f17124b;
        LookupError lookupError2 = downloadError.f17124b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17123a == Tag.PATH) {
            return this.f17124b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17123a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17123a, this.f17124b});
    }

    public boolean isOther() {
        return this.f17123a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17123a == Tag.PATH;
    }

    public boolean isUnsupportedFile() {
        return this.f17123a == Tag.UNSUPPORTED_FILE;
    }

    public Tag tag() {
        return this.f17123a;
    }

    public String toString() {
        return C2530b.f17126b.serialize((C2530b) this, false);
    }

    public String toStringMultiline() {
        return C2530b.f17126b.serialize((C2530b) this, true);
    }
}
