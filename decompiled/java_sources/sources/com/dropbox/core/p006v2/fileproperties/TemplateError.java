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
public final class TemplateError {

    /* renamed from: a */
    public Tag f16949a;

    /* renamed from: b */
    public String f16950b;
    public static final TemplateError RESTRICTED_CONTENT = new TemplateError().m10449b(Tag.RESTRICTED_CONTENT);
    public static final TemplateError OTHER = new TemplateError().m10449b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<TemplateError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public TemplateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TemplateError templateError;
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
                    templateError = TemplateError.templateNotFound(StoneSerializers.string().deserialize(jsonParser));
                } else if ("restricted_content".equals(readTag)) {
                    templateError = TemplateError.RESTRICTED_CONTENT;
                } else {
                    templateError = TemplateError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return templateError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TemplateError templateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2451a.f16951a[templateError.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("restricted_content");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("template_not_found", jsonGenerator);
            jsonGenerator.writeFieldName("template_not_found");
            StoneSerializers.string().serialize((StoneSerializer<String>) templateError.f16950b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.TemplateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2451a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16951a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16951a = iArr;
            try {
                iArr[Tag.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16951a[Tag.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16951a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static TemplateError templateNotFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String is shorter than 1");
        }
        if (Pattern.matches("(/|ptid:).*", str)) {
            return new TemplateError().m10450c(Tag.TEMPLATE_NOT_FOUND, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: b */
    public final TemplateError m10449b(Tag tag) {
        TemplateError templateError = new TemplateError();
        templateError.f16949a = tag;
        return templateError;
    }

    /* renamed from: c */
    public final TemplateError m10450c(Tag tag, String str) {
        TemplateError templateError = new TemplateError();
        templateError.f16949a = tag;
        templateError.f16950b = str;
        return templateError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TemplateError)) {
            return false;
        }
        TemplateError templateError = (TemplateError) obj;
        Tag tag = this.f16949a;
        if (tag != templateError.f16949a) {
            return false;
        }
        int i = C2451a.f16951a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        String str = this.f16950b;
        String str2 = templateError.f16950b;
        return str == str2 || str.equals(str2);
    }

    public String getTemplateNotFoundValue() {
        if (this.f16949a == Tag.TEMPLATE_NOT_FOUND) {
            return this.f16950b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag." + this.f16949a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16949a, this.f16950b});
    }

    public boolean isOther() {
        return this.f16949a == Tag.OTHER;
    }

    public boolean isRestrictedContent() {
        return this.f16949a == Tag.RESTRICTED_CONTENT;
    }

    public boolean isTemplateNotFound() {
        return this.f16949a == Tag.TEMPLATE_NOT_FOUND;
    }

    public Tag tag() {
        return this.f16949a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
