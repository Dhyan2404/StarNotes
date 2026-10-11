package com.dropbox.core.p006v2.team;

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
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class GroupCreateArg {

    /* renamed from: a */
    public final String f18183a;

    /* renamed from: b */
    public final boolean f18184b;

    /* renamed from: c */
    public final String f18185c;

    /* renamed from: d */
    public final GroupManagementType f18186d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean addCreatorAsOwner;
        protected String groupExternalId;
        protected GroupManagementType groupManagementType;
        protected final String groupName;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'groupName' is null");
            }
            this.groupName = str;
            this.addCreatorAsOwner = false;
            this.groupExternalId = null;
            this.groupManagementType = null;
        }

        public GroupCreateArg build() {
            return new GroupCreateArg(this.groupName, this.addCreatorAsOwner, this.groupExternalId, this.groupManagementType);
        }

        public Builder withAddCreatorAsOwner(Boolean bool) {
            if (bool != null) {
                this.addCreatorAsOwner = bool.booleanValue();
            } else {
                this.addCreatorAsOwner = false;
            }
            return this;
        }

        public Builder withGroupExternalId(String str) {
            this.groupExternalId = str;
            return this;
        }

        public Builder withGroupManagementType(GroupManagementType groupManagementType) {
            this.groupManagementType = groupManagementType;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupCreateArg$a */
    /* loaded from: classes4.dex */
    public static class C3056a extends StructSerializer<GroupCreateArg> {

        /* renamed from: b */
        public static final C3056a f18187b = new C3056a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupCreateArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            GroupManagementType groupManagementType = null;
            Boolean bool = Boolean.FALSE;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("group_name".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("add_creator_as_owner".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("group_external_id".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("group_management_type".equals(currentName)) {
                    groupManagementType = (GroupManagementType) StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"group_name\" missing.");
            }
            GroupCreateArg groupCreateArg = new GroupCreateArg(str2, bool.booleanValue(), str3, groupManagementType);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupCreateArg, groupCreateArg.m12291f());
            return groupCreateArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupCreateArg groupCreateArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("group_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) groupCreateArg.f18183a, jsonGenerator);
            jsonGenerator.writeFieldName("add_creator_as_owner");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupCreateArg.f18184b), jsonGenerator);
            if (groupCreateArg.f18185c != null) {
                jsonGenerator.writeFieldName("group_external_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) groupCreateArg.f18185c, jsonGenerator);
            }
            if (groupCreateArg.f18186d != null) {
                jsonGenerator.writeFieldName("group_management_type");
                StoneSerializers.nullable(GroupManagementType.Serializer.INSTANCE).serialize((StoneSerializer) groupCreateArg.f18186d, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupCreateArg(String str, boolean z, String str2, GroupManagementType groupManagementType) {
        if (str != null) {
            this.f18183a = str;
            this.f18184b = z;
            this.f18185c = str2;
            this.f18186d = groupManagementType;
            return;
        }
        throw new IllegalArgumentException("Required value for 'groupName' is null");
    }

    /* renamed from: e */
    public static Builder m12286e(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public boolean m12287a() {
        return this.f18184b;
    }

    /* renamed from: b */
    public String m12288b() {
        return this.f18185c;
    }

    /* renamed from: c */
    public GroupManagementType m12289c() {
        return this.f18186d;
    }

    /* renamed from: d */
    public String m12290d() {
        return this.f18183a;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GroupCreateArg groupCreateArg = (GroupCreateArg) obj;
        String str3 = this.f18183a;
        String str4 = groupCreateArg.f18183a;
        if ((str3 == str4 || str3.equals(str4)) && this.f18184b == groupCreateArg.f18184b && ((str = this.f18185c) == (str2 = groupCreateArg.f18185c) || (str != null && str.equals(str2)))) {
            GroupManagementType groupManagementType = this.f18186d;
            GroupManagementType groupManagementType2 = groupCreateArg.f18186d;
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
    public String m12291f() {
        return C3056a.f18187b.serialize((C3056a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18183a, Boolean.valueOf(this.f18184b), this.f18185c, this.f18186d});
    }

    public String toString() {
        return C3056a.f18187b.serialize((C3056a) this, false);
    }

    public GroupCreateArg(String str) {
        this(str, false, null, null);
    }
}
