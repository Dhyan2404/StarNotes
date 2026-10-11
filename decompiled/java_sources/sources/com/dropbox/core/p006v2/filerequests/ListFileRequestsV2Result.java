package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.p006v2.filerequests.FileRequest;
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
public class ListFileRequestsV2Result {
    protected final String cursor;
    protected final List<FileRequest> fileRequests;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.filerequests.ListFileRequestsV2Result$a */
    /* loaded from: classes4.dex */
    public static class C2482a extends StructSerializer<ListFileRequestsV2Result> {

        /* renamed from: b */
        public static final C2482a f17007b = new C2482a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileRequestsV2Result deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("file_requests".equals(currentName)) {
                    list = (List) StoneSerializers.list(FileRequest.C2471a.f16996b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"file_requests\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListFileRequestsV2Result listFileRequestsV2Result = new ListFileRequestsV2Result(list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFileRequestsV2Result, listFileRequestsV2Result.toStringMultiline());
            return listFileRequestsV2Result;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileRequestsV2Result listFileRequestsV2Result, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_requests");
            StoneSerializers.list(FileRequest.C2471a.f16996b).serialize((StoneSerializer) listFileRequestsV2Result.fileRequests, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) listFileRequestsV2Result.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFileRequestsV2Result.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFileRequestsV2Result(List<FileRequest> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'fileRequests' is null");
        }
        Iterator<FileRequest> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'fileRequests' is null");
            }
        }
        this.fileRequests = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
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
        ListFileRequestsV2Result listFileRequestsV2Result = (ListFileRequestsV2Result) obj;
        List<FileRequest> list = this.fileRequests;
        List<FileRequest> list2 = listFileRequestsV2Result.fileRequests;
        return (list == list2 || list.equals(list2)) && ((str = this.cursor) == (str2 = listFileRequestsV2Result.cursor) || str.equals(str2)) && this.hasMore == listFileRequestsV2Result.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public List<FileRequest> getFileRequests() {
        return this.fileRequests;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileRequests, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C2482a.f17007b.serialize((C2482a) this, false);
    }

    public String toStringMultiline() {
        return C2482a.f17007b.serialize((C2482a) this, true);
    }
}
