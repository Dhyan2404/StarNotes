package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Metadata;
import com.dropbox.core.p006v2.files.SearchMatchType;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class SearchMatch {
    protected final SearchMatchType matchType;
    protected final Metadata metadata;

    /* renamed from: com.dropbox.core.v2.files.SearchMatch$a */
    /* loaded from: classes4.dex */
    public static class C2646a extends StructSerializer<SearchMatch> {

        /* renamed from: b */
        public static final C2646a f17388b = new C2646a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchMatch deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            SearchMatchType searchMatchType = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Metadata metadata = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("match_type".equals(currentName)) {
                    searchMatchType = SearchMatchType.C2649b.f17391b.deserialize(jsonParser);
                } else if ("metadata".equals(currentName)) {
                    metadata = Metadata.C2596a.f17264b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (searchMatchType == null) {
                throw new JsonParseException(jsonParser, "Required field \"match_type\" missing.");
            }
            if (metadata == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            SearchMatch searchMatch = new SearchMatch(searchMatchType, metadata);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchMatch, searchMatch.toStringMultiline());
            return searchMatch;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchMatch searchMatch, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("match_type");
            SearchMatchType.C2649b.f17391b.serialize(searchMatch.matchType, jsonGenerator);
            jsonGenerator.writeFieldName("metadata");
            Metadata.C2596a.f17264b.serialize((Metadata.C2596a) searchMatch.metadata, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchMatch(SearchMatchType searchMatchType, Metadata metadata) {
        if (searchMatchType == null) {
            throw new IllegalArgumentException("Required value for 'matchType' is null");
        }
        this.matchType = searchMatchType;
        if (metadata == null) {
            throw new IllegalArgumentException("Required value for 'metadata' is null");
        }
        this.metadata = metadata;
    }

    public boolean equals(Object obj) {
        Metadata metadata;
        Metadata metadata2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SearchMatch searchMatch = (SearchMatch) obj;
        SearchMatchType searchMatchType = this.matchType;
        SearchMatchType searchMatchType2 = searchMatch.matchType;
        return (searchMatchType == searchMatchType2 || searchMatchType.equals(searchMatchType2)) && ((metadata = this.metadata) == (metadata2 = searchMatch.metadata) || metadata.equals(metadata2));
    }

    public SearchMatchType getMatchType() {
        return this.matchType;
    }

    public Metadata getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.matchType, this.metadata});
    }

    public String toString() {
        return C2646a.f17388b.serialize((C2646a) this, false);
    }

    public String toStringMultiline() {
        return C2646a.f17388b.serialize((C2646a) this, true);
    }
}
