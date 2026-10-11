package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedLinkMetadata;
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
public class ListSharedLinksResult {
    protected final String cursor;
    protected final boolean hasMore;
    protected final List<SharedLinkMetadata> links;

    /* renamed from: com.dropbox.core.v2.sharing.ListSharedLinksResult$a */
    /* loaded from: classes4.dex */
    public static class C2890a extends StructSerializer<ListSharedLinksResult> {

        /* renamed from: b */
        public static final C2890a f17863b = new C2890a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListSharedLinksResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("links".equals(currentName)) {
                    list = (List) StoneSerializers.list(SharedLinkMetadata.C2955a.f17983b).deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"links\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListSharedLinksResult listSharedLinksResult = new ListSharedLinksResult(list, bool.booleanValue(), str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listSharedLinksResult, listSharedLinksResult.toStringMultiline());
            return listSharedLinksResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListSharedLinksResult listSharedLinksResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("links");
            StoneSerializers.list(SharedLinkMetadata.C2955a.f17983b).serialize((StoneSerializer) listSharedLinksResult.links, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listSharedLinksResult.hasMore), jsonGenerator);
            if (listSharedLinksResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listSharedLinksResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListSharedLinksResult(List<SharedLinkMetadata> list, boolean z, String str) {
        if (list != null) {
            Iterator<SharedLinkMetadata> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'links' is null");
                }
            }
            this.links = list;
            this.hasMore = z;
            this.cursor = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'links' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListSharedLinksResult listSharedLinksResult = (ListSharedLinksResult) obj;
        List<SharedLinkMetadata> list = this.links;
        List<SharedLinkMetadata> list2 = listSharedLinksResult.links;
        if ((list == list2 || list.equals(list2)) && this.hasMore == listSharedLinksResult.hasMore) {
            String str = this.cursor;
            String str2 = listSharedLinksResult.cursor;
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

    public List<SharedLinkMetadata> getLinks() {
        return this.links;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.links, Boolean.valueOf(this.hasMore), this.cursor});
    }

    public String toString() {
        return C2890a.f17863b.serialize((C2890a) this, false);
    }

    public String toStringMultiline() {
        return C2890a.f17863b.serialize((C2890a) this, true);
    }

    public ListSharedLinksResult(List<SharedLinkMetadata> list, boolean z) {
        this(list, z, null);
    }
}
