package com.dropbox.core.p006v2.fileproperties;

import com.dropbox.core.p006v2.fileproperties.PropertiesSearchQuery;
import com.dropbox.core.p006v2.fileproperties.TemplateFilter;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.dropbox.core.v2.fileproperties.a */
/* loaded from: classes4.dex */
public class C2456a {

    /* renamed from: a */
    public final List<PropertiesSearchQuery> f16968a;

    /* renamed from: b */
    public final TemplateFilter f16969b;

    /* renamed from: com.dropbox.core.v2.fileproperties.a$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C2456a> {

        /* renamed from: b */
        public static final a f16970b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C2456a deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            TemplateFilter templateFilter = TemplateFilter.FILTER_NONE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("queries".equals(currentName)) {
                    list = (List) StoneSerializers.list(PropertiesSearchQuery.C2442a.f16936b).deserialize(jsonParser);
                } else if ("template_filter".equals(currentName)) {
                    templateFilter = TemplateFilter.C2453b.f16955b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"queries\" missing.");
            }
            C2456a c2456a = new C2456a(list, templateFilter);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c2456a, c2456a.m10468c());
            return c2456a;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C2456a c2456a, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("queries");
            StoneSerializers.list(PropertiesSearchQuery.C2442a.f16936b).serialize((StoneSerializer) c2456a.f16968a, jsonGenerator);
            jsonGenerator.writeFieldName("template_filter");
            TemplateFilter.C2453b.f16955b.serialize(c2456a.f16969b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C2456a(List<PropertiesSearchQuery> list, TemplateFilter templateFilter) {
        if (list != null) {
            if (list.size() >= 1) {
                Iterator<PropertiesSearchQuery> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'queries' is null");
                    }
                }
                this.f16968a = list;
                if (templateFilter != null) {
                    this.f16969b = templateFilter;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'templateFilter' is null");
            }
            throw new IllegalArgumentException("List 'queries' has fewer than 1 items");
        }
        throw new IllegalArgumentException("Required value for 'queries' is null");
    }

    /* renamed from: a */
    public List<PropertiesSearchQuery> m10466a() {
        return this.f16968a;
    }

    /* renamed from: b */
    public TemplateFilter m10467b() {
        return this.f16969b;
    }

    /* renamed from: c */
    public String m10468c() {
        return a.f16970b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        TemplateFilter templateFilter;
        TemplateFilter templateFilter2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C2456a c2456a = (C2456a) obj;
        List<PropertiesSearchQuery> list = this.f16968a;
        List<PropertiesSearchQuery> list2 = c2456a.f16968a;
        return (list == list2 || list.equals(list2)) && ((templateFilter = this.f16969b) == (templateFilter2 = c2456a.f16969b) || templateFilter.equals(templateFilter2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16968a, this.f16969b});
    }

    public String toString() {
        return a.f16970b.serialize((a) this, false);
    }

    public C2456a(List<PropertiesSearchQuery> list) {
        this(list, TemplateFilter.FILTER_NONE);
    }
}
