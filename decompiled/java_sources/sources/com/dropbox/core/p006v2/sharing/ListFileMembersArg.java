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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class ListFileMembersArg {

    /* renamed from: a */
    public final String f17798a;

    /* renamed from: b */
    public final List<MemberAction> f17799b;

    /* renamed from: c */
    public final boolean f17800c;

    /* renamed from: d */
    public final long f17801d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected List<MemberAction> actions;
        protected final String file;
        protected boolean includeInherited;
        protected long limit;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'file' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'file' is shorter than 1");
            }
            if (!Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                throw new IllegalArgumentException("String 'file' does not match pattern");
            }
            this.file = str;
            this.actions = null;
            this.includeInherited = true;
            this.limit = 100L;
        }

        public ListFileMembersArg build() {
            return new ListFileMembersArg(this.file, this.actions, this.includeInherited, this.limit);
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

        public Builder withIncludeInherited(Boolean bool) {
            if (bool != null) {
                this.includeInherited = bool.booleanValue();
            } else {
                this.includeInherited = true;
            }
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

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersArg$a */
    /* loaded from: classes4.dex */
    public static class C2866a extends StructSerializer<ListFileMembersArg> {

        /* renamed from: b */
        public static final C2866a f17802b = new C2866a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileMembersArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.TRUE;
            Long l = 100L;
            String str2 = null;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("file".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberAction.C2893b.f17866b)).deserialize(jsonParser);
                } else if ("include_inherited".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"file\" missing.");
            }
            ListFileMembersArg listFileMembersArg = new ListFileMembersArg(str2, list, bool.booleanValue(), l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFileMembersArg, listFileMembersArg.m11693f());
            return listFileMembersArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileMembersArg listFileMembersArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("file");
            StoneSerializers.string().serialize((StoneSerializer<String>) listFileMembersArg.f17798a, jsonGenerator);
            if (listFileMembersArg.f17799b != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(MemberAction.C2893b.f17866b)).serialize((StoneSerializer) listFileMembersArg.f17799b, jsonGenerator);
            }
            jsonGenerator.writeFieldName("include_inherited");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFileMembersArg.f17800c), jsonGenerator);
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(listFileMembersArg.f17801d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFileMembersArg(String str, List<MemberAction> list, boolean z, long j) {
        if (str != null) {
            if (str.length() >= 1) {
                if (Pattern.matches("((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?", str)) {
                    this.f17798a = str;
                    if (list != null) {
                        Iterator<MemberAction> it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (it2.next() == null) {
                                throw new IllegalArgumentException("An item in list 'actions' is null");
                            }
                        }
                    }
                    this.f17799b = list;
                    this.f17800c = z;
                    if (j < 1) {
                        throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
                    }
                    if (j <= 300) {
                        this.f17801d = j;
                        return;
                    }
                    throw new IllegalArgumentException("Number 'limit' is larger than 300L");
                }
                throw new IllegalArgumentException("String 'file' does not match pattern");
            }
            throw new IllegalArgumentException("String 'file' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'file' is null");
    }

    /* renamed from: e */
    public static Builder m11688e(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public List<MemberAction> m11689a() {
        return this.f17799b;
    }

    /* renamed from: b */
    public String m11690b() {
        return this.f17798a;
    }

    /* renamed from: c */
    public boolean m11691c() {
        return this.f17800c;
    }

    /* renamed from: d */
    public long m11692d() {
        return this.f17801d;
    }

    public boolean equals(Object obj) {
        List<MemberAction> list;
        List<MemberAction> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFileMembersArg listFileMembersArg = (ListFileMembersArg) obj;
        String str = this.f17798a;
        String str2 = listFileMembersArg.f17798a;
        return (str == str2 || str.equals(str2)) && ((list = this.f17799b) == (list2 = listFileMembersArg.f17799b) || (list != null && list.equals(list2))) && this.f17800c == listFileMembersArg.f17800c && this.f17801d == listFileMembersArg.f17801d;
    }

    /* renamed from: f */
    public String m11693f() {
        return C2866a.f17802b.serialize((C2866a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17798a, this.f17799b, Boolean.valueOf(this.f17800c), Long.valueOf(this.f17801d)});
    }

    public String toString() {
        return C2866a.f17802b.serialize((C2866a) this, false);
    }

    public ListFileMembersArg(String str) {
        this(str, null, true, 100L);
    }
}
