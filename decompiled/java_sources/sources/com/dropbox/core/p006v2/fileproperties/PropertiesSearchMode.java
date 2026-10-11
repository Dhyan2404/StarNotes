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

/* loaded from: classes4.dex */
public final class PropertiesSearchMode {
    public static final PropertiesSearchMode OTHER = new PropertiesSearchMode().m10423b(Tag.OTHER);

    /* renamed from: a */
    public Tag f16932a;

    /* renamed from: b */
    public String f16933b;

    /* loaded from: classes4.dex */
    public enum Tag {
        FIELD_NAME,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchMode$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2440a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16934a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16934a = iArr;
            try {
                iArr[Tag.FIELD_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16934a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.PropertiesSearchMode$b */
    /* loaded from: classes4.dex */
    public static class C2441b extends UnionSerializer<PropertiesSearchMode> {

        /* renamed from: b */
        public static final C2441b f16935b = new C2441b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PropertiesSearchMode deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PropertiesSearchMode propertiesSearchMode;
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
            if ("field_name".equals(readTag)) {
                StoneSerializer.expectField("field_name", jsonParser);
                propertiesSearchMode = PropertiesSearchMode.fieldName(StoneSerializers.string().deserialize(jsonParser));
            } else {
                propertiesSearchMode = PropertiesSearchMode.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return propertiesSearchMode;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PropertiesSearchMode propertiesSearchMode, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2440a.f16934a[propertiesSearchMode.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("field_name", jsonGenerator);
            jsonGenerator.writeFieldName("field_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) propertiesSearchMode.f16933b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static PropertiesSearchMode fieldName(String str) {
        if (str != null) {
            return new PropertiesSearchMode().m10424c(Tag.FIELD_NAME, str);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final PropertiesSearchMode m10423b(Tag tag) {
        PropertiesSearchMode propertiesSearchMode = new PropertiesSearchMode();
        propertiesSearchMode.f16932a = tag;
        return propertiesSearchMode;
    }

    /* renamed from: c */
    public final PropertiesSearchMode m10424c(Tag tag, String str) {
        PropertiesSearchMode propertiesSearchMode = new PropertiesSearchMode();
        propertiesSearchMode.f16932a = tag;
        propertiesSearchMode.f16933b = str;
        return propertiesSearchMode;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PropertiesSearchMode)) {
            return false;
        }
        PropertiesSearchMode propertiesSearchMode = (PropertiesSearchMode) obj;
        Tag tag = this.f16932a;
        if (tag != propertiesSearchMode.f16932a) {
            return false;
        }
        int i = C2440a.f16934a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f16933b;
        String str2 = propertiesSearchMode.f16933b;
        return str == str2 || str.equals(str2);
    }

    public String getFieldNameValue() {
        if (this.f16932a == Tag.FIELD_NAME) {
            return this.f16933b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FIELD_NAME, but was Tag." + this.f16932a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16932a, this.f16933b});
    }

    public boolean isFieldName() {
        return this.f16932a == Tag.FIELD_NAME;
    }

    public boolean isOther() {
        return this.f16932a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16932a;
    }

    public String toString() {
        return C2441b.f16935b.serialize((C2441b) this, false);
    }

    public String toStringMultiline() {
        return C2441b.f16935b.serialize((C2441b) this, true);
    }
}
