package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.ListPaperDocsFilterBy;
import com.dropbox.core.p006v2.paper.ListPaperDocsSortBy;
import com.dropbox.core.p006v2.paper.ListPaperDocsSortOrder;
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

/* loaded from: classes4.dex */
public class ListPaperDocsArgs {

    /* renamed from: a */
    public final ListPaperDocsFilterBy f17579a;

    /* renamed from: b */
    public final ListPaperDocsSortBy f17580b;

    /* renamed from: c */
    public final ListPaperDocsSortOrder f17581c;

    /* renamed from: d */
    public final int f17582d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected ListPaperDocsFilterBy filterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
        protected ListPaperDocsSortBy sortBy = ListPaperDocsSortBy.ACCESSED;
        protected ListPaperDocsSortOrder sortOrder = ListPaperDocsSortOrder.ASCENDING;
        protected int limit = 1000;

        public ListPaperDocsArgs build() {
            return new ListPaperDocsArgs(this.filterBy, this.sortBy, this.sortOrder, this.limit);
        }

        public Builder withFilterBy(ListPaperDocsFilterBy listPaperDocsFilterBy) {
            if (listPaperDocsFilterBy != null) {
                this.filterBy = listPaperDocsFilterBy;
            } else {
                this.filterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
            }
            return this;
        }

        public Builder withLimit(Integer num) {
            if (num.intValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1");
            }
            if (num.intValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000");
            }
            this.limit = num.intValue();
            return this;
        }

        public Builder withSortBy(ListPaperDocsSortBy listPaperDocsSortBy) {
            if (listPaperDocsSortBy != null) {
                this.sortBy = listPaperDocsSortBy;
            } else {
                this.sortBy = ListPaperDocsSortBy.ACCESSED;
            }
            return this;
        }

        public Builder withSortOrder(ListPaperDocsSortOrder listPaperDocsSortOrder) {
            if (listPaperDocsSortOrder != null) {
                this.sortOrder = listPaperDocsSortOrder;
            } else {
                this.sortOrder = ListPaperDocsSortOrder.ASCENDING;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsArgs$a */
    /* loaded from: classes4.dex */
    public static class C2745a extends StructSerializer<ListPaperDocsArgs> {

        /* renamed from: b */
        public static final C2745a f17583b = new C2745a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListPaperDocsArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ListPaperDocsFilterBy listPaperDocsFilterBy = ListPaperDocsFilterBy.DOCS_ACCESSED;
            ListPaperDocsSortBy listPaperDocsSortBy = ListPaperDocsSortBy.ACCESSED;
            ListPaperDocsSortOrder listPaperDocsSortOrder = ListPaperDocsSortOrder.ASCENDING;
            Integer num = 1000;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("filter_by".equals(currentName)) {
                    listPaperDocsFilterBy = ListPaperDocsFilterBy.C2747b.f17585b.deserialize(jsonParser);
                } else if ("sort_by".equals(currentName)) {
                    listPaperDocsSortBy = ListPaperDocsSortBy.C2750b.f17588b.deserialize(jsonParser);
                } else if ("sort_order".equals(currentName)) {
                    listPaperDocsSortOrder = ListPaperDocsSortOrder.C2752b.f17590b.deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    num = StoneSerializers.int32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ListPaperDocsArgs listPaperDocsArgs = new ListPaperDocsArgs(listPaperDocsFilterBy, listPaperDocsSortBy, listPaperDocsSortOrder, num.intValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listPaperDocsArgs, listPaperDocsArgs.m11346f());
            return listPaperDocsArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListPaperDocsArgs listPaperDocsArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("filter_by");
            ListPaperDocsFilterBy.C2747b.f17585b.serialize(listPaperDocsArgs.f17579a, jsonGenerator);
            jsonGenerator.writeFieldName("sort_by");
            ListPaperDocsSortBy.C2750b.f17588b.serialize(listPaperDocsArgs.f17580b, jsonGenerator);
            jsonGenerator.writeFieldName("sort_order");
            ListPaperDocsSortOrder.C2752b.f17590b.serialize(listPaperDocsArgs.f17581c, jsonGenerator);
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.int32().serialize((StoneSerializer<Integer>) Integer.valueOf(listPaperDocsArgs.f17582d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListPaperDocsArgs(ListPaperDocsFilterBy listPaperDocsFilterBy, ListPaperDocsSortBy listPaperDocsSortBy, ListPaperDocsSortOrder listPaperDocsSortOrder, int i) {
        if (listPaperDocsFilterBy != null) {
            this.f17579a = listPaperDocsFilterBy;
            if (listPaperDocsSortBy != null) {
                this.f17580b = listPaperDocsSortBy;
                if (listPaperDocsSortOrder != null) {
                    this.f17581c = listPaperDocsSortOrder;
                    if (i < 1) {
                        throw new IllegalArgumentException("Number 'limit' is smaller than 1");
                    }
                    if (i <= 1000) {
                        this.f17582d = i;
                        return;
                    }
                    throw new IllegalArgumentException("Number 'limit' is larger than 1000");
                }
                throw new IllegalArgumentException("Required value for 'sortOrder' is null");
            }
            throw new IllegalArgumentException("Required value for 'sortBy' is null");
        }
        throw new IllegalArgumentException("Required value for 'filterBy' is null");
    }

    /* renamed from: e */
    public static Builder m11341e() {
        return new Builder();
    }

    /* renamed from: a */
    public ListPaperDocsFilterBy m11342a() {
        return this.f17579a;
    }

    /* renamed from: b */
    public int m11343b() {
        return this.f17582d;
    }

    /* renamed from: c */
    public ListPaperDocsSortBy m11344c() {
        return this.f17580b;
    }

    /* renamed from: d */
    public ListPaperDocsSortOrder m11345d() {
        return this.f17581c;
    }

    public boolean equals(Object obj) {
        ListPaperDocsSortBy listPaperDocsSortBy;
        ListPaperDocsSortBy listPaperDocsSortBy2;
        ListPaperDocsSortOrder listPaperDocsSortOrder;
        ListPaperDocsSortOrder listPaperDocsSortOrder2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListPaperDocsArgs listPaperDocsArgs = (ListPaperDocsArgs) obj;
        ListPaperDocsFilterBy listPaperDocsFilterBy = this.f17579a;
        ListPaperDocsFilterBy listPaperDocsFilterBy2 = listPaperDocsArgs.f17579a;
        return (listPaperDocsFilterBy == listPaperDocsFilterBy2 || listPaperDocsFilterBy.equals(listPaperDocsFilterBy2)) && ((listPaperDocsSortBy = this.f17580b) == (listPaperDocsSortBy2 = listPaperDocsArgs.f17580b) || listPaperDocsSortBy.equals(listPaperDocsSortBy2)) && (((listPaperDocsSortOrder = this.f17581c) == (listPaperDocsSortOrder2 = listPaperDocsArgs.f17581c) || listPaperDocsSortOrder.equals(listPaperDocsSortOrder2)) && this.f17582d == listPaperDocsArgs.f17582d);
    }

    /* renamed from: f */
    public String m11346f() {
        return C2745a.f17583b.serialize((C2745a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17579a, this.f17580b, this.f17581c, Integer.valueOf(this.f17582d)});
    }

    public String toString() {
        return C2745a.f17583b.serialize((C2745a) this, false);
    }

    public ListPaperDocsArgs() {
        this(ListPaperDocsFilterBy.DOCS_ACCESSED, ListPaperDocsSortBy.ACCESSED, ListPaperDocsSortOrder.ASCENDING, 1000);
    }
}
