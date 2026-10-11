package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Metadata;
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
public class ListFolderResult {
    protected final String cursor;
    protected final List<Metadata> entries;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.files.ListFolderResult$a */
    /* loaded from: classes4.dex */
    public static class C2577a extends StructSerializer<ListFolderResult> {

        /* renamed from: b */
        public static final C2577a f17227b = new C2577a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(Metadata.C2596a.f17264b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListFolderResult listFolderResult = new ListFolderResult(list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFolderResult, listFolderResult.toStringMultiline());
            return listFolderResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderResult listFolderResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(Metadata.C2596a.f17264b).serialize((StoneSerializer) listFolderResult.entries, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) listFolderResult.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderResult.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFolderResult(List<Metadata> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<Metadata> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        if (str.length() < 1) {
            throw new IllegalArgumentException("String 'cursor' is shorter than 1");
        }
        this.cursor = str;
        this.hasMore = z;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFolderResult listFolderResult = (ListFolderResult) obj;
        List<Metadata> list = this.entries;
        List<Metadata> list2 = listFolderResult.entries;
        return (list == list2 || list.equals(list2)) && ((str = this.cursor) == (str2 = listFolderResult.cursor) || str.equals(str2)) && this.hasMore == listFolderResult.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public List<Metadata> getEntries() {
        return this.entries;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C2577a.f17227b.serialize((C2577a) this, false);
    }

    public String toStringMultiline() {
        return C2577a.f17227b.serialize((C2577a) this, true);
    }
}
