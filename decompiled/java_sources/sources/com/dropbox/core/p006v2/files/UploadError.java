package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.InvalidPropertyGroupError;
import com.dropbox.core.p006v2.files.UploadWriteFailed;
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
public final class UploadError {
    public static final UploadError OTHER = new UploadError().m11125c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17438a;

    /* renamed from: b */
    public UploadWriteFailed f17439b;

    /* renamed from: c */
    public InvalidPropertyGroupError f17440c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        PROPERTIES_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.UploadError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2678a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17441a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17441a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17441a[Tag.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17441a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.UploadError$b */
    /* loaded from: classes4.dex */
    public static class C2679b extends UnionSerializer<UploadError> {

        /* renamed from: b */
        public static final C2679b f17442b = new C2679b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UploadError uploadError;
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
                uploadError = UploadError.path(UploadWriteFailed.C2697a.f17477b.deserialize(jsonParser, true));
            } else if ("properties_error".equals(readTag)) {
                StoneSerializer.expectField("properties_error", jsonParser);
                uploadError = UploadError.propertiesError(InvalidPropertyGroupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                uploadError = UploadError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return uploadError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadError uploadError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2678a.f17441a[uploadError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                UploadWriteFailed.C2697a.f17477b.serialize(uploadError.f17439b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("properties_error", jsonGenerator);
            jsonGenerator.writeFieldName("properties_error");
            InvalidPropertyGroupError.Serializer.INSTANCE.serialize(uploadError.f17440c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static UploadError path(UploadWriteFailed uploadWriteFailed) {
        if (uploadWriteFailed != null) {
            return new UploadError().m11126d(Tag.PATH, uploadWriteFailed);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UploadError propertiesError(InvalidPropertyGroupError invalidPropertyGroupError) {
        if (invalidPropertyGroupError != null) {
            return new UploadError().m11127e(Tag.PROPERTIES_ERROR, invalidPropertyGroupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UploadError m11125c(Tag tag) {
        UploadError uploadError = new UploadError();
        uploadError.f17438a = tag;
        return uploadError;
    }

    /* renamed from: d */
    public final UploadError m11126d(Tag tag, UploadWriteFailed uploadWriteFailed) {
        UploadError uploadError = new UploadError();
        uploadError.f17438a = tag;
        uploadError.f17439b = uploadWriteFailed;
        return uploadError;
    }

    /* renamed from: e */
    public final UploadError m11127e(Tag tag, InvalidPropertyGroupError invalidPropertyGroupError) {
        UploadError uploadError = new UploadError();
        uploadError.f17438a = tag;
        uploadError.f17440c = invalidPropertyGroupError;
        return uploadError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadError)) {
            return false;
        }
        UploadError uploadError = (UploadError) obj;
        Tag tag = this.f17438a;
        if (tag != uploadError.f17438a) {
            return false;
        }
        int i = C2678a.f17441a[tag.ordinal()];
        if (i == 1) {
            UploadWriteFailed uploadWriteFailed = this.f17439b;
            UploadWriteFailed uploadWriteFailed2 = uploadError.f17439b;
            return uploadWriteFailed == uploadWriteFailed2 || uploadWriteFailed.equals(uploadWriteFailed2);
        }
        if (i != 2) {
            return i == 3;
        }
        InvalidPropertyGroupError invalidPropertyGroupError = this.f17440c;
        InvalidPropertyGroupError invalidPropertyGroupError2 = uploadError.f17440c;
        return invalidPropertyGroupError == invalidPropertyGroupError2 || invalidPropertyGroupError.equals(invalidPropertyGroupError2);
    }

    public UploadWriteFailed getPathValue() {
        if (this.f17438a == Tag.PATH) {
            return this.f17439b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17438a.name());
    }

    public InvalidPropertyGroupError getPropertiesErrorValue() {
        if (this.f17438a == Tag.PROPERTIES_ERROR) {
            return this.f17440c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag." + this.f17438a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17438a, this.f17439b, this.f17440c});
    }

    public boolean isOther() {
        return this.f17438a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17438a == Tag.PATH;
    }

    public boolean isPropertiesError() {
        return this.f17438a == Tag.PROPERTIES_ERROR;
    }

    public Tag tag() {
        return this.f17438a;
    }

    public String toString() {
        return C2679b.f17442b.serialize((C2679b) this, false);
    }

    public String toStringMultiline() {
        return C2679b.f17442b.serialize((C2679b) this, true);
    }
}
