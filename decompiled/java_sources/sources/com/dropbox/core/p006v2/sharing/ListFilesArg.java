package com.dropbox.core.p006v2.sharing;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.sharing.FileAction;
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
public class ListFilesArg {

    /* renamed from: a */
    public final long f17822a;

    /* renamed from: b */
    public final List<FileAction> f17823b;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected long limit = 100;
        protected List<FileAction> actions = null;

        public ListFilesArg build() {
            return new ListFilesArg(this.limit, this.actions);
        }

        public Builder withActions(List<FileAction> list) {
            if (list != null) {
                Iterator<FileAction> it2 = list.iterator();
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
            if (l.longValue() > 300) {
                throw new IllegalArgumentException("Number 'limit' is larger than 300L");
            }
            this.limit = l.longValue();
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFilesArg$a */
    /* loaded from: classes4.dex */
    public static class C2875a extends StructSerializer<ListFilesArg> {

        /* renamed from: b */
        public static final C2875a f17824b = new C2875a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFilesArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = 100L;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(FileAction.C2817b.f17713b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ListFilesArg listFilesArg = new ListFilesArg(l.longValue(), list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFilesArg, listFilesArg.m11724d());
            return listFilesArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFilesArg listFilesArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(listFilesArg.f17822a), jsonGenerator);
            if (listFilesArg.f17823b != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(FileAction.C2817b.f17713b)).serialize((StoneSerializer) listFilesArg.f17823b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFilesArg(long j, List<FileAction> list) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 300) {
            this.f17822a = j;
            if (list != null) {
                Iterator<FileAction> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'actions' is null");
                    }
                }
            }
            this.f17823b = list;
            return;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 300L");
    }

    /* renamed from: c */
    public static Builder m11721c() {
        return new Builder();
    }

    /* renamed from: a */
    public List<FileAction> m11722a() {
        return this.f17823b;
    }

    /* renamed from: b */
    public long m11723b() {
        return this.f17822a;
    }

    /* renamed from: d */
    public String m11724d() {
        return C2875a.f17824b.serialize((C2875a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFilesArg listFilesArg = (ListFilesArg) obj;
        if (this.f17822a == listFilesArg.f17822a) {
            List<FileAction> list = this.f17823b;
            List<FileAction> list2 = listFilesArg.f17823b;
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
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f17822a), this.f17823b});
    }

    public String toString() {
        return C2875a.f17824b.serialize((C2875a) this, false);
    }

    public ListFilesArg() {
        this(100L, null);
    }
}
