package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupAccessType;
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
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.dropbox.core.v2.team.k */
/* loaded from: classes4.dex */
public class C3296k extends C3290h {

    /* renamed from: c */
    public final GroupAccessType f18628c;

    /* renamed from: d */
    public final boolean f18629d;

    /* renamed from: com.dropbox.core.v2.team.k$a */
    /* loaded from: classes4.dex */
    public static class a extends StructSerializer<C3296k> {

        /* renamed from: b */
        public static final a f18630b = new a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C3296k deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupAccessType groupAccessType = null;
            Boolean bool = Boolean.TRUE;
            UserSelectorArg userSelectorArg = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group".equals(currentName)) {
                    groupSelector = GroupSelector.C3071b.f18212b.deserialize(jsonParser);
                } else if ("user".equals(currentName)) {
                    userSelectorArg = UserSelectorArg.C3275b.f18582b.deserialize(jsonParser);
                } else if ("access_type".equals(currentName)) {
                    groupAccessType = GroupAccessType.C3055b.f18182b.deserialize(jsonParser);
                } else if ("return_members".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
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
            if (groupAccessType == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_type\" missing.");
            }
            C3296k c3296k = new C3296k(groupSelector, userSelectorArg, groupAccessType, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(c3296k, c3296k.mo12880c());
            return c3296k;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(C3296k c3296k, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group");
            GroupSelector.C3071b.f18212b.serialize(c3296k.f18613a, jsonGenerator);
            jsonGenerator.writeFieldName("user");
            UserSelectorArg.C3275b.f18582b.serialize(c3296k.f18614b, jsonGenerator);
            jsonGenerator.writeFieldName("access_type");
            GroupAccessType.C3055b.f18182b.serialize(c3296k.f18628c, jsonGenerator);
            jsonGenerator.writeFieldName("return_members");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(c3296k.f18629d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public C3296k(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType, boolean z) {
        super(groupSelector, userSelectorArg);
        if (groupAccessType != null) {
            this.f18628c = groupAccessType;
            this.f18629d = z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'accessType' is null");
    }

    @Override // com.dropbox.core.p006v2.team.C3290h
    /* renamed from: a */
    public GroupSelector mo12878a() {
        return this.f18613a;
    }

    @Override // com.dropbox.core.p006v2.team.C3290h
    /* renamed from: b */
    public UserSelectorArg mo12879b() {
        return this.f18614b;
    }

    @Override // com.dropbox.core.p006v2.team.C3290h
    /* renamed from: c */
    public String mo12880c() {
        return a.f18630b.serialize((a) this, true);
    }

    /* renamed from: d */
    public GroupAccessType m12903d() {
        return this.f18628c;
    }

    /* renamed from: e */
    public boolean m12904e() {
        return this.f18629d;
    }

    @Override // com.dropbox.core.p006v2.team.C3290h
    public boolean equals(Object obj) {
        UserSelectorArg userSelectorArg;
        UserSelectorArg userSelectorArg2;
        GroupAccessType groupAccessType;
        GroupAccessType groupAccessType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C3296k c3296k = (C3296k) obj;
        GroupSelector groupSelector = this.f18613a;
        GroupSelector groupSelector2 = c3296k.f18613a;
        return (groupSelector == groupSelector2 || groupSelector.equals(groupSelector2)) && ((userSelectorArg = this.f18614b) == (userSelectorArg2 = c3296k.f18614b) || userSelectorArg.equals(userSelectorArg2)) && (((groupAccessType = this.f18628c) == (groupAccessType2 = c3296k.f18628c) || groupAccessType.equals(groupAccessType2)) && this.f18629d == c3296k.f18629d);
    }

    @Override // com.dropbox.core.p006v2.team.C3290h
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18628c, Boolean.valueOf(this.f18629d)});
    }

    @Override // com.dropbox.core.p006v2.team.C3290h
    public String toString() {
        return a.f18630b.serialize((a) this, false);
    }

    public C3296k(GroupSelector groupSelector, UserSelectorArg userSelectorArg, GroupAccessType groupAccessType) {
        this(groupSelector, userSelectorArg, groupAccessType, true);
    }
}
