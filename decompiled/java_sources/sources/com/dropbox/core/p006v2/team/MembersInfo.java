package com.dropbox.core.p006v2.team;

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
public class MembersInfo {
    protected final long permanentlyDeletedUsers;
    protected final List<String> teamMemberIds;

    /* renamed from: com.dropbox.core.v2.team.MembersInfo$a */
    /* loaded from: classes4.dex */
    public static class C3155a extends StructSerializer<MembersInfo> {

        /* renamed from: b */
        public static final C3155a f18365b = new C3155a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_member_ids".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("permanently_deleted_users".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_ids\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"permanently_deleted_users\" missing.");
            }
            MembersInfo membersInfo = new MembersInfo(list, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(membersInfo, membersInfo.toStringMultiline());
            return membersInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersInfo membersInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_member_ids");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) membersInfo.teamMemberIds, jsonGenerator);
            jsonGenerator.writeFieldName("permanently_deleted_users");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(membersInfo.permanentlyDeletedUsers), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MembersInfo(List<String> list, long j) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberIds' is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'teamMemberIds' is null");
            }
        }
        this.teamMemberIds = list;
        this.permanentlyDeletedUsers = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembersInfo membersInfo = (MembersInfo) obj;
        List<String> list = this.teamMemberIds;
        List<String> list2 = membersInfo.teamMemberIds;
        return (list == list2 || list.equals(list2)) && this.permanentlyDeletedUsers == membersInfo.permanentlyDeletedUsers;
    }

    public long getPermanentlyDeletedUsers() {
        return this.permanentlyDeletedUsers;
    }

    public List<String> getTeamMemberIds() {
        return this.teamMemberIds;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberIds, Long.valueOf(this.permanentlyDeletedUsers)});
    }

    public String toString() {
        return C3155a.f18365b.serialize((C3155a) this, false);
    }

    public String toStringMultiline() {
        return C3155a.f18365b.serialize((C3155a) this, true);
    }
}
