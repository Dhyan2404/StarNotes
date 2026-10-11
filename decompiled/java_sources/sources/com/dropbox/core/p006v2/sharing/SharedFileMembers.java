package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.GroupMembershipInfo;
import com.dropbox.core.p006v2.sharing.InviteeMembershipInfo;
import com.dropbox.core.p006v2.sharing.UserFileMembershipInfo;
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
public class SharedFileMembers {
    protected final String cursor;
    protected final List<GroupMembershipInfo> groups;
    protected final List<InviteeMembershipInfo> invitees;
    protected final List<UserFileMembershipInfo> users;

    /* renamed from: com.dropbox.core.v2.sharing.SharedFileMembers$a */
    /* loaded from: classes4.dex */
    public static class C2940a extends StructSerializer<SharedFileMembers> {

        /* renamed from: b */
        public static final C2940a f17960b = new C2940a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFileMembers deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list2 = null;
            List list3 = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("users".equals(currentName)) {
                    list = (List) StoneSerializers.list(UserFileMembershipInfo.C2978a.f18030b).deserialize(jsonParser);
                } else if ("groups".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(GroupMembershipInfo.C2844a.f17764b).deserialize(jsonParser);
                } else if ("invitees".equals(currentName)) {
                    list3 = (List) StoneSerializers.list(InviteeMembershipInfo.C2848a.f17770b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"users\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"groups\" missing.");
            }
            if (list3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"invitees\" missing.");
            }
            SharedFileMembers sharedFileMembers = new SharedFileMembers(list, list2, list3, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFileMembers, sharedFileMembers.toStringMultiline());
            return sharedFileMembers;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFileMembers sharedFileMembers, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("users");
            StoneSerializers.list(UserFileMembershipInfo.C2978a.f18030b).serialize((StoneSerializer) sharedFileMembers.users, jsonGenerator);
            jsonGenerator.writeFieldName("groups");
            StoneSerializers.list(GroupMembershipInfo.C2844a.f17764b).serialize((StoneSerializer) sharedFileMembers.groups, jsonGenerator);
            jsonGenerator.writeFieldName("invitees");
            StoneSerializers.list(InviteeMembershipInfo.C2848a.f17770b).serialize((StoneSerializer) sharedFileMembers.invitees, jsonGenerator);
            if (sharedFileMembers.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFileMembers.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFileMembers(List<UserFileMembershipInfo> list, List<GroupMembershipInfo> list2, List<InviteeMembershipInfo> list3, String str) {
        if (list != null) {
            Iterator<UserFileMembershipInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'users' is null");
                }
            }
            this.users = list;
            if (list2 != null) {
                Iterator<GroupMembershipInfo> it3 = list2.iterator();
                while (it3.hasNext()) {
                    if (it3.next() == null) {
                        throw new IllegalArgumentException("An item in list 'groups' is null");
                    }
                }
                this.groups = list2;
                if (list3 != null) {
                    Iterator<InviteeMembershipInfo> it4 = list3.iterator();
                    while (it4.hasNext()) {
                        if (it4.next() == null) {
                            throw new IllegalArgumentException("An item in list 'invitees' is null");
                        }
                    }
                    this.invitees = list3;
                    this.cursor = str;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'invitees' is null");
            }
            throw new IllegalArgumentException("Required value for 'groups' is null");
        }
        throw new IllegalArgumentException("Required value for 'users' is null");
    }

    public boolean equals(Object obj) {
        List<GroupMembershipInfo> list;
        List<GroupMembershipInfo> list2;
        List<InviteeMembershipInfo> list3;
        List<InviteeMembershipInfo> list4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        SharedFileMembers sharedFileMembers = (SharedFileMembers) obj;
        List<UserFileMembershipInfo> list5 = this.users;
        List<UserFileMembershipInfo> list6 = sharedFileMembers.users;
        if ((list5 == list6 || list5.equals(list6)) && (((list = this.groups) == (list2 = sharedFileMembers.groups) || list.equals(list2)) && ((list3 = this.invitees) == (list4 = sharedFileMembers.invitees) || list3.equals(list4)))) {
            String str = this.cursor;
            String str2 = sharedFileMembers.cursor;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getCursor() {
        return this.cursor;
    }

    public List<GroupMembershipInfo> getGroups() {
        return this.groups;
    }

    public List<InviteeMembershipInfo> getInvitees() {
        return this.invitees;
    }

    public List<UserFileMembershipInfo> getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.users, this.groups, this.invitees, this.cursor});
    }

    public String toString() {
        return C2940a.f17960b.serialize((C2940a) this, false);
    }

    public String toStringMultiline() {
        return C2940a.f17960b.serialize((C2940a) this, true);
    }

    public SharedFileMembers(List<UserFileMembershipInfo> list, List<GroupMembershipInfo> list2, List<InviteeMembershipInfo> list3) {
        this(list, list2, list3, null);
    }
}
