package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharedFolderMetadata;
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
public class ListFoldersResult {
    protected final String cursor;
    protected final List<SharedFolderMetadata> entries;

    /* renamed from: com.dropbox.core.v2.sharing.ListFoldersResult$a */
    /* loaded from: classes4.dex */
    public static class C2886a extends StructSerializer<ListFoldersResult> {

        /* renamed from: b */
        public static final C2886a f17848b = new C2886a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFoldersResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(SharedFolderMetadata.C2947a.f17971b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            ListFoldersResult listFoldersResult = new ListFoldersResult(list, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFoldersResult, listFoldersResult.toStringMultiline());
            return listFoldersResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFoldersResult listFoldersResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(SharedFolderMetadata.C2947a.f17971b).serialize((StoneSerializer) listFoldersResult.entries, jsonGenerator);
            if (listFoldersResult.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) listFoldersResult.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFoldersResult(List<SharedFolderMetadata> list, String str) {
        if (list != null) {
            Iterator<SharedFolderMetadata> it2 = list.iterator();
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
        ListFoldersResult listFoldersResult = (ListFoldersResult) obj;
        List<SharedFolderMetadata> list = this.entries;
        List<SharedFolderMetadata> list2 = listFoldersResult.entries;
        if (list == list2 || list.equals(list2)) {
            String str = this.cursor;
            String str2 = listFoldersResult.cursor;
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

    public List<SharedFolderMetadata> getEntries() {
        return this.entries;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.entries, this.cursor});
    }

    public String toString() {
        return C2886a.f17848b.serialize((C2886a) this, false);
    }

    public String toStringMultiline() {
        return C2886a.f17848b.serialize((C2886a) this, true);
    }

    public ListFoldersResult(List<SharedFolderMetadata> list) {
        this(list, null);
    }
}
