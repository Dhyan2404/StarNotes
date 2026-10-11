package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class GroupMembersRemoveError {

    /* renamed from: a */
    public Tag f18203a;

    /* renamed from: b */
    public List<String> f18204b;

    /* renamed from: c */
    public List<String> f18205c;
    public static final GroupMembersRemoveError GROUP_NOT_FOUND = new GroupMembersRemoveError().m12324c(Tag.GROUP_NOT_FOUND);
    public static final GroupMembersRemoveError OTHER = new GroupMembersRemoveError().m12324c(Tag.OTHER);
    public static final GroupMembersRemoveError SYSTEM_MANAGED_GROUP_DISALLOWED = new GroupMembersRemoveError().m12324c(Tag.SYSTEM_MANAGED_GROUP_DISALLOWED);
    public static final GroupMembersRemoveError MEMBER_NOT_IN_GROUP = new GroupMembersRemoveError().m12324c(Tag.MEMBER_NOT_IN_GROUP);
    public static final GroupMembersRemoveError GROUP_NOT_IN_TEAM = new GroupMembersRemoveError().m12324c(Tag.GROUP_NOT_IN_TEAM);

    /* loaded from: classes4.dex */
    public enum Tag {
        GROUP_NOT_FOUND,
        OTHER,
        SYSTEM_MANAGED_GROUP_DISALLOWED,
        MEMBER_NOT_IN_GROUP,
        GROUP_NOT_IN_TEAM,
        MEMBERS_NOT_IN_TEAM,
        USERS_NOT_FOUND
    }

    /* renamed from: com.dropbox.core.v2.team.GroupMembersRemoveError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3068a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18206a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18206a = iArr;
            try {
                iArr[Tag.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18206a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18206a[Tag.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18206a[Tag.MEMBER_NOT_IN_GROUP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18206a[Tag.GROUP_NOT_IN_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18206a[Tag.MEMBERS_NOT_IN_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18206a[Tag.USERS_NOT_FOUND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupMembersRemoveError$b */
    /* loaded from: classes4.dex */
    public static class C3069b extends UnionSerializer<GroupMembersRemoveError> {

        /* renamed from: b */
        public static final C3069b f18207b = new C3069b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupMembersRemoveError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupMembersRemoveError usersNotFound;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("group_not_found".equals(readTag)) {
                usersNotFound = GroupMembersRemoveError.GROUP_NOT_FOUND;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                usersNotFound = GroupMembersRemoveError.OTHER;
            } else if ("system_managed_group_disallowed".equals(readTag)) {
                usersNotFound = GroupMembersRemoveError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("member_not_in_group".equals(readTag)) {
                usersNotFound = GroupMembersRemoveError.MEMBER_NOT_IN_GROUP;
            } else if ("group_not_in_team".equals(readTag)) {
                usersNotFound = GroupMembersRemoveError.GROUP_NOT_IN_TEAM;
            } else if ("members_not_in_team".equals(readTag)) {
                StoneSerializer.expectField("members_not_in_team", jsonParser);
                usersNotFound = GroupMembersRemoveError.membersNotInTeam((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            } else {
                if (!"users_not_found".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("users_not_found", jsonParser);
                usersNotFound = GroupMembersRemoveError.usersNotFound((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return usersNotFound;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupMembersRemoveError groupMembersRemoveError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3068a.f18206a[groupMembersRemoveError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeString("group_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 3:
                    jsonGenerator.writeString("system_managed_group_disallowed");
                    return;
                case 4:
                    jsonGenerator.writeString("member_not_in_group");
                    return;
                case 5:
                    jsonGenerator.writeString("group_not_in_team");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("members_not_in_team", jsonGenerator);
                    jsonGenerator.writeFieldName("members_not_in_team");
                    StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) groupMembersRemoveError.f18204b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("users_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("users_not_found");
                    StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) groupMembersRemoveError.f18205c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupMembersRemoveError.tag());
            }
        }
    }

    public static GroupMembersRemoveError membersNotInTeam(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersRemoveError().m12325d(Tag.MEMBERS_NOT_IN_TEAM, list);
    }

    public static GroupMembersRemoveError usersNotFound(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersRemoveError().m12326e(Tag.USERS_NOT_FOUND, list);
    }

    /* renamed from: c */
    public final GroupMembersRemoveError m12324c(Tag tag) {
        GroupMembersRemoveError groupMembersRemoveError = new GroupMembersRemoveError();
        groupMembersRemoveError.f18203a = tag;
        return groupMembersRemoveError;
    }

    /* renamed from: d */
    public final GroupMembersRemoveError m12325d(Tag tag, List<String> list) {
        GroupMembersRemoveError groupMembersRemoveError = new GroupMembersRemoveError();
        groupMembersRemoveError.f18203a = tag;
        groupMembersRemoveError.f18204b = list;
        return groupMembersRemoveError;
    }

    /* renamed from: e */
    public final GroupMembersRemoveError m12326e(Tag tag, List<String> list) {
        GroupMembersRemoveError groupMembersRemoveError = new GroupMembersRemoveError();
        groupMembersRemoveError.f18203a = tag;
        groupMembersRemoveError.f18205c = list;
        return groupMembersRemoveError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupMembersRemoveError)) {
            return false;
        }
        GroupMembersRemoveError groupMembersRemoveError = (GroupMembersRemoveError) obj;
        Tag tag = this.f18203a;
        if (tag != groupMembersRemoveError.f18203a) {
            return false;
        }
        switch (C3068a.f18206a[tag.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                List<String> list = this.f18204b;
                List<String> list2 = groupMembersRemoveError.f18204b;
                return list == list2 || list.equals(list2);
            case 7:
                List<String> list3 = this.f18205c;
                List<String> list4 = groupMembersRemoveError.f18205c;
                return list3 == list4 || list3.equals(list4);
            default:
                return false;
        }
    }

    public List<String> getMembersNotInTeamValue() {
        if (this.f18203a == Tag.MEMBERS_NOT_IN_TEAM) {
            return this.f18204b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag." + this.f18203a.name());
    }

    public List<String> getUsersNotFoundValue() {
        if (this.f18203a == Tag.USERS_NOT_FOUND) {
            return this.f18205c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag." + this.f18203a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18203a, this.f18204b, this.f18205c});
    }

    public boolean isGroupNotFound() {
        return this.f18203a == Tag.GROUP_NOT_FOUND;
    }

    public boolean isGroupNotInTeam() {
        return this.f18203a == Tag.GROUP_NOT_IN_TEAM;
    }

    public boolean isMemberNotInGroup() {
        return this.f18203a == Tag.MEMBER_NOT_IN_GROUP;
    }

    public boolean isMembersNotInTeam() {
        return this.f18203a == Tag.MEMBERS_NOT_IN_TEAM;
    }

    public boolean isOther() {
        return this.f18203a == Tag.OTHER;
    }

    public boolean isSystemManagedGroupDisallowed() {
        return this.f18203a == Tag.SYSTEM_MANAGED_GROUP_DISALLOWED;
    }

    public boolean isUsersNotFound() {
        return this.f18203a == Tag.USERS_NOT_FOUND;
    }

    public Tag tag() {
        return this.f18203a;
    }

    public String toString() {
        return C3069b.f18207b.serialize((C3069b) this, false);
    }

    public String toStringMultiline() {
        return C3069b.f18207b.serialize((C3069b) this, true);
    }
}
