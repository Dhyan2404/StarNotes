package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.Cursor;
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

/* loaded from: classes4.dex */
public class ListPaperDocsResponse {
    protected final Cursor cursor;
    protected final List<String> docIds;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.paper.ListPaperDocsResponse$a */
    /* loaded from: classes4.dex */
    public static class C2748a extends StructSerializer<ListPaperDocsResponse> {

        /* renamed from: b */
        public static final C2748a f17586b = new C2748a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListPaperDocsResponse deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Cursor cursor = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("doc_ids".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    cursor = Cursor.C2731a.f17550b.deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_ids\" missing.");
            }
            if (cursor == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListPaperDocsResponse listPaperDocsResponse = new ListPaperDocsResponse(list, cursor, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listPaperDocsResponse, listPaperDocsResponse.toStringMultiline());
            return listPaperDocsResponse;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListPaperDocsResponse listPaperDocsResponse, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("doc_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) listPaperDocsResponse.docIds, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            Cursor.C2731a.f17550b.serialize((Cursor.C2731a) listPaperDocsResponse.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listPaperDocsResponse.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListPaperDocsResponse(List<String> list, Cursor cursor, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'docIds' is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'docIds' is null");
            }
        }
        this.docIds = list;
        if (cursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = cursor;
        this.hasMore = z;
    }

    public boolean equals(Object obj) {
        Cursor cursor;
        Cursor cursor2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListPaperDocsResponse listPaperDocsResponse = (ListPaperDocsResponse) obj;
        List<String> list = this.docIds;
        List<String> list2 = listPaperDocsResponse.docIds;
        return (list == list2 || list.equals(list2)) && ((cursor = this.cursor) == (cursor2 = listPaperDocsResponse.cursor) || cursor.equals(cursor2)) && this.hasMore == listPaperDocsResponse.hasMore;
    }

    public Cursor getCursor() {
        return this.cursor;
    }

    public List<String> getDocIds() {
        return this.docIds;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.docIds, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C2748a.f17586b.serialize((C2748a) this, false);
    }

    public String toStringMultiline() {
        return C2748a.f17586b.serialize((C2748a) this, true);
    }
}
