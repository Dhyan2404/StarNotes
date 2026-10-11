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
public final class ExportError {

    /* renamed from: a */
    public Tag f17136a;

    /* renamed from: b */
    public LookupError f17137b;
    public static final ExportError NON_EXPORTABLE = new ExportError().m10740b(Tag.NON_EXPORTABLE);
    public static final ExportError RETRY_ERROR = new ExportError().m10740b(Tag.RETRY_ERROR);
    public static final ExportError OTHER = new ExportError().m10740b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<ExportError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public ExportError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ExportError exportError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("path".equals(readTag)) {
                    StoneSerializer.expectField("path", jsonParser);
                    exportError = ExportError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
                } else if ("non_exportable".equals(readTag)) {
                    exportError = ExportError.NON_EXPORTABLE;
                } else if ("retry_error".equals(readTag)) {
                    exportError = ExportError.RETRY_ERROR;
                } else {
                    exportError = ExportError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return exportError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ExportError exportError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2534a.f17138a[exportError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(exportError.f17137b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("non_exportable");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("retry_error");
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        NON_EXPORTABLE,
        RETRY_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.ExportError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2534a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17138a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17138a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17138a[Tag.NON_EXPORTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17138a[Tag.RETRY_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17138a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static ExportError path(LookupError lookupError) {
        if (lookupError != null) {
            return new ExportError().m10741c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ExportError m10740b(Tag tag) {
        ExportError exportError = new ExportError();
        exportError.f17136a = tag;
        return exportError;
    }

    /* renamed from: c */
    public final ExportError m10741c(Tag tag, LookupError lookupError) {
        ExportError exportError = new ExportError();
        exportError.f17136a = tag;
        exportError.f17137b = lookupError;
        return exportError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ExportError)) {
            return false;
        }
        ExportError exportError = (ExportError) obj;
        Tag tag = this.f17136a;
        if (tag != exportError.f17136a) {
            return false;
        }
        int i = C2534a.f17138a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        LookupError lookupError = this.f17137b;
        LookupError lookupError2 = exportError.f17137b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17136a == Tag.PATH) {
            return this.f17137b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17136a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17136a, this.f17137b});
    }

    public boolean isNonExportable() {
        return this.f17136a == Tag.NON_EXPORTABLE;
    }

    public boolean isOther() {
        return this.f17136a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17136a == Tag.PATH;
    }

    public boolean isRetryError() {
        return this.f17136a == Tag.RETRY_ERROR;
    }

    public Tag tag() {
        return this.f17136a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
