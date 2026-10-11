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
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class TemplateFilterBase {
    public static final TemplateFilterBase OTHER = new TemplateFilterBase().m10457b(Tag.OTHER);

    /* renamed from: a */
    public Tag f16956a;

    /* renamed from: b */
    public List<String> f16957b;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<TemplateFilterBase> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public TemplateFilterBase deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TemplateFilterBase templateFilterBase;
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
                if ("filter_some".equals(readTag)) {
                    StoneSerializer.expectField("filter_some", jsonParser);
                    templateFilterBase = TemplateFilterBase.filterSome((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
                } else {
                    templateFilterBase = TemplateFilterBase.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return templateFilterBase;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TemplateFilterBase templateFilterBase, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2454a.f16958a[templateFilterBase.tag().ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("filter_some", jsonGenerator);
            jsonGenerator.writeFieldName("filter_some");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) templateFilterBase.f16957b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        FILTER_SOME,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.TemplateFilterBase$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2454a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16958a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16958a = iArr;
            try {
                iArr[Tag.FILTER_SOME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16958a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static TemplateFilterBase filterSome(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (list.size() < 1) {
            throw new IllegalArgumentException("List has fewer than 1 items");
        }
        for (String str : list) {
            if (str == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("Stringan item in list is shorter than 1");
            }
            if (!Pattern.matches("(/|ptid:).*", str)) {
                throw new IllegalArgumentException("Stringan item in list does not match pattern");
            }
        }
        return new TemplateFilterBase().m10458c(Tag.FILTER_SOME, list);
    }

    /* renamed from: b */
    public final TemplateFilterBase m10457b(Tag tag) {
        TemplateFilterBase templateFilterBase = new TemplateFilterBase();
        templateFilterBase.f16956a = tag;
        return templateFilterBase;
    }

    /* renamed from: c */
    public final TemplateFilterBase m10458c(Tag tag, List<String> list) {
        TemplateFilterBase templateFilterBase = new TemplateFilterBase();
        templateFilterBase.f16956a = tag;
        templateFilterBase.f16957b = list;
        return templateFilterBase;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TemplateFilterBase)) {
            return false;
        }
        TemplateFilterBase templateFilterBase = (TemplateFilterBase) obj;
        Tag tag = this.f16956a;
        if (tag != templateFilterBase.f16956a) {
            return false;
        }
        int i = C2454a.f16958a[tag.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        List<String> list = this.f16957b;
        List<String> list2 = templateFilterBase.f16957b;
        return list == list2 || list.equals(list2);
    }

    public List<String> getFilterSomeValue() {
        if (this.f16956a == Tag.FILTER_SOME) {
            return this.f16957b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILTER_SOME, but was Tag." + this.f16956a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16956a, this.f16957b});
    }

    public boolean isFilterSome() {
        return this.f16956a == Tag.FILTER_SOME;
    }

    public boolean isOther() {
        return this.f16956a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16956a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
