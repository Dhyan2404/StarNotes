package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.HighlightSpan;
import com.dropbox.core.p006v2.files.MetadataV2;
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
public class SearchMatchV2 {
    protected final List<HighlightSpan> highlightSpans;
    protected final MetadataV2 metadata;

    /* renamed from: com.dropbox.core.v2.files.SearchMatchV2$a */
    /* loaded from: classes4.dex */
    public static class C2650a extends StructSerializer<SearchMatchV2> {

        /* renamed from: b */
        public static final C2650a f17392b = new C2650a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchMatchV2 deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            MetadataV2 metadataV2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("metadata".equals(currentName)) {
                    metadataV2 = MetadataV2.C2598b.f17268b.deserialize(jsonParser);
                } else if ("highlight_spans".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(HighlightSpan.C2567a.f17198b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (metadataV2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"metadata\" missing.");
            }
            SearchMatchV2 searchMatchV2 = new SearchMatchV2(metadataV2, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(searchMatchV2, searchMatchV2.toStringMultiline());
            return searchMatchV2;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchMatchV2 searchMatchV2, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("metadata");
            MetadataV2.C2598b.f17268b.serialize(searchMatchV2.metadata, jsonGenerator);
            if (searchMatchV2.highlightSpans != null) {
                jsonGenerator.writeFieldName("highlight_spans");
                StoneSerializers.nullable(StoneSerializers.list(HighlightSpan.C2567a.f17198b)).serialize((StoneSerializer) searchMatchV2.highlightSpans, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SearchMatchV2(MetadataV2 metadataV2, List<HighlightSpan> list) {
        if (metadataV2 != null) {
            this.metadata = metadataV2;
            if (list != null) {
                Iterator<HighlightSpan> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'highlightSpans' is null");
                    }
                }
            }
            this.highlightSpans = list;
            return;
        }
        throw new IllegalArgumentException("Required value for 'metadata' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SearchMatchV2 searchMatchV2 = (SearchMatchV2) obj;
        MetadataV2 metadataV2 = this.metadata;
        MetadataV2 metadataV22 = searchMatchV2.metadata;
        if (metadataV2 == metadataV22 || metadataV2.equals(metadataV22)) {
            List<HighlightSpan> list = this.highlightSpans;
            List<HighlightSpan> list2 = searchMatchV2.highlightSpans;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public List<HighlightSpan> getHighlightSpans() {
        return this.highlightSpans;
    }

    public MetadataV2 getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.metadata, this.highlightSpans});
    }

    public String toString() {
        return C2650a.f17392b.serialize((C2650a) this, false);
    }

    public String toStringMultiline() {
        return C2650a.f17392b.serialize((C2650a) this, true);
    }

    public SearchMatchV2(MetadataV2 metadataV2) {
        this(metadataV2, null);
    }
}
