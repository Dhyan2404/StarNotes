package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.SearchMatchV2;
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
public class SearchV2Result {
    protected final String cursor;
    protected final boolean hasMore;
    protected final List<SearchMatchV2> matches;

    /* renamed from: com.dropbox.core.v2.files.SearchV2Result$a */
    /* loaded from: classes4.dex */
    public static class C2656a extends StructSerializer<SearchV2Result> {

        /* renamed from: b */
        public static final C2656a f17404b = new C2656a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchV2Result deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("matches".equals(currentName)) {
                    list = (List) StoneSerializers.list(SearchMatchV2.C2650a.f17392b).deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"matches\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            SearchV2Result searchV2Result = new SearchV2Result(list, bool.booleanValue(), str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchV2Result, searchV2Result.toStringMultiline());
            return searchV2Result;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchV2Result searchV2Result, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("matches");
            StoneSerializers.list(SearchMatchV2.C2650a.f17392b).serialize((StoneSerializer) searchV2Result.matches, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(searchV2Result.hasMore), jsonGenerator);
            if (searchV2Result.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) searchV2Result.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchV2Result(List<SearchMatchV2> list, boolean z, String str) {
        if (list != null) {
            Iterator<SearchMatchV2> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'matches' is null");
                }
            }
            this.matches = list;
            this.hasMore = z;
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'cursor' is shorter than 1");
            }
            this.cursor = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'matches' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SearchV2Result searchV2Result = (SearchV2Result) obj;
        List<SearchMatchV2> list = this.matches;
        List<SearchMatchV2> list2 = searchV2Result.matches;
        if ((list == list2 || list.equals(list2)) && this.hasMore == searchV2Result.hasMore) {
            String str = this.cursor;
            String str2 = searchV2Result.cursor;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public List<SearchMatchV2> getMatches() {
        return this.matches;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.matches, Boolean.valueOf(this.hasMore), this.cursor});
    }

    public String toString() {
        return C2656a.f17404b.serialize((C2656a) this, false);
    }

    public String toStringMultiline() {
        return C2656a.f17404b.serialize((C2656a) this, true);
    }

    public SearchV2Result(List<SearchMatchV2> list, boolean z) {
        this(list, z, null);
    }
}
