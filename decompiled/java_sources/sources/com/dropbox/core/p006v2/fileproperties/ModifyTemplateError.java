package com.dropbox.core.p006v2.fileproperties;

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
public final class ModifyTemplateError {

    /* renamed from: a */
    public Tag f16921a;

    /* renamed from: b */
    public String f16922b;
    public static final ModifyTemplateError RESTRICTED_CONTENT = new ModifyTemplateError().m10411b(Tag.RESTRICTED_CONTENT);
    public static final ModifyTemplateError OTHER = new ModifyTemplateError().m10411b(Tag.OTHER);
    public static final ModifyTemplateError CONFLICTING_PROPERTY_NAMES = new ModifyTemplateError().m10411b(Tag.CONFLICTING_PROPERTY_NAMES);
    public static final ModifyTemplateError TOO_MANY_PROPERTIES = new ModifyTemplateError().m10411b(Tag.TOO_MANY_PROPERTIES);
    public static final ModifyTemplateError TOO_MANY_TEMPLATES = new ModifyTemplateError().m10411b(Tag.TOO_MANY_TEMPLATES);
    public static final ModifyTemplateError TEMPLATE_ATTRIBUTE_TOO_LARGE = new ModifyTemplateError().m10411b(Tag.TEMPLATE_ATTRIBUTE_TOO_LARGE);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<ModifyTemplateError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public ModifyTemplateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ModifyTemplateError modifyTemplateError;
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
                    modifyTemplateError = ModifyTemplateError.templateNotFound(StoneSerializers.string().deserialize(jsonParser));
                } else if ("restricted_content".equals(readTag)) {
                    modifyTemplateError = ModifyTemplateError.RESTRICTED_CONTENT;
                } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                    modifyTemplateError = ModifyTemplateError.OTHER;
                } else if ("conflicting_property_names".equals(readTag)) {
                    modifyTemplateError = ModifyTemplateError.CONFLICTING_PROPERTY_NAMES;
                } else if ("too_many_properties".equals(readTag)) {
                    modifyTemplateError = ModifyTemplateError.TOO_MANY_PROPERTIES;
                } else if ("too_many_templates".equals(readTag)) {
                    modifyTemplateError = ModifyTemplateError.TOO_MANY_TEMPLATES;
                } else if ("template_attribute_too_large".equals(readTag)) {
                    modifyTemplateError = ModifyTemplateError.TEMPLATE_ATTRIBUTE_TOO_LARGE;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return modifyTemplateError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(ModifyTemplateError modifyTemplateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2434a.f16923a[modifyTemplateError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    StoneSerializers.string().serialize((StoneSerializer<String>) modifyTemplateError.f16922b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("restricted_content");
                    return;
                case 3:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 4:
                    jsonGenerator.writeString("conflicting_property_names");
                    return;
                case 5:
                    jsonGenerator.writeString("too_many_properties");
                    return;
                case 6:
                    jsonGenerator.writeString("too_many_templates");
                    return;
                case 7:
                    jsonGenerator.writeString("template_attribute_too_large");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + modifyTemplateError.tag());
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER,
        CONFLICTING_PROPERTY_NAMES,
        TOO_MANY_PROPERTIES,
        TOO_MANY_TEMPLATES,
        TEMPLATE_ATTRIBUTE_TOO_LARGE
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.ModifyTemplateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2434a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16923a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16923a = iArr;
            try {
                iArr[Tag.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16923a[Tag.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16923a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16923a[Tag.CONFLICTING_PROPERTY_NAMES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16923a[Tag.TOO_MANY_PROPERTIES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16923a[Tag.TOO_MANY_TEMPLATES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f16923a[Tag.TEMPLATE_ATTRIBUTE_TOO_LARGE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static ModifyTemplateError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (Pattern.matches("(/|ptid:).*", str)) {
            return new ModifyTemplateError().m10412c(Tag.TEMPLATE_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: b */
    public final ModifyTemplateError m10411b(Tag tag) {
        ModifyTemplateError modifyTemplateError = new ModifyTemplateError();
        modifyTemplateError.f16921a = tag;
        return modifyTemplateError;
    }

    /* renamed from: c */
    public final ModifyTemplateError m10412c(Tag tag, String str) {
        ModifyTemplateError modifyTemplateError = new ModifyTemplateError();
        modifyTemplateError.f16921a = tag;
        modifyTemplateError.f16922b = str;
        return modifyTemplateError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ModifyTemplateError)) {
            return false;
        }
        ModifyTemplateError modifyTemplateError = (ModifyTemplateError) obj;
        Tag tag = this.f16921a;
        if (tag != modifyTemplateError.f16921a) {
            return false;
        }
        switch (C2434a.f16923a[tag.ordinal()]) {
            case 1:
                String str = this.f16922b;
                String str2 = modifyTemplateError.f16922b;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    public String getTemplateNotFoundValue() {
        if (this.f16921a == Tag.TEMPLATE_NOT_FOUND) {
            return this.f16922b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag." + this.f16921a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f16921a, this.f16922b});
    }

    public boolean isConflictingPropertyNames() {
        return this.f16921a == Tag.CONFLICTING_PROPERTY_NAMES;
    }

    public boolean isOther() {
        return this.f16921a == Tag.OTHER;
    }

    public boolean isRestrictedContent() {
        return this.f16921a == Tag.RESTRICTED_CONTENT;
    }

    public boolean isTemplateAttributeTooLarge() {
        return this.f16921a == Tag.TEMPLATE_ATTRIBUTE_TOO_LARGE;
    }

    public boolean isTemplateNotFound() {
        return this.f16921a == Tag.TEMPLATE_NOT_FOUND;
    }

    public boolean isTooManyProperties() {
        return this.f16921a == Tag.TOO_MANY_PROPERTIES;
    }

    public boolean isTooManyTemplates() {
        return this.f16921a == Tag.TOO_MANY_TEMPLATES;
    }

    public Tag tag() {
        return this.f16921a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
