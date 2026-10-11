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
public final class UploadErrorWithProperties {
    public static final UploadErrorWithProperties OTHER = new UploadErrorWithProperties().m11132c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17443a;

    /* renamed from: b */
    public UploadWriteFailed f17444b;

    /* renamed from: c */
    public InvalidPropertyGroupError f17445c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        PROPERTIES_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.UploadErrorWithProperties$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2680a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17446a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17446a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17446a[Tag.PROPERTIES_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17446a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.UploadErrorWithProperties$b */
    /* loaded from: classes4.dex */
    public static class C2681b extends UnionSerializer<UploadErrorWithProperties> {

        /* renamed from: b */
        public static final C2681b f17447b = new C2681b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UploadErrorWithProperties deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UploadErrorWithProperties uploadErrorWithProperties;
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
                uploadErrorWithProperties = UploadErrorWithProperties.path(UploadWriteFailed.C2697a.f17477b.deserialize(jsonParser, true));
            } else if ("properties_error".equals(readTag)) {
                StoneSerializer.expectField("properties_error", jsonParser);
                uploadErrorWithProperties = UploadErrorWithProperties.propertiesError(InvalidPropertyGroupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                if (!Constants.ATTRVAL_OTHER.equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                uploadErrorWithProperties = UploadErrorWithProperties.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return uploadErrorWithProperties;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UploadErrorWithProperties uploadErrorWithProperties, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2680a.f17446a[uploadErrorWithProperties.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                UploadWriteFailed.C2697a.f17477b.serialize(uploadErrorWithProperties.f17444b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("properties_error", jsonGenerator);
                jsonGenerator.writeFieldName("properties_error");
                InvalidPropertyGroupError.Serializer.INSTANCE.serialize(uploadErrorWithProperties.f17445c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            throw new IllegalArgumentException("Unrecognized tag: " + uploadErrorWithProperties.tag());
        }
    }

    public static UploadErrorWithProperties path(UploadWriteFailed uploadWriteFailed) {
        if (uploadWriteFailed != null) {
            return new UploadErrorWithProperties().m11133d(Tag.PATH, uploadWriteFailed);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UploadErrorWithProperties propertiesError(InvalidPropertyGroupError invalidPropertyGroupError) {
        if (invalidPropertyGroupError != null) {
            return new UploadErrorWithProperties().m11134e(Tag.PROPERTIES_ERROR, invalidPropertyGroupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final UploadErrorWithProperties m11132c(Tag tag) {
        UploadErrorWithProperties uploadErrorWithProperties = new UploadErrorWithProperties();
        uploadErrorWithProperties.f17443a = tag;
        return uploadErrorWithProperties;
    }

    /* renamed from: d */
    public final UploadErrorWithProperties m11133d(Tag tag, UploadWriteFailed uploadWriteFailed) {
        UploadErrorWithProperties uploadErrorWithProperties = new UploadErrorWithProperties();
        uploadErrorWithProperties.f17443a = tag;
        uploadErrorWithProperties.f17444b = uploadWriteFailed;
        return uploadErrorWithProperties;
    }

    /* renamed from: e */
    public final UploadErrorWithProperties m11134e(Tag tag, InvalidPropertyGroupError invalidPropertyGroupError) {
        UploadErrorWithProperties uploadErrorWithProperties = new UploadErrorWithProperties();
        uploadErrorWithProperties.f17443a = tag;
        uploadErrorWithProperties.f17445c = invalidPropertyGroupError;
        return uploadErrorWithProperties;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UploadErrorWithProperties)) {
            return false;
        }
        UploadErrorWithProperties uploadErrorWithProperties = (UploadErrorWithProperties) obj;
        Tag tag = this.f17443a;
        if (tag != uploadErrorWithProperties.f17443a) {
            return false;
        }
        int i = C2680a.f17446a[tag.ordinal()];
        if (i == 1) {
            UploadWriteFailed uploadWriteFailed = this.f17444b;
            UploadWriteFailed uploadWriteFailed2 = uploadErrorWithProperties.f17444b;
            return uploadWriteFailed == uploadWriteFailed2 || uploadWriteFailed.equals(uploadWriteFailed2);
        }
        if (i != 2) {
            return i == 3;
        }
        InvalidPropertyGroupError invalidPropertyGroupError = this.f17445c;
        InvalidPropertyGroupError invalidPropertyGroupError2 = uploadErrorWithProperties.f17445c;
        return invalidPropertyGroupError == invalidPropertyGroupError2 || invalidPropertyGroupError.equals(invalidPropertyGroupError2);
    }

    public UploadWriteFailed getPathValue() {
        if (this.f17443a == Tag.PATH) {
            return this.f17444b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17443a.name());
    }

    public InvalidPropertyGroupError getPropertiesErrorValue() {
        if (this.f17443a == Tag.PROPERTIES_ERROR) {
            return this.f17445c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag." + this.f17443a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17443a, this.f17444b, this.f17445c});
    }

    public boolean isOther() {
        return this.f17443a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17443a == Tag.PATH;
    }

    public boolean isPropertiesError() {
        return this.f17443a == Tag.PROPERTIES_ERROR;
    }

    public Tag tag() {
        return this.f17443a;
    }

    public String toString() {
        return C2681b.f17447b.serialize((C2681b) this, false);
    }

    public String toStringMultiline() {
        return C2681b.f17447b.serialize((C2681b) this, true);
    }
}
