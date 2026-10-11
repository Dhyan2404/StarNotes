package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LockFileResultEntry;
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
public class LockFileBatchResult extends FileOpsResult {
    protected final List<LockFileResultEntry> entries;

    /* renamed from: com.dropbox.core.v2.files.LockFileBatchResult$a */
    /* loaded from: classes4.dex */
    public static class C2586a extends StructSerializer<LockFileBatchResult> {

        /* renamed from: b */
        public static final C2586a f17244b = new C2586a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LockFileBatchResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(LockFileResultEntry.C2591b.f17255b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            LockFileBatchResult lockFileBatchResult = new LockFileBatchResult(list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(lockFileBatchResult, lockFileBatchResult.toStringMultiline());
            return lockFileBatchResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LockFileBatchResult lockFileBatchResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(LockFileResultEntry.C2591b.f17255b).serialize((StoneSerializer) lockFileBatchResult.entries, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LockFileBatchResult(List<LockFileResultEntry> list) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        Iterator<LockFileResultEntry> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.entries = list;
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        List<LockFileResultEntry> list = this.entries;
        List<LockFileResultEntry> list2 = ((LockFileBatchResult) obj).entries;
        return list == list2 || list.equals(list2);
    }

    public List<LockFileResultEntry> getEntries() {
        return this.entries;
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.entries});
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public String toString() {
        return C2586a.f17244b.serialize((C2586a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.FileOpsResult
    public String toStringMultiline() {
        return C2586a.f17244b.serialize((C2586a) this, true);
    }
}
