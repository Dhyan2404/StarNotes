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
public final class RemovePropertiesError {

    /* renamed from: a */
    public Tag f16944a;

    /* renamed from: b */
    public String f16945b;

    /* renamed from: c */
    public LookupError f16946c;

    /* renamed from: d */
    public LookUpPropertiesError f16947d;
    public static final RemovePropertiesError RESTRICTED_CONTENT = new RemovePropertiesError().m10444d(Tag.RESTRICTED_CONTENT);
    public static final RemovePropertiesError OTHER = new RemovePropertiesError().m10444d(Tag.OTHER);
    public static final RemovePropertiesError UNSUPPORTED_FOLDER = new RemovePropertiesError().m10444d(Tag.UNSUPPORTED_FOLDER);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<RemovePropertiesError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public RemovePropertiesError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RemovePropertiesError propertyGroupLookup;
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
                    propertyGroupLookup = RemovePropertiesError.templateNotFound(StoneSerializers.string().deserialize(jsonParser));
                } else if ("restricted_content".equals(readTag)) {
                    propertyGroupLookup = RemovePropertiesError.RESTRICTED_CONTENT;
                } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                    propertyGroupLookup = RemovePropertiesError.OTHER;
                } else if ("path".equals(readTag)) {
                    StoneSerializer.expectField("path", jsonParser);
                    propertyGroupLookup = RemovePropertiesError.path(LookupError.C2433b.f16920b.deserialize(jsonParser));
                } else if ("unsupported_folder".equals(readTag)) {
                    propertyGroupLookup = RemovePropertiesError.UNSUPPORTED_FOLDER;
                } else if ("property_group_lookup".equals(readTag)) {
                    StoneSerializer.expectField("property_group_lookup", jsonParser);
                    propertyGroupLookup = RemovePropertiesError.propertyGroupLookup(LookUpPropertiesError.Serializer.INSTANCE.deserialize(jsonParser));
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
        public void serialize(RemovePropertiesError removePropertiesError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2450a.f16948a[removePropertiesError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("template_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("template_not_found");
                    StoneSerializers.string().serialize((StoneSerializer<String>) removePropertiesError.f16945b, jsonGenerator);
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
                    LookupError.C2433b.f16920b.serialize(removePropertiesError.f16946c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("unsupported_folder");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("property_group_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("property_group_lookup");
                    LookUpPropertiesError.Serializer.INSTANCE.serialize(removePropertiesError.f16947d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + removePropertiesError.tag());
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
        PROPERTY_GROUP_LOOKUP
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.RemovePropertiesError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2450a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16948a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16948a = iArr;
            try {
                iArr[Tag.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16948a[Tag.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16948a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16948a[Tag.PATH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16948a[Tag.UNSUPPORTED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16948a[Tag.PROPERTY_GROUP_LOOKUP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static RemovePropertiesError path(LookupError lookupError) {
        if (lookupError != null) {
            return new RemovePropertiesError().m10445e(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RemovePropertiesError propertyGroupLookup(LookUpPropertiesError lookUpPropertiesError) {
        if (lookUpPropertiesError != null) {
            return new RemovePropertiesError().m10446f(Tag.PROPERTY_GROUP_LOOKUP, lookUpPropertiesError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RemovePropertiesError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (Pattern.matches("(/|ptid:).*", str)) {
            return new RemovePropertiesError().m10447g(Tag.TEMPLATE_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: d */
    public final RemovePropertiesError m10444d(Tag tag) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError.f16944a = tag;
        return removePropertiesError;
    }

    /* renamed from: e */
    public final RemovePropertiesError m10445e(Tag tag, LookupError lookupError) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError.f16944a = tag;
        removePropertiesError.f16946c = lookupError;
        return removePropertiesError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RemovePropertiesError)) {
            return false;
        }
        RemovePropertiesError removePropertiesError = (RemovePropertiesError) obj;
        Tag tag = this.f16944a;
        if (tag != removePropertiesError.f16944a) {
            return false;
        }
        switch (C2450a.f16948a[tag.ordinal()]) {
            case 1:
                String str = this.f16945b;
                String str2 = removePropertiesError.f16945b;
                return str == str2 || str.equals(str2);
            case 2:
            case 3:
                return true;
            case 4:
                LookupError lookupError = this.f16946c;
                LookupError lookupError2 = removePropertiesError.f16946c;
                return lookupError == lookupError2 || lookupError.equals(lookupError2);
            case 5:
                return true;
            case 6:
                LookUpPropertiesError lookUpPropertiesError = this.f16947d;
                LookUpPropertiesError lookUpPropertiesError2 = removePropertiesError.f16947d;
                return lookUpPropertiesError == lookUpPropertiesError2 || lookUpPropertiesError.equals(lookUpPropertiesError2);
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final RemovePropertiesError m10446f(Tag tag, LookUpPropertiesError lookUpPropertiesError) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError.f16944a = tag;
        removePropertiesError.f16947d = lookUpPropertiesError;
        return removePropertiesError;
    }

    /* renamed from: g */
    public final RemovePropertiesError m10447g(Tag tag, String str) {
        RemovePropertiesError removePropertiesError = new RemovePropertiesError();
        removePropertiesError.f16944a = tag;
        removePropertiesError.f16945b = str;
        return removePropertiesError;
    }

    public LookupError getPathValue() {
        if (this.f16944a == Tag.PATH) {
            return this.f16946c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f16944a.name());
    }

    public LookUpPropertiesError getPropertyGroupLookupValue() {
        if (this.f16944a == Tag.PROPERTY_GROUP_LOOKUP) {
            return this.f16947d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag." + this.f16944a.name());
    }

    public String getTemplateNotFoundValue() {
        if (this.f16944a == Tag.TEMPLATE_NOT_FOUND) {
            return this.f16945b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag." + this.f16944a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f16944a, this.f16945b, this.f16946c, this.f16947d});
    }

    public boolean isOther() {
        return this.f16944a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f16944a == Tag.PATH;
    }

    public boolean isPropertyGroupLookup() {
        return this.f16944a == Tag.PROPERTY_GROUP_LOOKUP;
    }

    public boolean isRestrictedContent() {
        return this.f16944a == Tag.RESTRICTED_CONTENT;
    }

    public boolean isTemplateNotFound() {
        return this.f16944a == Tag.TEMPLATE_NOT_FOUND;
    }

    public boolean isUnsupportedFolder() {
        return this.f16944a == Tag.UNSUPPORTED_FOLDER;
    }

    public Tag tag() {
        return this.f16944a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
