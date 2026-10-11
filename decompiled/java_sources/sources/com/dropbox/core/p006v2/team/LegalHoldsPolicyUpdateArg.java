package com.dropbox.core.p006v2.team;

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
public class LegalHoldsPolicyUpdateArg {

    /* renamed from: a */
    public final String f18284a;

    /* renamed from: b */
    public final String f18285b;

    /* renamed from: c */
    public final String f18286c;

    /* renamed from: d */
    public final List<String> f18287d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String description;

        /* renamed from: id */
        protected final String f18288id;
        protected List<String> members;
        protected String name;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (!Pattern.matches("^pid_dbhid:.+", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.f18288id = str;
            this.name = null;
            this.description = null;
            this.members = null;
        }

        public LegalHoldsPolicyUpdateArg build() {
            return new LegalHoldsPolicyUpdateArg(this.f18288id, this.name, this.description, this.members);
        }

        public Builder withDescription(String str) {
            if (str != null && str.length() > 501) {
                throw new IllegalArgumentException("String 'description' is longer than 501");
            }
            this.description = str;
            return this;
        }

        public Builder withMembers(List<String> list) {
            if (list != null) {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'members' is null");
                    }
                }
            }
            this.members = list;
            return this;
        }

        public Builder withName(String str) {
            if (str != null && str.length() > 140) {
                throw new IllegalArgumentException("String 'name' is longer than 140");
            }
            this.name = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.LegalHoldsPolicyUpdateArg$a */
    /* loaded from: classes4.dex */
    public static class C3114a extends StructSerializer<LegalHoldsPolicyUpdateArg> {

        /* renamed from: b */
        public static final C3114a f18289b = new C3114a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsPolicyUpdateArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            String str4 = null;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("description".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("members".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            LegalHoldsPolicyUpdateArg legalHoldsPolicyUpdateArg = new LegalHoldsPolicyUpdateArg(str2, str3, str4, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsPolicyUpdateArg, legalHoldsPolicyUpdateArg.m12424f());
            return legalHoldsPolicyUpdateArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsPolicyUpdateArg legalHoldsPolicyUpdateArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsPolicyUpdateArg.f18284a, jsonGenerator);
            if (legalHoldsPolicyUpdateArg.f18285b != null) {
                jsonGenerator.writeFieldName("name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsPolicyUpdateArg.f18285b, jsonGenerator);
            }
            if (legalHoldsPolicyUpdateArg.f18286c != null) {
                jsonGenerator.writeFieldName("description");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) legalHoldsPolicyUpdateArg.f18286c, jsonGenerator);
            }
            if (legalHoldsPolicyUpdateArg.f18287d != null) {
                jsonGenerator.writeFieldName("members");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize((StoneSerializer) legalHoldsPolicyUpdateArg.f18287d, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsPolicyUpdateArg(String str, String str2, String str3, List<String> list) {
        if (str != null) {
            if (Pattern.matches("^pid_dbhid:.+", str)) {
                this.f18284a = str;
                if (str2 != null && str2.length() > 140) {
                    throw new IllegalArgumentException("String 'name' is longer than 140");
                }
                this.f18285b = str2;
                if (str3 != null && str3.length() > 501) {
                    throw new IllegalArgumentException("String 'description' is longer than 501");
                }
                this.f18286c = str3;
                if (list != null) {
                    Iterator<String> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'members' is null");
                        }
                    }
                }
                this.f18287d = list;
                return;
            }
            throw new IllegalArgumentException("String 'id' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    /* renamed from: e */
    public static Builder m12419e(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public String m12420a() {
        return this.f18286c;
    }

    /* renamed from: b */
    public String m12421b() {
        return this.f18284a;
    }

    /* renamed from: c */
    public List<String> m12422c() {
        return this.f18287d;
    }

    /* renamed from: d */
    public String m12423d() {
        return this.f18285b;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldsPolicyUpdateArg legalHoldsPolicyUpdateArg = (LegalHoldsPolicyUpdateArg) obj;
        String str5 = this.f18284a;
        String str6 = legalHoldsPolicyUpdateArg.f18284a;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.f18285b) == (str2 = legalHoldsPolicyUpdateArg.f18285b) || (str != null && str.equals(str2))) && ((str3 = this.f18286c) == (str4 = legalHoldsPolicyUpdateArg.f18286c) || (str3 != null && str3.equals(str4))))) {
            List<String> list = this.f18287d;
            List<String> list2 = legalHoldsPolicyUpdateArg.f18287d;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public String m12424f() {
        return C3114a.f18289b.serialize((C3114a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18284a, this.f18285b, this.f18286c, this.f18287d});
    }

    public String toString() {
        return C3114a.f18289b.serialize((C3114a) this, false);
    }

    public LegalHoldsPolicyUpdateArg(String str) {
        this(str, null, null, null);
    }
}
