package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupSelector;
import com.dropbox.core.p006v2.team.UserSelectorArg;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.team.h */
/* loaded from: classes4.dex */
public class C3290h {

    /* renamed from: a */
    public final GroupSelector f18613a;

    /* renamed from: b */
    public final UserSelectorArg f18614b;

    /* renamed from: com.dropbox.core.v2.team.h$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3290h> {

        /* renamed from: b */
        public static final a f18615b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3290h deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            UserSelectorArg userSelectorArg = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group".equals(currentName)) {
                    groupSelector = GroupSelector.C3071b.f18212b.deserialize(jsonParser);
                } else if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (groupSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"group\" missing.");
            }
            if (userSelectorArg == null) {
                throw new JsonParseException(jsonParser, "Required field \"user\" missing.");
            }
            C3290h c3290h = new C3290h(groupSelector, userSelectorArg);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3290h, c3290h.mo12880c());
            return c3290h;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3290h c3290h, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group");
            GroupSelector.C3071b.f18212b.serialize(c3290h.f18613a, jsonGenerator);
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(c3290h.f18614b, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3290h(GroupSelector groupSelector, UserSelectorArg userSelectorArg) {
        if (groupSelector == null) {
            throw new IllegalArgumentException("Required value for 'group' is null");
        }
        this.f18613a = groupSelector;
        if (userSelectorArg == null) {
            throw new IllegalArgumentException("Required value for 'user' is null");
        }
        this.f18614b = userSelectorArg;
    }

    /* renamed from: a */
    public GroupSelector mo12878a() {
        return this.f18613a;
    }

    /* renamed from: b */
    public UserSelectorArg mo12879b() {
        return this.f18614b;
    }

    /* renamed from: c */
    public String mo12880c() {
        return a.f18615b.serialize((a) this, true);
    }

    public boolean equals(Object obj) {
        UserSelectorArg userSelectorArg;
        UserSelectorArg userSelectorArg2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3290h c3290h = (C3290h) obj;
        GroupSelector groupSelector = this.f18613a;
        GroupSelector groupSelector2 = c3290h.f18613a;
        return (groupSelector == groupSelector2 || groupSelector.equals(groupSelector2)) && ((userSelectorArg = this.f18614b) == (userSelectorArg2 = c3290h.f18614b) || userSelectorArg.equals(userSelectorArg2));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18613a, this.f18614b});
    }

    public String toString() {
        return a.f18615b.serialize((a) this, false);
    }
}
