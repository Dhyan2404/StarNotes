package com.dropbox.core.p006v2.files;

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

/* loaded from: classes4.dex */
public class ListFolderLongpollResult {
    protected final Long backoff;
    protected final boolean changes;

    /* renamed from: com.dropbox.core.v2.files.ListFolderLongpollResult$a */
    /* loaded from: classes4.dex */
    public static class C2576a extends StructSerializer<ListFolderLongpollResult> {

        /* renamed from: b */
        public static final C2576a f17226b = new C2576a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderLongpollResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("changes".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("backoff".equals(currentName)) {
                    l = (Long) StoneSerializers.nullable(StoneSerializers.uInt64()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"changes\" missing.");
            }
            ListFolderLongpollResult listFolderLongpollResult = new ListFolderLongpollResult(bool.booleanValue(), l);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFolderLongpollResult, listFolderLongpollResult.toStringMultiline());
            return listFolderLongpollResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderLongpollResult listFolderLongpollResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("changes");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderLongpollResult.changes), jsonGenerator);
            if (listFolderLongpollResult.backoff != null) {
                jsonGenerator.writeFieldName("backoff");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) listFolderLongpollResult.backoff, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFolderLongpollResult(boolean z, Long l) {
        this.changes = z;
        this.backoff = l;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFolderLongpollResult listFolderLongpollResult = (ListFolderLongpollResult) obj;
        if (this.changes == listFolderLongpollResult.changes) {
            Long l = this.backoff;
            Long l2 = listFolderLongpollResult.backoff;
            if (l == l2) {
                return true;
            }
            if (l != null && l.equals(l2)) {
                return true;
            }
        }
        return false;
    }

    public Long getBackoff() {
        return this.backoff;
    }

    public boolean getChanges() {
        return this.changes;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.changes), this.backoff});
    }

    public String toString() {
        return C2576a.f17226b.serialize((C2576a) this, false);
    }

    public String toStringMultiline() {
        return C2576a.f17226b.serialize((C2576a) this, true);
    }

    public ListFolderLongpollResult(boolean z) {
        this(z, null);
    }
}
