package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.LookUpPropertiesError;
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
public final class UpdatePropertiesError {

    /* renamed from: a */
    public Tag f16963a;

    /* renamed from: b */
    public String f16964b;

    /* renamed from: c */
    public LookupError f16965c;

    /* renamed from: d */
    public LookUpPropertiesError f16966d;
    public static final UpdatePropertiesError RESTRICTED_CONTENT = new UpdatePropertiesError().m10462d(Tag.RESTRICTED_CONTENT);
    public static final UpdatePropertiesError OTHER = new UpdatePropertiesError().m10462d(Tag.OTHER);
    public static final UpdatePropertiesError UNSUPPORTED_FOLDER = new UpdatePropertiesError().m10462d(Tag.UNSUPPORTED_FOLDER);
    public static final UpdatePropertiesError PROPERTY_FIELD_TOO_LARGE = new UpdatePropertiesError().m10462d(Tag.PROPERTY_FIELD_TOO_LARGE);
    public static final UpdatePropertiesError DOES_NOT_FIT_TEMPLATE = new UpdatePropertiesError().m10462d(Tag.DOES_NOT_FIT_TEMPLATE);
    public static final UpdatePropertiesError DUPLICATE_PROPERTY_GROUPS = new UpdatePropertiesError().m10462d(Tag.DUPLICATE_PROPERTY_GROUPS);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<UpdatePropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public UpdatePropertiesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UpdatePropertiesError propertyGroupLookup;
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
                    propertyGroupLookup = UpdatePropertiesError.templateNotFound(StoneSerializers.string().deserialize(jsonParser));
                } else if ("restricted_content".equals(readTag)) {
                    propertyGroupLookup = UpdatePropertiesError.RESTRICTED_CONTENT;
                } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                    propertyGroupLookup = UpdatePropertiesError.OTHER;
                } else if ("path".equals(readTag)) {
                    StoneSerializer.expectField("path", jsonParser);
                    propertyGroupLookup = UpdatePropertiesError.path(LookupError.C2433b.f16920b.deserialize(jsonParser));
                } else if ("unsupported_folder".equals(readTag)) {
                    propertyGroupLookup = UpdatePropertiesError.UNSUPPORTED_FOLDER;
                } else if ("property_field_too_large".equals(readTag)) {
                    propertyGroupLookup = UpdatePropertiesError.PROPERTY_FIELD_TOO_LARGE;
                } else if ("does_not_fit_template".equals(readTag)) {
                    propertyGroupLookup = UpdatePropertiesError.DOES_NOT_FIT_TEMPLATE;
                } else if ("duplicate_property_groups".equals(readTag)) {
                    propertyGroupLookup = UpdatePropertiesError.DUPLICATE_PROPERTY_GROUPS;
                } else if ("property_group_lookup".equals(readTag)) {
                    StoneSerializer.expectField("property_group_lookup", jsonParser);
                    propertyGroupLookup = UpdatePropertiesError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(jsonParser));
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return propertyGroupLookup;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(UpdatePropertiesError updatePropertiesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2455a.f16967a[updatePropertiesError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    StoneSerializers.string().serialize((StoneSerializer<String>) updatePropertiesError.f16964b, jsonGenerator);
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
                    LookupError.C2433b.f16920b.serialize(updatePropertiesError.f16965c, jsonGenerator);
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
                    jsonGenerator.writeStartObject();
                    writeTag("property_group_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("property_group_lookup");
                    LookUpPropertiesError.Serializer.INSTANCE.serialize(updatePropertiesError.f16966d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + updatePropertiesError.tag());
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
        PROPERTY_GROUP_LOOKUP
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.UpdatePropertiesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2455a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16967a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16967a = iArr;
            try {
                iArr[Tag.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16967a[Tag.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16967a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16967a[Tag.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16967a[Tag.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16967a[Tag.PROPERTY_FIELD_TOO_LARGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16967a[Tag.DOES_NOT_FIT_TEMPLATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16967a[Tag.DUPLICATE_PROPERTY_GROUPS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16967a[Tag.PROPERTY_GROUP_LOOKUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public static UpdatePropertiesError path(LookupError lookupError) {
        if (lookupError != null) {
            return new UpdatePropertiesError().m10463e(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UpdatePropertiesError propertyGroupLookup(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError != null) {
            return new UpdatePropertiesError().m10464f(Tag.PROPERTY_GROUP_LOOKUP, lookUpPropertiesError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UpdatePropertiesError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (Pattern.matches("(/|ptid:).*", str)) {
            return new UpdatePropertiesError().m10465g(Tag.TEMPLATE_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: d */
    public final UpdatePropertiesError m10462d(Tag tag) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError.f16963a = tag;
        return updatePropertiesError;
    }

    /* renamed from: e */
    public final UpdatePropertiesError m10463e(Tag tag, LookupError lookupError) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError.f16963a = tag;
        updatePropertiesError.f16965c = lookupError;
        return updatePropertiesError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdatePropertiesError)) {
            return false;
        }
        UpdatePropertiesError updatePropertiesError = (UpdatePropertiesError) obj;
        Tag tag = this.f16963a;
        if (tag != updatePropertiesError.f16963a) {
            return false;
        }
        switch (C2455a.f16967a[tag.ordinal()]) {
            case 1:
                String str = this.f16964b;
                String str2 = updatePropertiesError.f16964b;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                LookupError lookupError = this.f16965c;
                LookupError lookupError2 = updatePropertiesError.f16965c;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            case 9:
                LookUpPropertiesError lookUpPropertiesError = this.f16966d;
                LookUpPropertiesError lookUpPropertiesError2 = updatePropertiesError.f16966d;
                return lookUpPropertiesError == lookUpPropertiesError2 || lookUpPropertiesError.equals(lookUpPropertiesError2);
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final UpdatePropertiesError m10464f(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError.f16963a = tag;
        updatePropertiesError.f16966d = lookUpPropertiesError;
        return updatePropertiesError;
    }

    /* renamed from: g */
    public final UpdatePropertiesError m10465g(Tag tag, String str) {
        UpdatePropertiesError updatePropertiesError = new UpdatePropertiesError();
        updatePropertiesError.f16963a = tag;
        updatePropertiesError.f16964b = str;
        return updatePropertiesError;
    }

    public LookupError getPathValue() {
        if (this.f16963a == Tag.PATH) {
            return this.f16965c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f16963a.name());
    }

    public LookUpPropertiesError getPropertyGroupLookupValue() {
        if (this.f16963a == Tag.PROPERTY_GROUP_LOOKUP) {
            return this.f16966d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag." + this.f16963a.name());
    }

    public String getTemplateNotFoundValue() {
        if (this.f16963a == Tag.TEMPLATE_NOT_FOUND) {
            return this.f16964b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag." + this.f16963a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f16963a, this.f16964b, this.f16965c, this.f16966d});
    }

    public boolean isDoesNotFitTemplate() {
        return this.f16963a == Tag.DOES_NOT_FIT_TEMPLATE;
    }

    public boolean isDuplicatePropertyGroups() {
        return this.f16963a == Tag.DUPLICATE_PROPERTY_GROUPS;
    }

    public boolean isOther() {
        return this.f16963a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f16963a == Tag.PATH;
    }

    public boolean isPropertyFieldTooLarge() {
        return this.f16963a == Tag.PROPERTY_FIELD_TOO_LARGE;
    }

    public boolean isPropertyGroupLookup() {
        return this.f16963a == Tag.PROPERTY_GROUP_LOOKUP;
    }

    public boolean isRestrictedContent() {
        return this.f16963a == Tag.RESTRICTED_CONTENT;
    }

    public boolean isTemplateNotFound() {
        return this.f16963a == Tag.TEMPLATE_NOT_FOUND;
    }

    public boolean isUnsupportedFolder() {
        return this.f16963a == Tag.UNSUPPORTED_FOLDER;
    }

    public Tag tag() {
        return this.f16963a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
