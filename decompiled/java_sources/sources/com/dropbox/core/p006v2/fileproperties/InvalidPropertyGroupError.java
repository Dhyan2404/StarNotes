package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.LookupError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class InvalidPropertyGroupError {

    /* renamed from: a */
    public Tag f16910a;

    /* renamed from: b */
    public String f16911b;

    /* renamed from: c */
    public LookupError f16912c;
    public static final InvalidPropertyGroupError RESTRICTED_CONTENT = new InvalidPropertyGroupError().m10400c(Tag.RESTRICTED_CONTENT);
    public static final InvalidPropertyGroupError OTHER = new InvalidPropertyGroupError().m10400c(Tag.OTHER);
    public static final InvalidPropertyGroupError UNSUPPORTED_FOLDER = new InvalidPropertyGroupError().m10400c(Tag.UNSUPPORTED_FOLDER);
    public static final InvalidPropertyGroupError PROPERTY_FIELD_TOO_LARGE = new InvalidPropertyGroupError().m10400c(Tag.PROPERTY_FIELD_TOO_LARGE);
    public static final InvalidPropertyGroupError DOES_NOT_FIT_TEMPLATE = new InvalidPropertyGroupError().m10400c(Tag.DOES_NOT_FIT_TEMPLATE);
    public static final InvalidPropertyGroupError DUPLICATE_PROPERTY_GROUPS = new InvalidPropertyGroupError().m10400c(Tag.DUPLICATE_PROPERTY_GROUPS);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<InvalidPropertyGroupError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public InvalidPropertyGroupError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            InvalidPropertyGroupError invalidPropertyGroupError;
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
                if ("template_not_found".equals(readTag)) {
                    StoneSerializer.expectField("template_not_found", jsonParser);
                    invalidPropertyGroupError = InvalidPropertyGroupError.templateNotFound(StoneSerializers.string().deserialize(jsonParser));
                } else if ("restricted_content".equals(readTag)) {
                    invalidPropertyGroupError = InvalidPropertyGroupError.RESTRICTED_CONTENT;
                } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                    invalidPropertyGroupError = InvalidPropertyGroupError.OTHER;
                } else if ("path".equals(readTag)) {
                    StoneSerializer.expectField("path", jsonParser);
                    invalidPropertyGroupError = InvalidPropertyGroupError.path(LookupError.C2433b.f16920b.deserialize(jsonParser));
                } else if ("unsupported_folder".equals(readTag)) {
                    invalidPropertyGroupError = InvalidPropertyGroupError.UNSUPPORTED_FOLDER;
                } else if ("property_field_too_large".equals(readTag)) {
                    invalidPropertyGroupError = InvalidPropertyGroupError.PROPERTY_FIELD_TOO_LARGE;
                } else if ("does_not_fit_template".equals(readTag)) {
                    invalidPropertyGroupError = InvalidPropertyGroupError.DOES_NOT_FIT_TEMPLATE;
                } else if ("duplicate_property_groups".equals(readTag)) {
                    invalidPropertyGroupError = InvalidPropertyGroupError.DUPLICATE_PROPERTY_GROUPS;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return invalidPropertyGroupError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(InvalidPropertyGroupError invalidPropertyGroupError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2428a.f16913a[invalidPropertyGroupError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    StoneSerializers.string().serialize((StoneSerializer<String>) invalidPropertyGroupError.f16911b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case 3:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("path", jsonGenerator);
                    jsonGenerator.writeFieldName("path");
                    LookupError.C2433b.f16920b.serialize(invalidPropertyGroupError.f16912c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("unsupported_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("property_field_too_large");
                    return;
                case 7:
                    jsonGenerator.writeString("does_not_fit_template");
                    return;
                case 8:
                    jsonGenerator.writeString("duplicate_property_groups");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + invalidPropertyGroupError.tag());
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        PATH,
        UNSUPPORTED_FOLDER,
        PROPERTY_FIELD_TOO_LARGE,
        DOES_NOT_FIT_TEMPLATE,
        DUPLICATE_PROPERTY_GROUPS
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.InvalidPropertyGroupError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2428a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16913a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16913a = iArr;
            try {
                iArr[Tag.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16913a[Tag.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16913a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16913a[Tag.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16913a[Tag.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16913a[Tag.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16913a[Tag.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16913a[Tag.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static InvalidPropertyGroupError path(LookupError lookupError) {
        if (lookupError != null) {
            return new InvalidPropertyGroupError().m10401d(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static InvalidPropertyGroupError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (Pattern.matches("(/|ptid:).*", str)) {
            return new InvalidPropertyGroupError().m10402e(Tag.TEMPLATE_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: c */
    public final InvalidPropertyGroupError m10400c(Tag tag) {
        InvalidPropertyGroupError invalidPropertyGroupError = new InvalidPropertyGroupError();
        invalidPropertyGroupError.f16910a = tag;
        return invalidPropertyGroupError;
    }

    /* renamed from: d */
    public final InvalidPropertyGroupError m10401d(Tag tag, LookupError lookupError) {
        InvalidPropertyGroupError invalidPropertyGroupError = new InvalidPropertyGroupError();
        invalidPropertyGroupError.f16910a = tag;
        invalidPropertyGroupError.f16912c = lookupError;
        return invalidPropertyGroupError;
    }

    /* renamed from: e */
    public final InvalidPropertyGroupError m10402e(Tag tag, String str) {
        InvalidPropertyGroupError invalidPropertyGroupError = new InvalidPropertyGroupError();
        invalidPropertyGroupError.f16910a = tag;
        invalidPropertyGroupError.f16911b = str;
        return invalidPropertyGroupError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof InvalidPropertyGroupError)) {
            return false;
        }
        InvalidPropertyGroupError invalidPropertyGroupError = (InvalidPropertyGroupError) obj;
        Tag tag = this.f16910a;
        if (tag != invalidPropertyGroupError.f16910a) {
            return false;
        }
        switch (C2428a.f16913a[tag.ordinal()]) {
            case 1:
                String str = this.f16911b;
                String str2 = invalidPropertyGroupError.f16911b;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                LookupError lookupError = this.f16912c;
                LookupError lookupError2 = invalidPropertyGroupError.f16912c;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public LookupError getPathValue() {
        if (this.f16910a == Tag.PATH) {
            return this.f16912c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f16910a.name());
    }

    public String getTemplateNotFoundValue() {
        if (this.f16910a == Tag.TEMPLATE_NOT_FOUND) {
            return this.f16911b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag." + this.f16910a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f16910a, this.f16911b, this.f16912c});
    }

    public boolean isDoesNotFitTemplate() {
        return this.f16910a == Tag.DOES_NOT_FIT_TEMPLATE;
    }

    public boolean isDuplicatePropertyGroups() {
        return this.f16910a == Tag.DUPLICATE_PROPERTY_GROUPS;
    }

    public boolean isOther() {
        return this.f16910a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f16910a == Tag.PATH;
    }

    public boolean isPropertyFieldTooLarge() {
        return this.f16910a == Tag.PROPERTY_FIELD_TOO_LARGE;
    }

    public boolean isRestrictedContent() {
        return this.f16910a == Tag.RESTRICTED_CONTENT;
    }

    public boolean isTemplateNotFound() {
        return this.f16910a == Tag.TEMPLATE_NOT_FOUND;
    }

    public boolean isUnsupportedFolder() {
        return this.f16910a == Tag.UNSUPPORTED_FOLDER;
    }

    public Tag tag() {
        return this.f16910a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
