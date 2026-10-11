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
public final class TemplateFilter {

    /* renamed from: a */
    public Tag f16952a;

    /* renamed from: b */
    public List<String> f16953b;
    public static final TemplateFilter OTHER = new TemplateFilter().m10452b(Tag.OTHER);
    public static final TemplateFilter FILTER_NONE = new TemplateFilter().m10452b(Tag.FILTER_NONE);

    /* loaded from: classes4.dex */
    public enum Tag {
        FILTER_SOME,
        OTHER,
        FILTER_NONE
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.TemplateFilter$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2452a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16954a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16954a = iArr;
            try {
                iArr[Tag.FILTER_SOME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16954a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16954a[Tag.FILTER_NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.TemplateFilter$b */
    /* loaded from: classes4.dex */
    public static class C2453b extends UnionSerializer<TemplateFilter> {

        /* renamed from: b */
        public static final C2453b f16955b = new C2453b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TemplateFilter deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TemplateFilter templateFilter;
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
            if ("filter_some".equals(readTag)) {
                StoneSerializer.expectField("filter_some", jsonParser);
                templateFilter = TemplateFilter.filterSome((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                templateFilter = TemplateFilter.OTHER;
            } else {
                if (!"filter_none".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                templateFilter = TemplateFilter.FILTER_NONE;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return templateFilter;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TemplateFilter templateFilter, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2452a.f16954a[templateFilter.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("filter_some", jsonGenerator);
                jsonGenerator.writeFieldName("filter_some");
                StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) templateFilter.f16953b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 3) {
                    jsonGenerator.writeString("filter_none");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + templateFilter.tag());
            }
        }
    }

    public static TemplateFilter filterSome(List<String> list) {
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
        return new TemplateFilter().m10453c(Tag.FILTER_SOME, list);
    }

    /* renamed from: b */
    public final TemplateFilter m10452b(Tag tag) {
        TemplateFilter templateFilter = new TemplateFilter();
        templateFilter.f16952a = tag;
        return templateFilter;
    }

    /* renamed from: c */
    public final TemplateFilter m10453c(Tag tag, List<String> list) {
        TemplateFilter templateFilter = new TemplateFilter();
        templateFilter.f16952a = tag;
        templateFilter.f16953b = list;
        return templateFilter;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TemplateFilter)) {
            return false;
        }
        TemplateFilter templateFilter = (TemplateFilter) obj;
        Tag tag = this.f16952a;
        if (tag != templateFilter.f16952a) {
            return false;
        }
        int i = C2452a.f16954a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        List<String> list = this.f16953b;
        List<String> list2 = templateFilter.f16953b;
        return list == list2 || list.equals(list2);
    }

    public List<String> getFilterSomeValue() {
        if (this.f16952a == Tag.FILTER_SOME) {
            return this.f16953b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.FILTER_SOME, but was Tag." + this.f16952a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f16952a, this.f16953b});
    }

    public boolean isFilterNone() {
        return this.f16952a == Tag.FILTER_NONE;
    }

    public boolean isFilterSome() {
        return this.f16952a == Tag.FILTER_SOME;
    }

    public boolean isOther() {
        return this.f16952a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16952a;
    }

    public String toString() {
        return C2453b.f16955b.serialize((C2453b) this, false);
    }

    public String toStringMultiline() {
        return C2453b.f16955b.serialize((C2453b) this, true);
    }
}
