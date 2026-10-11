package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.GroupMemberInfo;
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
public class GroupsMembersListResult {
    protected final String cursor;
    protected final boolean hasMore;
    protected final List<GroupMemberInfo> members;

    /* renamed from: com.dropbox.core.v2.team.GroupsMembersListResult$a */
    /* loaded from: classes4.dex */
    public static class C3086a extends StructSerializer<GroupsMembersListResult> {

        /* renamed from: b */
        public static final C3086a f18236b = new C3086a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupsMembersListResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("members".equals(currentName)) {
                    list = (List) StoneSerializers.list(GroupMemberInfo.C3062a.f18193b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"members\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            GroupsMembersListResult groupsMembersListResult = new GroupsMembersListResult(list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupsMembersListResult, groupsMembersListResult.toStringMultiline());
            return groupsMembersListResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupsMembersListResult groupsMembersListResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("members");
            StoneSerializers.list(GroupMemberInfo.C3062a.f18193b).serialize((StoneSerializer) groupsMembersListResult.members, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) groupsMembersListResult.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupsMembersListResult.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupsMembersListResult(List<GroupMemberInfo> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'members' is null");
        }
        Iterator<GroupMemberInfo> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'members' is null");
            }
        }
        this.members = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = str;
        this.hasMore = z;
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
        GroupsMembersListResult groupsMembersListResult = (GroupsMembersListResult) obj;
        List<GroupMemberInfo> list = this.members;
        List<GroupMemberInfo> list2 = groupsMembersListResult.members;
        return (list == list2 || list.equals(list2)) && ((str = this.cursor) == (str2 = groupsMembersListResult.cursor) || str.equals(str2)) && this.hasMore == groupsMembersListResult.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public List<GroupMemberInfo> getMembers() {
        return this.members;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.members, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C3086a.f18236b.serialize((C3086a) this, false);
    }

    public String toStringMultiline() {
        return C3086a.f18236b.serialize((C3086a) this, true);
    }
}
