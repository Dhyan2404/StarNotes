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
public final class SaveUrlError {
    public static final SaveUrlError DOWNLOAD_FAILED = new SaveUrlError().m11024b(Tag.DOWNLOAD_FAILED);
    public static final SaveUrlError INVALID_URL = new SaveUrlError().m11024b(Tag.INVALID_URL);
    public static final SaveUrlError NOT_FOUND = new SaveUrlError().m11024b(Tag.NOT_FOUND);
    public static final SaveUrlError OTHER = new SaveUrlError().m11024b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17361a;

    /* renamed from: b */
    public WriteError f17362b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        DOWNLOAD_FAILED,
        INVALID_URL,
        NOT_FOUND,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.SaveUrlError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2637a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17363a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17363a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17363a[Tag.DOWNLOAD_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17363a[Tag.INVALID_URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17363a[Tag.NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17363a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SaveUrlError$b */
    /* loaded from: classes4.dex */
    public static class C2638b extends UnionSerializer<SaveUrlError> {

        /* renamed from: b */
        public static final C2638b f17364b = new C2638b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SaveUrlError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SaveUrlError saveUrlError;
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
                saveUrlError = SaveUrlError.path(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else {
                saveUrlError = "download_failed".equals(readTag) ? SaveUrlError.DOWNLOAD_FAILED : "invalid_url".equals(readTag) ? SaveUrlError.INVALID_URL : "not_found".equals(readTag) ? SaveUrlError.NOT_FOUND : SaveUrlError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return saveUrlError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SaveUrlError saveUrlError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2637a.f17363a[saveUrlError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                WriteError.C2702b.f17485b.serialize(saveUrlError.f17362b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("download_failed");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("invalid_url");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("not_found");
            }
        }
    }

    public static SaveUrlError path(WriteError writeError) {
        if (writeError != null) {
            return new SaveUrlError().m11025c(Tag.PATH, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final SaveUrlError m11024b(Tag tag) {
        SaveUrlError saveUrlError = new SaveUrlError();
        saveUrlError.f17361a = tag;
        return saveUrlError;
    }

    /* renamed from: c */
    public final SaveUrlError m11025c(Tag tag, WriteError writeError) {
        SaveUrlError saveUrlError = new SaveUrlError();
        saveUrlError.f17361a = tag;
        saveUrlError.f17362b = writeError;
        return saveUrlError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SaveUrlError)) {
            return false;
        }
        SaveUrlError saveUrlError = (SaveUrlError) obj;
        Tag tag = this.f17361a;
        if (tag != saveUrlError.f17361a) {
            return false;
        }
        int i = C2637a.f17363a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4 || i == 5;
        }
        WriteError writeError = this.f17362b;
        WriteError writeError2 = saveUrlError.f17362b;
        return writeError == writeError2 || writeError.equals(writeError2);
    }

    public WriteError getPathValue() {
        if (this.f17361a == Tag.PATH) {
            return this.f17362b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17361a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17361a, this.f17362b});
    }

    public boolean isDownloadFailed() {
        return this.f17361a == Tag.DOWNLOAD_FAILED;
    }

    public boolean isInvalidUrl() {
        return this.f17361a == Tag.INVALID_URL;
    }

    public boolean isNotFound() {
        return this.f17361a == Tag.NOT_FOUND;
    }

    public boolean isOther() {
        return this.f17361a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17361a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17361a;
    }

    public String toString() {
        return C2638b.f17364b.serialize((C2638b) this, false);
    }

    public String toStringMultiline() {
        return C2638b.f17364b.serialize((C2638b) this, true);
    }
}
