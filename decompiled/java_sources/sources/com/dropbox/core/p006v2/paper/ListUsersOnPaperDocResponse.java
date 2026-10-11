package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.Cursor;
import com.dropbox.core.p006v2.paper.InviteeInfoWithPermissionLevel;
import com.dropbox.core.p006v2.paper.UserInfoWithPermissionLevel;
import com.dropbox.core.p006v2.sharing.UserInfo;
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
public class ListUsersOnPaperDocResponse {
    protected final Cursor cursor;
    protected final UserInfo docOwner;
    protected final boolean hasMore;
    protected final List<InviteeInfoWithPermissionLevel> invitees;
    protected final List<UserInfoWithPermissionLevel> users;

    /* renamed from: com.dropbox.core.v2.paper.ListUsersOnPaperDocResponse$a */
    /* loaded from: classes4.dex */
    public static class C2757a extends StructSerializer<ListUsersOnPaperDocResponse> {

        /* renamed from: b */
        public static final C2757a f17599b = new C2757a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListUsersOnPaperDocResponse deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            List list = null;
            List list2 = null;
            UserInfo userInfo = null;
            Cursor cursor = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("invitees".equals(currentName)) {
                    list = (List) StoneSerializers.list(InviteeInfoWithPermissionLevel.C2742a.f17574b).deserialize(jsonParser);
                } else if ("users".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(UserInfoWithPermissionLevel.C2779a.f17624b).deserialize(jsonParser);
                } else if ("doc_owner".equals(currentName)) {
                    userInfo = UserInfo.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    cursor = Cursor.C2731a.f17550b.deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"invitees\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"users\" missing.");
            }
            if (userInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_owner\" missing.");
            }
            if (cursor == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListUsersOnPaperDocResponse listUsersOnPaperDocResponse = new ListUsersOnPaperDocResponse(list, list2, userInfo, cursor, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listUsersOnPaperDocResponse, listUsersOnPaperDocResponse.toStringMultiline());
            return listUsersOnPaperDocResponse;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListUsersOnPaperDocResponse listUsersOnPaperDocResponse, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("invitees");
            StoneSerializers.list(InviteeInfoWithPermissionLevel.C2742a.f17574b).serialize((StoneSerializer) listUsersOnPaperDocResponse.invitees, jsonGenerator);
            jsonGenerator.writeFieldName("users");
            StoneSerializers.list(UserInfoWithPermissionLevel.C2779a.f17624b).serialize((StoneSerializer) listUsersOnPaperDocResponse.users, jsonGenerator);
            jsonGenerator.writeFieldName("doc_owner");
            UserInfo.Serializer.INSTANCE.serialize((UserInfo.Serializer) listUsersOnPaperDocResponse.docOwner, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            Cursor.C2731a.f17550b.serialize((Cursor.C2731a) listUsersOnPaperDocResponse.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listUsersOnPaperDocResponse.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListUsersOnPaperDocResponse(List<InviteeInfoWithPermissionLevel> list, List<UserInfoWithPermissionLevel> list2, UserInfo userInfo, Cursor cursor, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'invitees' is null");
        }
        Iterator<InviteeInfoWithPermissionLevel> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'invitees' is null");
            }
        }
        this.invitees = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'users' is null");
        }
        Iterator<UserInfoWithPermissionLevel> it3 = list2.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'users' is null");
            }
        }
        this.users = list2;
        if (userInfo == null) {
            throw new IllegalArgumentException("Required value for 'docOwner' is null");
        }
        this.docOwner = userInfo;
        if (cursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = cursor;
        this.hasMore = z;
    }

    public boolean equals(Object obj) {
        List<UserInfoWithPermissionLevel> list;
        List<UserInfoWithPermissionLevel> list2;
        UserInfo userInfo;
        UserInfo userInfo2;
        Cursor cursor;
        Cursor cursor2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListUsersOnPaperDocResponse listUsersOnPaperDocResponse = (ListUsersOnPaperDocResponse) obj;
        List<InviteeInfoWithPermissionLevel> list3 = this.invitees;
        List<InviteeInfoWithPermissionLevel> list4 = listUsersOnPaperDocResponse.invitees;
        return (list3 == list4 || list3.equals(list4)) && ((list = this.users) == (list2 = listUsersOnPaperDocResponse.users) || list.equals(list2)) && (((userInfo = this.docOwner) == (userInfo2 = listUsersOnPaperDocResponse.docOwner) || userInfo.equals(userInfo2)) && (((cursor = this.cursor) == (cursor2 = listUsersOnPaperDocResponse.cursor) || cursor.equals(cursor2)) && this.hasMore == listUsersOnPaperDocResponse.hasMore));
    }

    public Cursor getCursor() {
        return this.cursor;
    }

    public UserInfo getDocOwner() {
        return this.docOwner;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public List<InviteeInfoWithPermissionLevel> getInvitees() {
        return this.invitees;
    }

    public List<UserInfoWithPermissionLevel> getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitees, this.users, this.docOwner, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C2757a.f17599b.serialize((C2757a) this, false);
    }

    public String toStringMultiline() {
        return C2757a.f17599b.serialize((C2757a) this, true);
    }
}
