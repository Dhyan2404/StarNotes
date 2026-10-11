package com.dropbox.core.p006v2.sharing;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.sharing.MemberAction;
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
public class ListFolderMembersCursorArg {

    /* renamed from: a */
    public final List<MemberAction> f17838a;

    /* renamed from: b */
    public final long f17839b;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected List<MemberAction> actions = null;
        protected long limit = 1000;

        public ListFolderMembersCursorArg build() {
            return new ListFolderMembersCursorArg(this.actions, this.limit);
        }

        public Builder withActions(List<MemberAction> list) {
            if (list != null) {
                Iterator<MemberAction> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.actions = list;
            return this;
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
            }
            this.limit = l.longValue();
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFolderMembersCursorArg$a */
    /* loaded from: classes4.dex */
    public static class C2882a extends StructSerializer<ListFolderMembersCursorArg> {

        /* renamed from: b */
        public static final C2882a f17840b = new C2882a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderMembersCursorArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = 1000L;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberAction.C2893b.f17866b)).deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ListFolderMembersCursorArg listFolderMembersCursorArg = new ListFolderMembersCursorArg(list, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFolderMembersCursorArg, listFolderMembersCursorArg.mo11737d());
            return listFolderMembersCursorArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderMembersCursorArg listFolderMembersCursorArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (listFolderMembersCursorArg.f17838a != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(MemberAction.C2893b.f17866b)).serialize((StoneSerializer) listFolderMembersCursorArg.f17838a, jsonGenerator);
            }
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(listFolderMembersCursorArg.f17839b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFolderMembersCursorArg(List<MemberAction> list, long j) {
        if (list != null) {
            Iterator<MemberAction> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'actions' is null");
                }
            }
        }
        this.f17838a = list;
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            this.f17839b = j;
            return;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    /* renamed from: c */
    public static Builder m11746c() {
        return new Builder();
    }

    /* renamed from: a */
    public List<MemberAction> mo11735a() {
        return this.f17838a;
    }

    /* renamed from: b */
    public long mo11736b() {
        return this.f17839b;
    }

    /* renamed from: d */
    public String mo11737d() {
        return C2882a.f17840b.serialize((C2882a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFolderMembersCursorArg listFolderMembersCursorArg = (ListFolderMembersCursorArg) obj;
        List<MemberAction> list = this.f17838a;
        List<MemberAction> list2 = listFolderMembersCursorArg.f17838a;
        return (list == list2 || (list != null && list.equals(list2))) && this.f17839b == listFolderMembersCursorArg.f17839b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17838a, Long.valueOf(this.f17839b)});
    }

    public String toString() {
        return C2882a.f17840b.serialize((C2882a) this, false);
    }

    public ListFolderMembersCursorArg() {
        this(null, 1000L);
    }
}
