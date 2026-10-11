package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.teamcommon.GroupSummary;
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
public class GroupsListResult {
    protected final String cursor;
    protected final List<GroupSummary> groups;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.team.GroupsListResult$a */
    /* loaded from: classes4.dex */
    public static class C3083a extends StructSerializer<GroupsListResult> {

        /* renamed from: b */
        public static final C3083a f18233b = new C3083a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupsListResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("groups".equals(currentName)) {
                    list = (List) StoneSerializers.list(GroupSummary.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"groups\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            GroupsListResult groupsListResult = new GroupsListResult(list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(groupsListResult, groupsListResult.toStringMultiline());
            return groupsListResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupsListResult groupsListResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("groups");
            StoneSerializers.list(GroupSummary.Serializer.INSTANCE).serialize((StoneSerializer) groupsListResult.groups, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) groupsListResult.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(groupsListResult.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GroupsListResult(List<GroupSummary> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'groups' is null");
        }
        Iterator<GroupSummary> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'groups' is null");
            }
        }
        this.groups = list;
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
        GroupsListResult groupsListResult = (GroupsListResult) obj;
        List<GroupSummary> list = this.groups;
        List<GroupSummary> list2 = groupsListResult.groups;
        return (list == list2 || list.equals(list2)) && ((str = this.cursor) == (str2 = groupsListResult.cursor) || str.equals(str2)) && this.hasMore == groupsListResult.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public List<GroupSummary> getGroups() {
        return this.groups;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.groups, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C3083a.f18233b.serialize((C3083a) this, false);
    }

    public String toStringMultiline() {
        return C3083a.f18233b.serialize((C3083a) this, true);
    }
}
