package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.GetThumbnailBatchResultEntry;
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
public class GetThumbnailBatchResult {
    protected final List<GetThumbnailBatchResultEntry> entries;

    /* renamed from: com.dropbox.core.v2.files.GetThumbnailBatchResult$a */
    /* loaded from: classes4.dex */
    public static class C2562a extends StructSerializer<GetThumbnailBatchResult> {

        /* renamed from: b */
        public static final C2562a f17188b = new C2562a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetThumbnailBatchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(GetThumbnailBatchResultEntry.C2565b.f17194b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            GetThumbnailBatchResult getThumbnailBatchResult = new GetThumbnailBatchResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getThumbnailBatchResult, getThumbnailBatchResult.toStringMultiline());
            return getThumbnailBatchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetThumbnailBatchResult getThumbnailBatchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(GetThumbnailBatchResultEntry.C2565b.f17194b).serialize((StoneSerializer) getThumbnailBatchResult.entries, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetThumbnailBatchResult(List<GetThumbnailBatchResultEntry> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<GetThumbnailBatchResultEntry> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<GetThumbnailBatchResultEntry> list = this.entries;
        List<GetThumbnailBatchResultEntry> list2 = ((GetThumbnailBatchResult) obj).entries;
        return list == list2 || list.equals(list2);
    }

    public List<GetThumbnailBatchResultEntry> getEntries() {
        return this.entries;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries});
    }

    public String toString() {
        return C2562a.f17188b.serialize((C2562a) this, false);
    }

    public String toStringMultiline() {
        return C2562a.f17188b.serialize((C2562a) this, true);
    }
}
