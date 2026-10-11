package com.dropbox.core.p006v2.team;

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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class LegalHoldsPolicyCreateArg {

    /* renamed from: a */
    public final String f18274a;

    /* renamed from: b */
    public final String f18275b;

    /* renamed from: c */
    public final List<String> f18276c;

    /* renamed from: d */
    public final Date f18277d;

    /* renamed from: e */
    public final Date f18278e;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String description;
        protected Date endDate;
        protected final List<String> members;
        protected final String name;
        protected Date startDate;

        public Builder(String str, List<String> list) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            if (str.length() > 140) {
                throw new IllegalArgumentException("String 'name' is longer than 140");
            }
            this.name = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'members' is null");
                }
            }
            this.members = list;
            this.description = null;
            this.startDate = null;
            this.endDate = null;
        }

        public LegalHoldsPolicyCreateArg build() {
            return new LegalHoldsPolicyCreateArg(this.name, this.members, this.description, this.startDate, this.endDate);
        }

        public Builder withDescription(String str) {
            if (str != null && str.length() > 501) {
                throw new IllegalArgumentException("String 'description' is longer than 501");
            }
            this.description = str;
            return this;
        }

        public Builder withEndDate(Date date) {
            this.endDate = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withStartDate(Date date) {
            this.startDate = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyCreateArg$a */
    /* loaded from: classes4.dex */
    public static class C3109a extends StructSerializer<LegalHoldsPolicyCreateArg> {

        /* renamed from: b */
        public static final C3109a f18279b = new C3109a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsPolicyCreateArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            List list = null;
            String str3 = null;
            Date date = null;
            Date date2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("members".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("description".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.END_DATE.equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            LegalHoldsPolicyCreateArg legalHoldsPolicyCreateArg = new LegalHoldsPolicyCreateArg(str2, list, str3, date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsPolicyCreateArg, legalHoldsPolicyCreateArg.m12412g());
            return legalHoldsPolicyCreateArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsPolicyCreateArg legalHoldsPolicyCreateArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsPolicyCreateArg.f18274a, jsonGenerator);
            jsonGenerator.writeFieldName("members");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsPolicyCreateArg.f18276c, jsonGenerator);
            if (legalHoldsPolicyCreateArg.f18275b != null) {
                jsonGenerator.writeFieldName("description");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsPolicyCreateArg.f18275b, jsonGenerator);
            }
            if (legalHoldsPolicyCreateArg.f18277d != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) legalHoldsPolicyCreateArg.f18277d, jsonGenerator);
            }
            if (legalHoldsPolicyCreateArg.f18278e != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.END_DATE);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) legalHoldsPolicyCreateArg.f18278e, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsPolicyCreateArg(String str, List<String> list, String str2, Date date, Date date2) {
        if (str != null) {
            if (str.length() <= 140) {
                this.f18274a = str;
                if (str2 != null && str2.length() > 501) {
                    throw new IllegalArgumentException("String 'description' is longer than 501");
                }
                this.f18275b = str2;
                if (list != null) {
                    Iterator<String> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'members' is null");
                        }
                    }
                    this.f18276c = list;
                    this.f18277d = LangUtil.truncateMillis(date);
                    this.f18278e = LangUtil.truncateMillis(date2);
                    return;
                }
                throw new IllegalArgumentException("Required value for 'members' is null");
            }
            throw new IllegalArgumentException("String 'name' is longer than 140");
        }
        throw new IllegalArgumentException("Required value for 'name' is null");
    }

    /* renamed from: f */
    public static Builder m12406f(String str, List<String> list) {
        return new Builder(str, list);
    }

    /* renamed from: a */
    public String m12407a() {
        return this.f18275b;
    }

    /* renamed from: b */
    public Date m12408b() {
        return this.f18278e;
    }

    /* renamed from: c */
    public List<String> m12409c() {
        return this.f18276c;
    }

    /* renamed from: d */
    public String m12410d() {
        return this.f18274a;
    }

    /* renamed from: e */
    public Date m12411e() {
        return this.f18277d;
    }

    public boolean equals(Object obj) {
        List<String> list;
        List<String> list2;
        String str;
        String str2;
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldsPolicyCreateArg legalHoldsPolicyCreateArg = (LegalHoldsPolicyCreateArg) obj;
        String str3 = this.f18274a;
        String str4 = legalHoldsPolicyCreateArg.f18274a;
        if ((str3 == str4 || str3.equals(str4)) && (((list = this.f18276c) == (list2 = legalHoldsPolicyCreateArg.f18276c) || list.equals(list2)) && (((str = this.f18275b) == (str2 = legalHoldsPolicyCreateArg.f18275b) || (str != null && str.equals(str2))) && ((date = this.f18277d) == (date2 = legalHoldsPolicyCreateArg.f18277d) || (date != null && date.equals(date2)))))) {
            Date date3 = this.f18278e;
            Date date4 = legalHoldsPolicyCreateArg.f18278e;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public String m12412g() {
        return C3109a.f18279b.serialize((C3109a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18274a, this.f18275b, this.f18276c, this.f18277d, this.f18278e});
    }

    public String toString() {
        return C3109a.f18279b.serialize((C3109a) this, false);
    }

    public LegalHoldsPolicyCreateArg(String str, List<String> list) {
        this(str, list, null, null, null);
    }
}
