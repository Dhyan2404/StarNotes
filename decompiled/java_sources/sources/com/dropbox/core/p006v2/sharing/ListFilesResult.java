package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFileMetadata;
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
public class ListFilesResult {
    protected final String cursor;
    protected final List<SharedFileMetadata> entries;

    /* renamed from: com.dropbox.core.v2.sharing.ListFilesResult$a */
    /* loaded from: classes4.dex */
    public static class C2878a extends StructSerializer<ListFilesResult> {

        /* renamed from: b */
        public static final C2878a f17829b = new C2878a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFilesResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(SharedFileMetadata.C2941a.f17963b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            ListFilesResult listFilesResult = new ListFilesResult(list, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFilesResult, listFilesResult.toStringMultiline());
            return listFilesResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFilesResult listFilesResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(SharedFileMetadata.C2941a.f17963b).serialize((StoneSerializer) listFilesResult.entries, jsonGenerator);
            if (listFilesResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listFilesResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFilesResult(List<SharedFileMetadata> list, String str) {
        if (list != null) {
            Iterator<SharedFileMetadata> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'entries' is null");
                }
            }
            this.entries = list;
            this.cursor = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'entries' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFilesResult listFilesResult = (ListFilesResult) obj;
        List<SharedFileMetadata> list = this.entries;
        List<SharedFileMetadata> list2 = listFilesResult.entries;
        if (list == list2 || list.equals(list2)) {
            String str = this.cursor;
            String str2 = listFilesResult.cursor;
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

    public List<SharedFileMetadata> getEntries() {
        return this.entries;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries, this.cursor});
    }

    public String toString() {
        return C2878a.f17829b.serialize((C2878a) this, false);
    }

    public String toStringMultiline() {
        return C2878a.f17829b.serialize((C2878a) this, true);
    }

    public ListFilesResult(List<SharedFileMetadata> list) {
        this(list, null);
    }
}
