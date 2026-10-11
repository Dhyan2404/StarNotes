package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.SearchMatch;
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
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class SearchResult {
    protected final List<SearchMatch> matches;
    protected final boolean more;
    protected final long start;

    /* renamed from: com.dropbox.core.v2.files.SearchResult$a */
    /* loaded from: classes4.dex */
    public static class C2654a extends StructSerializer<SearchResult> {

        /* renamed from: b */
        public static final C2654a f17396b = new C2654a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("matches".equals(currentName)) {
                    list = (List) StoneSerializers.list(SearchMatch.C2646a.f17388b).deserialize(jsonParser);
                } else if ("more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if (gon.f71290o0.equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"matches\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"more\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"start\" missing.");
            }
            SearchResult searchResult = new SearchResult(list, bool.booleanValue(), l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchResult, searchResult.toStringMultiline());
            return searchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchResult searchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("matches");
            StoneSerializers.list(SearchMatch.C2646a.f17388b).serialize((StoneSerializer) searchResult.matches, jsonGenerator);
            jsonGenerator.writeFieldName("more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(searchResult.more), jsonGenerator);
            jsonGenerator.writeFieldName(gon.f71290o0);
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(searchResult.start), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchResult(List<SearchMatch> list, boolean z, long j) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'matches' is null");
        }
        Iterator<SearchMatch> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'matches' is null");
            }
        }
        this.matches = list;
        this.more = z;
        this.start = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SearchResult searchResult = (SearchResult) obj;
        List<SearchMatch> list = this.matches;
        List<SearchMatch> list2 = searchResult.matches;
        return (list == list2 || list.equals(list2)) && this.more == searchResult.more && this.start == searchResult.start;
    }

    public List<SearchMatch> getMatches() {
        return this.matches;
    }

    public boolean getMore() {
        return this.more;
    }

    public long getStart() {
        return this.start;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.matches, Boolean.valueOf(this.more), Long.valueOf(this.start)});
    }

    public String toString() {
        return C2654a.f17396b.serialize((C2654a) this, false);
    }

    public String toStringMultiline() {
        return C2654a.f17396b.serialize((C2654a) this, true);
    }
}
