package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupSelector;
import com.dropbox.core.p006v2.team.UserSelectorArg;
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
import com.sunia.HTREnginev2.jji;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.dropbox.core.v2.team.j */
/* loaded from: classes4.dex */
public class C3294j extends jji {

    /* renamed from: b */
    public final GroupSelector f18623b;

    /* renamed from: c */
    public final List<UserSelectorArg> f18624c;

    /* renamed from: com.dropbox.core.v2.team.j$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3294j> {

        /* renamed from: b */
        public static final a f18625b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3294j deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            GroupSelector groupSelector = null;
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
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group".equals(currentName)) {
                    groupSelector = GroupSelector.C3071b.f18212b.deserialize(jsonParser);
                } else if ("users".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserSelectorArg.C3275b.f18582b).deserialize(jsonParser);
                } else if ("return_members".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (groupSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"group\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"users\" missing.");
            }
            C3294j c3294j = new C3294j(groupSelector, list, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3294j, c3294j.mo12340b());
            return c3294j;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3294j c3294j, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group");
            GroupSelector.C3071b.f18212b.serialize(c3294j.f18623b, jsonGenerator);
            jsonGenerator.writeFieldName("users");
            StoneSerializers.list(UserSelectorArg.C3275b.f18582b).serialize((StoneSerializer) c3294j.f18624c, jsonGenerator);
            jsonGenerator.writeFieldName("return_members");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c3294j.f74379a), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3294j(GroupSelector groupSelector, List<UserSelectorArg> list, boolean z) {
        super(z);
        if (groupSelector != null) {
            this.f18623b = groupSelector;
            if (list != null) {
                Iterator<UserSelectorArg> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'users' is null");
                    }
                }
                this.f18624c = list;
                return;
            }
            throw new IllegalArgumentException("Required value for 'users' is null");
        }
        throw new IllegalArgumentException("Required value for 'group' is null");
    }

    @Override // com.sunia.HTREnginev2.jji
    /* renamed from: a */
    public boolean mo12339a() {
        return this.f74379a;
    }

    @Override // com.sunia.HTREnginev2.jji
    /* renamed from: b */
    public String mo12340b() {
        return a.f18625b.serialize((a) this, true);
    }

    /* renamed from: c */
    public GroupSelector m12895c() {
        return this.f18623b;
    }

    /* renamed from: d */
    public List<UserSelectorArg> m12896d() {
        return this.f18624c;
    }

    @Override // com.sunia.HTREnginev2.jji
    public boolean equals(Object obj) {
        List<UserSelectorArg> list;
        List<UserSelectorArg> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3294j c3294j = (C3294j) obj;
        GroupSelector groupSelector = this.f18623b;
        GroupSelector groupSelector2 = c3294j.f18623b;
        return (groupSelector == groupSelector2 || groupSelector.equals(groupSelector2)) && ((list = this.f18624c) == (list2 = c3294j.f18624c) || list.equals(list2)) && this.f74379a == c3294j.f74379a;
    }

    @Override // com.sunia.HTREnginev2.jji
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18623b, this.f18624c});
    }

    @Override // com.sunia.HTREnginev2.jji
    public String toString() {
        return a.f18625b.serialize((a) this, false);
    }

    public C3294j(GroupSelector groupSelector, List<UserSelectorArg> list) {
        this(groupSelector, list, true);
    }
}
