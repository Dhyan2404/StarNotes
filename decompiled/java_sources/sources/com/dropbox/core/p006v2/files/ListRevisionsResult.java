package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileMetadata;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class ListRevisionsResult {
    protected final List<FileMetadata> entries;
    protected final boolean isDeleted;
    protected final Date serverDeleted;

    /* renamed from: com.dropbox.core.v2.files.ListRevisionsResult$a */
    /* loaded from: classes4.dex */
    public static class C2583a extends StructSerializer<ListRevisionsResult> {

        /* renamed from: b */
        public static final C2583a f17241b = new C2583a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListRevisionsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("is_deleted".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("entries".equals(currentName)) {
                    list = (List) StoneSerializers.list(FileMetadata.C2543a.f17151b).deserialize(jsonParser);
                } else if ("server_deleted".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_deleted\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
            }
            ListRevisionsResult listRevisionsResult = new ListRevisionsResult(bool.booleanValue(), list, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listRevisionsResult, listRevisionsResult.toStringMultiline());
            return listRevisionsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListRevisionsResult listRevisionsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("is_deleted");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listRevisionsResult.isDeleted), jsonGenerator);
            jsonGenerator.writeFieldName("entries");
            StoneSerializers.list(FileMetadata.C2543a.f17151b).serialize((StoneSerializer) listRevisionsResult.entries, jsonGenerator);
            if (listRevisionsResult.serverDeleted != null) {
                jsonGenerator.writeFieldName("server_deleted");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) listRevisionsResult.serverDeleted, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListRevisionsResult(boolean z, List<FileMetadata> list, Date date) {
        this.isDeleted = z;
        this.serverDeleted = LangUtil.truncateMillis(date);
        if (list != null) {
            Iterator<FileMetadata> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'entries' is null");
                }
            }
            this.entries = list;
            return;
        }
        throw new IllegalArgumentException("Required value for 'entries' is null");
    }

    public boolean equals(Object obj) {
        List<FileMetadata> list;
        List<FileMetadata> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListRevisionsResult listRevisionsResult = (ListRevisionsResult) obj;
        if (this.isDeleted == listRevisionsResult.isDeleted && ((list = this.entries) == (list2 = listRevisionsResult.entries) || list.equals(list2))) {
            Date date = this.serverDeleted;
            Date date2 = listRevisionsResult.serverDeleted;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public List<FileMetadata> getEntries() {
        return this.entries;
    }

    public boolean getIsDeleted() {
        return this.isDeleted;
    }

    public Date getServerDeleted() {
        return this.serverDeleted;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.isDeleted), this.serverDeleted, this.entries});
    }

    public String toString() {
        return C2583a.f17241b.serialize((C2583a) this, false);
    }

    public String toStringMultiline() {
        return C2583a.f17241b.serialize((C2583a) this, true);
    }

    public ListRevisionsResult(boolean z, List<FileMetadata> list) {
        this(z, list, null);
    }
}
