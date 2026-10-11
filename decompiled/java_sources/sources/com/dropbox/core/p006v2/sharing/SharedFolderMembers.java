package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.GroupMembershipInfo;
import com.dropbox.core.p006v2.sharing.InviteeMembershipInfo;
import com.dropbox.core.p006v2.sharing.UserMembershipInfo;
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
public class SharedFolderMembers {
    protected final String cursor;
    protected final List<GroupMembershipInfo> groups;
    protected final List<InviteeMembershipInfo> invitees;
    protected final List<UserMembershipInfo> users;

    /* renamed from: com.dropbox.core.v2.sharing.SharedFolderMembers$a */
    /* loaded from: classes4.dex */
    public static class C2946a extends StructSerializer<SharedFolderMembers> {

        /* renamed from: b */
        public static final C2946a f17970b = new C2946a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderMembers deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    list = (List) StoneSerializers.list(UserMembershipInfo.C2979a.f18031b).deserialize(jsonParser);
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
            SharedFolderMembers sharedFolderMembers = new SharedFolderMembers(list, list2, list3, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(sharedFolderMembers, sharedFolderMembers.toStringMultiline());
            return sharedFolderMembers;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderMembers sharedFolderMembers, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("users");
            StoneSerializers.list(UserMembershipInfo.C2979a.f18031b).serialize((StoneSerializer) sharedFolderMembers.users, jsonGenerator);
            jsonGenerator.writeFieldName("groups");
            StoneSerializers.list(GroupMembershipInfo.C2844a.f17764b).serialize((StoneSerializer) sharedFolderMembers.groups, jsonGenerator);
            jsonGenerator.writeFieldName("invitees");
            StoneSerializers.list(InviteeMembershipInfo.C2848a.f17770b).serialize((StoneSerializer) sharedFolderMembers.invitees, jsonGenerator);
            if (sharedFolderMembers.cursor != null) {
                jsonGenerator.writeFieldName("cursor");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) sharedFolderMembers.cursor, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public SharedFolderMembers(List<UserMembershipInfo> list, List<GroupMembershipInfo> list2, List<InviteeMembershipInfo> list3, String str) {
        if (list != null) {
            Iterator<UserMembershipInfo> it2 = list.iterator();
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
        SharedFolderMembers sharedFolderMembers = (SharedFolderMembers) obj;
        List<UserMembershipInfo> list5 = this.users;
        List<UserMembershipInfo> list6 = sharedFolderMembers.users;
        if ((list5 == list6 || list5.equals(list6)) && (((list = this.groups) == (list2 = sharedFolderMembers.groups) || list.equals(list2)) && ((list3 = this.invitees) == (list4 = sharedFolderMembers.invitees) || list3.equals(list4)))) {
            String str = this.cursor;
            String str2 = sharedFolderMembers.cursor;
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

    public List<UserMembershipInfo> getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.users, this.groups, this.invitees, this.cursor});
    }

    public String toString() {
        return C2946a.f17970b.serialize((C2946a) this, false);
    }

    public String toStringMultiline() {
        return C2946a.f17970b.serialize((C2946a) this, true);
    }

    public SharedFolderMembers(List<UserMembershipInfo> list, List<GroupMembershipInfo> list2, List<InviteeMembershipInfo> list3) {
        this(list, list2, list3, null);
    }
}
