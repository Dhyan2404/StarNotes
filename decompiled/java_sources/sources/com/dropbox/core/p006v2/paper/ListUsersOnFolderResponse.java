package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.Cursor;
import com.dropbox.core.p006v2.sharing.InviteeInfo;
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
public class ListUsersOnFolderResponse {
    protected final Cursor cursor;
    protected final boolean hasMore;
    protected final List<InviteeInfo> invitees;
    protected final List<UserInfo> users;

    /* renamed from: com.dropbox.core.v2.paper.ListUsersOnFolderResponse$a */
    /* loaded from: classes4.dex */
    public static class C2755a extends StructSerializer<ListUsersOnFolderResponse> {

        /* renamed from: b */
        public static final C2755a f17595b = new C2755a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListUsersOnFolderResponse deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Cursor cursor = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("invitees".equals(currentName)) {
                    list = (List) StoneSerializers.list(InviteeInfo.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("users".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(UserInfo.Serializer.INSTANCE).deserialize(jsonParser);
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
            if (cursor == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            ListUsersOnFolderResponse listUsersOnFolderResponse = new ListUsersOnFolderResponse(list, list2, cursor, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listUsersOnFolderResponse, listUsersOnFolderResponse.toStringMultiline());
            return listUsersOnFolderResponse;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListUsersOnFolderResponse listUsersOnFolderResponse, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("invitees");
            StoneSerializers.list(InviteeInfo.Serializer.INSTANCE).serialize((StoneSerializer) listUsersOnFolderResponse.invitees, jsonGenerator);
            jsonGenerator.writeFieldName("users");
            StoneSerializers.list(UserInfo.Serializer.INSTANCE).serialize((StoneSerializer) listUsersOnFolderResponse.users, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            Cursor.C2731a.f17550b.serialize((Cursor.C2731a) listUsersOnFolderResponse.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listUsersOnFolderResponse.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListUsersOnFolderResponse(List<InviteeInfo> list, List<UserInfo> list2, Cursor cursor, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'invitees' is null");
        }
        Iterator<InviteeInfo> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'invitees' is null");
            }
        }
        this.invitees = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'users' is null");
        }
        Iterator<UserInfo> it3 = list2.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'users' is null");
            }
        }
        this.users = list2;
        if (cursor == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = cursor;
        this.hasMore = z;
    }

    public boolean equals(Object obj) {
        List<UserInfo> list;
        List<UserInfo> list2;
        Cursor cursor;
        Cursor cursor2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListUsersOnFolderResponse listUsersOnFolderResponse = (ListUsersOnFolderResponse) obj;
        List<InviteeInfo> list3 = this.invitees;
        List<InviteeInfo> list4 = listUsersOnFolderResponse.invitees;
        return (list3 == list4 || list3.equals(list4)) && ((list = this.users) == (list2 = listUsersOnFolderResponse.users) || list.equals(list2)) && (((cursor = this.cursor) == (cursor2 = listUsersOnFolderResponse.cursor) || cursor.equals(cursor2)) && this.hasMore == listUsersOnFolderResponse.hasMore);
    }

    public Cursor getCursor() {
        return this.cursor;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public List<InviteeInfo> getInvitees() {
        return this.invitees;
    }

    public List<UserInfo> getUsers() {
        return this.users;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.invitees, this.users, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C2755a.f17595b.serialize((C2755a) this, false);
    }

    public String toStringMultiline() {
        return C2755a.f17595b.serialize((C2755a) this, true);
    }
}
