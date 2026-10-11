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
public final class GroupMembersAddError {

    /* renamed from: a */
    public Tag f18196a;

    /* renamed from: b */
    public List<String> f18197b;

    /* renamed from: c */
    public List<String> f18198c;

    /* renamed from: d */
    public List<String> f18199d;
    public static final GroupMembersAddError GROUP_NOT_FOUND = new GroupMembersAddError().m12314d(Tag.GROUP_NOT_FOUND);
    public static final GroupMembersAddError OTHER = new GroupMembersAddError().m12314d(Tag.OTHER);
    public static final GroupMembersAddError SYSTEM_MANAGED_GROUP_DISALLOWED = new GroupMembersAddError().m12314d(Tag.SYSTEM_MANAGED_GROUP_DISALLOWED);
    public static final GroupMembersAddError DUPLICATE_USER = new GroupMembersAddError().m12314d(Tag.DUPLICATE_USER);
    public static final GroupMembersAddError GROUP_NOT_IN_TEAM = new GroupMembersAddError().m12314d(Tag.GROUP_NOT_IN_TEAM);
    public static final GroupMembersAddError USER_MUST_BE_ACTIVE_TO_BE_OWNER = new GroupMembersAddError().m12314d(Tag.USER_MUST_BE_ACTIVE_TO_BE_OWNER);

    /* loaded from: classes4.dex */
    public enum Tag {
        GROUP_NOT_FOUND,
        OTHER,
        SYSTEM_MANAGED_GROUP_DISALLOWED,
        DUPLICATE_USER,
        GROUP_NOT_IN_TEAM,
        MEMBERS_NOT_IN_TEAM,
        USERS_NOT_FOUND,
        USER_MUST_BE_ACTIVE_TO_BE_OWNER,
        USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP
    }

    /* renamed from: com.dropbox.core.v2.team.GroupMembersAddError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3065a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18200a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18200a = iArr;
            try {
                iArr[Tag.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18200a[Tag.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18200a[Tag.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18200a[Tag.DUPLICATE_USER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18200a[Tag.GROUP_NOT_IN_TEAM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18200a[Tag.MEMBERS_NOT_IN_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18200a[Tag.USERS_NOT_FOUND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18200a[Tag.USER_MUST_BE_ACTIVE_TO_BE_OWNER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18200a[Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupMembersAddError$b */
    /* loaded from: classes4.dex */
    public static class C3066b extends UnionSerializer<GroupMembersAddError> {

        /* renamed from: b */
        public static final C3066b f18201b = new C3066b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupMembersAddError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupMembersAddError userCannotBeManagerOfCompanyManagedGroup;
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
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.GROUP_NOT_FOUND;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.OTHER;
            } else if ("system_managed_group_disallowed".equals(readTag)) {
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("duplicate_user".equals(readTag)) {
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.DUPLICATE_USER;
            } else if ("group_not_in_team".equals(readTag)) {
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.GROUP_NOT_IN_TEAM;
            } else if ("members_not_in_team".equals(readTag)) {
                StoneSerializer.expectField("members_not_in_team", jsonParser);
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.membersNotInTeam((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            } else if ("users_not_found".equals(readTag)) {
                StoneSerializer.expectField("users_not_found", jsonParser);
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.usersNotFound((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            } else if ("user_must_be_active_to_be_owner".equals(readTag)) {
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.USER_MUST_BE_ACTIVE_TO_BE_OWNER;
            } else {
                if (!"user_cannot_be_manager_of_company_managed_group".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                StoneSerializer.expectField("user_cannot_be_manager_of_company_managed_group", jsonParser);
                userCannotBeManagerOfCompanyManagedGroup = GroupMembersAddError.userCannotBeManagerOfCompanyManagedGroup((List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userCannotBeManagerOfCompanyManagedGroup;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupMembersAddError groupMembersAddError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3065a.f18200a[groupMembersAddError.tag().ordinal()]) {
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
                    jsonGenerator.writeString("duplicate_user");
                    return;
                case 5:
                    jsonGenerator.writeString("group_not_in_team");
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("members_not_in_team", jsonGenerator);
                    jsonGenerator.writeFieldName("members_not_in_team");
                    StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) groupMembersAddError.f18197b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("users_not_found", jsonGenerator);
                    jsonGenerator.writeFieldName("users_not_found");
                    StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) groupMembersAddError.f18198c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("user_must_be_active_to_be_owner");
                    return;
                case 9:
                    jsonGenerator.writeStartObject();
                    writeTag("user_cannot_be_manager_of_company_managed_group", jsonGenerator);
                    jsonGenerator.writeFieldName("user_cannot_be_manager_of_company_managed_group");
                    StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) groupMembersAddError.f18199d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupMembersAddError.tag());
            }
        }
    }

    public static GroupMembersAddError membersNotInTeam(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersAddError().m12315e(Tag.MEMBERS_NOT_IN_TEAM, list);
    }

    public static GroupMembersAddError userCannotBeManagerOfCompanyManagedGroup(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersAddError().m12316f(Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, list);
    }

    public static GroupMembersAddError usersNotFound(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list is null");
            }
        }
        return new GroupMembersAddError().m12317g(Tag.USERS_NOT_FOUND, list);
    }

    /* renamed from: d */
    public final GroupMembersAddError m12314d(Tag tag) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError.f18196a = tag;
        return groupMembersAddError;
    }

    /* renamed from: e */
    public final GroupMembersAddError m12315e(Tag tag, List<String> list) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError.f18196a = tag;
        groupMembersAddError.f18197b = list;
        return groupMembersAddError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GroupMembersAddError)) {
            return false;
        }
        GroupMembersAddError groupMembersAddError = (GroupMembersAddError) obj;
        Tag tag = this.f18196a;
        if (tag != groupMembersAddError.f18196a) {
            return false;
        }
        switch (C3065a.f18200a[tag.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            case 6:
                List<String> list = this.f18197b;
                List<String> list2 = groupMembersAddError.f18197b;
                return list == list2 || list.equals(list2);
            case 7:
                List<String> list3 = this.f18198c;
                List<String> list4 = groupMembersAddError.f18198c;
                return list3 == list4 || list3.equals(list4);
            case 8:
                return true;
            case 9:
                List<String> list5 = this.f18199d;
                List<String> list6 = groupMembersAddError.f18199d;
                return list5 == list6 || list5.equals(list6);
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final GroupMembersAddError m12316f(Tag tag, List<String> list) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError.f18196a = tag;
        groupMembersAddError.f18199d = list;
        return groupMembersAddError;
    }

    /* renamed from: g */
    public final GroupMembersAddError m12317g(Tag tag, List<String> list) {
        GroupMembersAddError groupMembersAddError = new GroupMembersAddError();
        groupMembersAddError.f18196a = tag;
        groupMembersAddError.f18198c = list;
        return groupMembersAddError;
    }

    public List<String> getMembersNotInTeamValue() {
        if (this.f18196a == Tag.MEMBERS_NOT_IN_TEAM) {
            return this.f18197b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag." + this.f18196a.name());
    }

    public List<String> getUserCannotBeManagerOfCompanyManagedGroupValue() {
        if (this.f18196a == Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP) {
            return this.f18199d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, but was Tag." + this.f18196a.name());
    }

    public List<String> getUsersNotFoundValue() {
        if (this.f18196a == Tag.USERS_NOT_FOUND) {
            return this.f18198c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag." + this.f18196a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18196a, this.f18197b, this.f18198c, this.f18199d});
    }

    public boolean isDuplicateUser() {
        return this.f18196a == Tag.DUPLICATE_USER;
    }

    public boolean isGroupNotFound() {
        return this.f18196a == Tag.GROUP_NOT_FOUND;
    }

    public boolean isGroupNotInTeam() {
        return this.f18196a == Tag.GROUP_NOT_IN_TEAM;
    }

    public boolean isMembersNotInTeam() {
        return this.f18196a == Tag.MEMBERS_NOT_IN_TEAM;
    }

    public boolean isOther() {
        return this.f18196a == Tag.OTHER;
    }

    public boolean isSystemManagedGroupDisallowed() {
        return this.f18196a == Tag.SYSTEM_MANAGED_GROUP_DISALLOWED;
    }

    public boolean isUserCannotBeManagerOfCompanyManagedGroup() {
        return this.f18196a == Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
    }

    public boolean isUserMustBeActiveToBeOwner() {
        return this.f18196a == Tag.USER_MUST_BE_ACTIVE_TO_BE_OWNER;
    }

    public boolean isUsersNotFound() {
        return this.f18196a == Tag.USERS_NOT_FOUND;
    }

    public Tag tag() {
        return this.f18196a;
    }

    public String toString() {
        return C3066b.f18201b.serialize((C3066b) this, false);
    }

    public String toStringMultiline() {
        return C3066b.f18201b.serialize((C3066b) this, true);
    }
}
