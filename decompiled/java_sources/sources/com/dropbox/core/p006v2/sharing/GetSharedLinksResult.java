package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.LinkMetadata;
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
public class GetSharedLinksResult {
    protected final List<LinkMetadata> links;

    /* renamed from: com.dropbox.core.v2.sharing.GetSharedLinksResult$a */
    /* loaded from: classes4.dex */
    public static class C2842a extends StructSerializer<GetSharedLinksResult> {

        /* renamed from: b */
        public static final C2842a f17762b = new C2842a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetSharedLinksResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("links".equals(currentName)) {
                    list = (List) StoneSerializers.list(LinkMetadata.C2860a.f17790b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"links\" missing.");
            }
            GetSharedLinksResult getSharedLinksResult = new GetSharedLinksResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getSharedLinksResult, getSharedLinksResult.toStringMultiline());
            return getSharedLinksResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetSharedLinksResult getSharedLinksResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("links");
            StoneSerializers.list(LinkMetadata.C2860a.f17790b).serialize((StoneSerializer) getSharedLinksResult.links, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetSharedLinksResult(List<LinkMetadata> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'links' is null");
        }
        Iterator<LinkMetadata> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'links' is null");
            }
        }
        this.links = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<LinkMetadata> list = this.links;
        List<LinkMetadata> list2 = ((GetSharedLinksResult) obj).links;
        return list == list2 || list.equals(list2);
    }

    public List<LinkMetadata> getLinks() {
        return this.links;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.links});
    }

    public String toString() {
        return C2842a.f17762b.serialize((C2842a) this, false);
    }

    public String toStringMultiline() {
        return C2842a.f17762b.serialize((C2842a) this, true);
    }
}
