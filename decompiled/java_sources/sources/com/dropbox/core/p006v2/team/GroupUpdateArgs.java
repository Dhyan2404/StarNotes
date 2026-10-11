package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupSelector;
import com.dropbox.core.p006v2.teamcommon.GroupManagementType;
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

/* loaded from: classes4.dex */
public class GroupUpdateArgs extends jji {

    /* renamed from: b */
    public final GroupSelector f18215b;

    /* renamed from: c */
    public final String f18216c;

    /* renamed from: d */
    public final String f18217d;

    /* renamed from: e */
    public final GroupManagementType f18218e;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final GroupSelector group;
        protected String newGroupExternalId;
        protected GroupManagementType newGroupManagementType;
        protected String newGroupName;
        protected boolean returnMembers;

        public Builder(GroupSelector groupSelector) {
            if (groupSelector == null) {
                throw new IllegalArgumentException("Required value for 'group' is null");
            }
            this.group = groupSelector;
            this.returnMembers = true;
            this.newGroupName = null;
            this.newGroupExternalId = null;
            this.newGroupManagementType = null;
        }

        public GroupUpdateArgs build() {
            return new GroupUpdateArgs(this.group, this.returnMembers, this.newGroupName, this.newGroupExternalId, this.newGroupManagementType);
        }

        public Builder withNewGroupExternalId(String str) {
            this.newGroupExternalId = str;
            return this;
        }

        public Builder withNewGroupManagementType(GroupManagementType groupManagementType) {
            this.newGroupManagementType = groupManagementType;
            return this;
        }

        public Builder withNewGroupName(String str) {
            this.newGroupName = str;
            return this;
        }

        public Builder withReturnMembers(Boolean bool) {
            if (bool != null) {
                this.returnMembers = bool.booleanValue();
            } else {
                this.returnMembers = true;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupUpdateArgs$a */
    /* loaded from: classes4.dex */
    public static class C3074a extends StructSerializer<GroupUpdateArgs> {

        /* renamed from: b */
        public static final C3074a f18219b = new C3074a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupUpdateArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupSelector groupSelector = null;
            String str2 = null;
            String str3 = null;
            GroupManagementType groupManagementType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group".equals(currentName)) {
                    groupSelector = GroupSelector.C3071b.f18212b.deserialize(jsonParser);
                } else if ("return_members".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("new_group_name".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_group_external_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("new_group_management_type".equals(currentName)) {
                    groupManagementType = (GroupManagementType) StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (groupSelector == null) {
                throw new JsonParseException(jsonParser, "Required field \"group\" missing.");
            }
            GroupUpdateArgs groupUpdateArgs = new GroupUpdateArgs(groupSelector, bool.booleanValue(), str2, str3, groupManagementType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupUpdateArgs, groupUpdateArgs.mo12340b());
            return groupUpdateArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupUpdateArgs groupUpdateArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group");
            GroupSelector.C3071b.f18212b.serialize(groupUpdateArgs.f18215b, jsonGenerator);
            jsonGenerator.writeFieldName("return_members");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupUpdateArgs.f74379a), jsonGenerator);
            if (groupUpdateArgs.f18216c != null) {
                jsonGenerator.writeFieldName("new_group_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) groupUpdateArgs.f18216c, jsonGenerator);
            }
            if (groupUpdateArgs.f18217d != null) {
                jsonGenerator.writeFieldName("new_group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) groupUpdateArgs.f18217d, jsonGenerator);
            }
            if (groupUpdateArgs.f18218e != null) {
                jsonGenerator.writeFieldName("new_group_management_type");
                StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).serialize((StoneSerializer) groupUpdateArgs.f18218e, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupUpdateArgs(GroupSelector groupSelector, boolean z, String str, String str2, GroupManagementType groupManagementType) {
        super(z);
        if (groupSelector != null) {
            this.f18215b = groupSelector;
            this.f18216c = str;
            this.f18217d = str2;
            this.f18218e = groupManagementType;
            return;
        }
        throw new IllegalArgumentException("Required value for 'group' is null");
    }

    /* renamed from: g */
    public static Builder m12338g(GroupSelector groupSelector) {
        return new Builder(groupSelector);
    }

    @Override // com.sunia.HTREnginev2.jji
    /* renamed from: a */
    public boolean mo12339a() {
        return this.f74379a;
    }

    @Override // com.sunia.HTREnginev2.jji
    /* renamed from: b */
    public String mo12340b() {
        return C3074a.f18219b.serialize((C3074a) this, true);
    }

    /* renamed from: c */
    public GroupSelector m12341c() {
        return this.f18215b;
    }

    /* renamed from: d */
    public String m12342d() {
        return this.f18217d;
    }

    /* renamed from: e */
    public GroupManagementType m12343e() {
        return this.f18218e;
    }

    @Override // com.sunia.HTREnginev2.jji
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
        GroupUpdateArgs groupUpdateArgs = (GroupUpdateArgs) obj;
        GroupSelector groupSelector = this.f18215b;
        GroupSelector groupSelector2 = groupUpdateArgs.f18215b;
        if ((groupSelector == groupSelector2 || groupSelector.equals(groupSelector2)) && this.f74379a == groupUpdateArgs.f74379a && (((str = this.f18216c) == (str2 = groupUpdateArgs.f18216c) || (str != null && str.equals(str2))) && ((str3 = this.f18217d) == (str4 = groupUpdateArgs.f18217d) || (str3 != null && str3.equals(str4))))) {
            GroupManagementType groupManagementType = this.f18218e;
            GroupManagementType groupManagementType2 = groupUpdateArgs.f18218e;
            if (groupManagementType == groupManagementType2) {
                return true;
            }
            if (groupManagementType != null && groupManagementType.equals(groupManagementType2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public String m12344f() {
        return this.f18216c;
    }

    @Override // com.sunia.HTREnginev2.jji
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18215b, this.f18216c, this.f18217d, this.f18218e});
    }

    @Override // com.sunia.HTREnginev2.jji
    public String toString() {
        return C3074a.f18219b.serialize((C3074a) this, false);
    }

    public GroupUpdateArgs(GroupSelector groupSelector) {
        this(groupSelector, true, null, null, null);
    }
}
