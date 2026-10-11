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
public class DeleteAllClosedFileRequestsResult {
    protected final List<FileRequest> fileRequests;

    /* renamed from: com.dropbox.core.v2.filerequests.DeleteAllClosedFileRequestsResult$a */
    /* loaded from: classes4.dex */
    public static class C2467a extends StructSerializer<DeleteAllClosedFileRequestsResult> {

        /* renamed from: b */
        public static final C2467a f16990b = new C2467a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteAllClosedFileRequestsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("file_requests".equals(currentName)) {
                    list = (List) StoneSerializers.list(FileRequest.C2471a.f16996b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"file_requests\" missing.");
            }
            DeleteAllClosedFileRequestsResult deleteAllClosedFileRequestsResult = new DeleteAllClosedFileRequestsResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(deleteAllClosedFileRequestsResult, deleteAllClosedFileRequestsResult.toStringMultiline());
            return deleteAllClosedFileRequestsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteAllClosedFileRequestsResult deleteAllClosedFileRequestsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file_requests");
            StoneSerializers.list(FileRequest.C2471a.f16996b).serialize((StoneSerializer) deleteAllClosedFileRequestsResult.fileRequests, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DeleteAllClosedFileRequestsResult(List<FileRequest> list) {
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
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<FileRequest> list = this.fileRequests;
        List<FileRequest> list2 = ((DeleteAllClosedFileRequestsResult) obj).fileRequests;
        return list == list2 || list.equals(list2);
    }

    public List<FileRequest> getFileRequests() {
        return this.fileRequests;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.fileRequests});
    }

    public String toString() {
        return C2467a.f16990b.serialize((C2467a) this, false);
    }

    public String toStringMultiline() {
        return C2467a.f16990b.serialize((C2467a) this, true);
    }
}
