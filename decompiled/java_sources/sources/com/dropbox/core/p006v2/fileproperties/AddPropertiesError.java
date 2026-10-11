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
public final class AddPropertiesError {

    /* renamed from: a */
    public Tag f16904a;

    /* renamed from: b */
    public String f16905b;

    /* renamed from: c */
    public LookupError f16906c;
    public static final AddPropertiesError RESTRICTED_CONTENT = new AddPropertiesError().m10381c(Tag.RESTRICTED_CONTENT);
    public static final AddPropertiesError OTHER = new AddPropertiesError().m10381c(Tag.OTHER);
    public static final AddPropertiesError UNSUPPORTED_FOLDER = new AddPropertiesError().m10381c(Tag.UNSUPPORTED_FOLDER);
    public static final AddPropertiesError PROPERTY_FIELD_TOO_LARGE = new AddPropertiesError().m10381c(Tag.PROPERTY_FIELD_TOO_LARGE);
    public static final AddPropertiesError DOES_NOT_FIT_TEMPLATE = new AddPropertiesError().m10381c(Tag.DOES_NOT_FIT_TEMPLATE);
    public static final AddPropertiesError DUPLICATE_PROPERTY_GROUPS = new AddPropertiesError().m10381c(Tag.DUPLICATE_PROPERTY_GROUPS);
    public static final AddPropertiesError PROPERTY_GROUP_ALREADY_EXISTS = new AddPropertiesError().m10381c(Tag.PROPERTY_GROUP_ALREADY_EXISTS);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<AddPropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public AddPropertiesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AddPropertiesError addPropertiesError;
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
                    addPropertiesError = AddPropertiesError.templateNotFound(StoneSerializers.string().deserialize(jsonParser));
                } else if ("restricted_content".equals(readTag)) {
                    addPropertiesError = AddPropertiesError.RESTRICTED_CONTENT;
                } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                    addPropertiesError = AddPropertiesError.OTHER;
                } else if ("path".equals(readTag)) {
                    StoneSerializer.expectField("path", jsonParser);
                    addPropertiesError = AddPropertiesError.path(LookupError.C2433b.f16920b.deserialize(jsonParser));
                } else if ("unsupported_folder".equals(readTag)) {
                    addPropertiesError = AddPropertiesError.UNSUPPORTED_FOLDER;
                } else if ("property_field_too_large".equals(readTag)) {
                    addPropertiesError = AddPropertiesError.PROPERTY_FIELD_TOO_LARGE;
                } else if ("does_not_fit_template".equals(readTag)) {
                    addPropertiesError = AddPropertiesError.DOES_NOT_FIT_TEMPLATE;
                } else if ("duplicate_property_groups".equals(readTag)) {
                    addPropertiesError = AddPropertiesError.DUPLICATE_PROPERTY_GROUPS;
                } else if ("property_group_already_exists".equals(readTag)) {
                    addPropertiesError = AddPropertiesError.PROPERTY_GROUP_ALREADY_EXISTS;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return addPropertiesError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(AddPropertiesError addPropertiesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2427a.f16907a[addPropertiesError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addPropertiesError.f16905b, jsonGenerator);
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
                    LookupError.C2433b.f16920b.serialize(addPropertiesError.f16906c, jsonGenerator);
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
                case 9:
                    jsonGenerator.writeString("property_group_already_exists");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + addPropertiesError.tag());
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
        DUPLICATE_PROPERTY_GROUPS,
        PROPERTY_GROUP_ALREADY_EXISTS
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.AddPropertiesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2427a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16907a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16907a = iArr;
            try {
                iArr[Tag.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16907a[Tag.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16907a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16907a[Tag.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16907a[Tag.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16907a[Tag.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16907a[Tag.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16907a[Tag.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16907a[Tag.PROPERTY_GROUP_ALREADY_EXISTS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static AddPropertiesError path(LookupError lookupError) {
        if (lookupError != null) {
            return new AddPropertiesError().m10382d(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AddPropertiesError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (Pattern.matches("(/|ptid:).*", str)) {
            return new AddPropertiesError().m10383e(Tag.TEMPLATE_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: c */
    public final AddPropertiesError m10381c(Tag tag) {
        AddPropertiesError addPropertiesError = new AddPropertiesError();
        addPropertiesError.f16904a = tag;
        return addPropertiesError;
    }

    /* renamed from: d */
    public final AddPropertiesError m10382d(Tag tag, LookupError lookupError) {
        AddPropertiesError addPropertiesError = new AddPropertiesError();
        addPropertiesError.f16904a = tag;
        addPropertiesError.f16906c = lookupError;
        return addPropertiesError;
    }

    /* renamed from: e */
    public final AddPropertiesError m10383e(Tag tag, String str) {
        AddPropertiesError addPropertiesError = new AddPropertiesError();
        addPropertiesError.f16904a = tag;
        addPropertiesError.f16905b = str;
        return addPropertiesError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AddPropertiesError)) {
            return false;
        }
        AddPropertiesError addPropertiesError = (AddPropertiesError) obj;
        Tag tag = this.f16904a;
        if (tag != addPropertiesError.f16904a) {
            return false;
        }
        switch (C2427a.f16907a[tag.ordinal()]) {
            case 1:
                String str = this.f16905b;
                String str2 = addPropertiesError.f16905b;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                LookupError lookupError = this.f16906c;
                LookupError lookupError2 = addPropertiesError.f16906c;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    public LookupError getPathValue() {
        if (this.f16904a == Tag.PATH) {
            return this.f16906c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f16904a.name());
    }

    public String getTemplateNotFoundValue() {
        if (this.f16904a == Tag.TEMPLATE_NOT_FOUND) {
            return this.f16905b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag." + this.f16904a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f16904a, this.f16905b, this.f16906c});
    }

    public boolean isDoesNotFitTemplate() {
        return this.f16904a == Tag.DOES_NOT_FIT_TEMPLATE;
    }

    public boolean isDuplicatePropertyGroups() {
        return this.f16904a == Tag.DUPLICATE_PROPERTY_GROUPS;
    }

    public boolean isOther() {
        return this.f16904a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f16904a == Tag.PATH;
    }

    public boolean isPropertyFieldTooLarge() {
        return this.f16904a == Tag.PROPERTY_FIELD_TOO_LARGE;
    }

    public boolean isPropertyGroupAlreadyExists() {
        return this.f16904a == Tag.PROPERTY_GROUP_ALREADY_EXISTS;
    }

    public boolean isRestrictedContent() {
        return this.f16904a == Tag.RESTRICTED_CONTENT;
    }

    public boolean isTemplateNotFound() {
        return this.f16904a == Tag.TEMPLATE_NOT_FOUND;
    }

    public boolean isUnsupportedFolder() {
        return this.f16904a == Tag.UNSUPPORTED_FOLDER;
    }

    public Tag tag() {
        return this.f16904a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
