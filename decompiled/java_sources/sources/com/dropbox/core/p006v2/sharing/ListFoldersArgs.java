package com.dropbox.core.p006v2.sharing;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.sharing.FolderAction;
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
public class ListFoldersArgs {

    /* renamed from: a */
    public final long f17841a;

    /* renamed from: b */
    public final List<FolderAction> f17842b;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected long limit = 1000;
        protected List<FolderAction> actions = null;

        public ListFoldersArgs build() {
            return new ListFoldersArgs(this.limit, this.actions);
        }

        public Builder withActions(List<FolderAction> list) {
            if (list != null) {
                Iterator<FolderAction> it2 = list.iterator();
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

    /* renamed from: com.dropbox.core.v2.sharing.ListFoldersArgs$a */
    /* loaded from: classes4.dex */
    public static class C2883a extends StructSerializer<ListFoldersArgs> {

        /* renamed from: b */
        public static final C2883a f17843b = new C2883a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFoldersArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(FolderAction.C2828b.f17733b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ListFoldersArgs listFoldersArgs = new ListFoldersArgs(l.longValue(), list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFoldersArgs, listFoldersArgs.m11752d());
            return listFoldersArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFoldersArgs listFoldersArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(listFoldersArgs.f17841a), jsonGenerator);
            if (listFoldersArgs.f17842b != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(FolderAction.C2828b.f17733b)).serialize((StoneSerializer) listFoldersArgs.f17842b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFoldersArgs(long j, List<FolderAction> list) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            this.f17841a = j;
            if (list != null) {
                Iterator<FolderAction> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.f17842b = list;
            return;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    /* renamed from: c */
    public static Builder m11749c() {
        return new Builder();
    }

    /* renamed from: a */
    public List<FolderAction> m11750a() {
        return this.f17842b;
    }

    /* renamed from: b */
    public long m11751b() {
        return this.f17841a;
    }

    /* renamed from: d */
    public String m11752d() {
        return C2883a.f17843b.serialize((C2883a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFoldersArgs listFoldersArgs = (ListFoldersArgs) obj;
        if (this.f17841a == listFoldersArgs.f17841a) {
            List<FolderAction> list = this.f17842b;
            List<FolderAction> list2 = listFoldersArgs.f17842b;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f17841a), this.f17842b});
    }

    public String toString() {
        return C2883a.f17843b.serialize((C2883a) this, false);
    }

    public ListFoldersArgs() {
        this(1000L, null);
    }
}
