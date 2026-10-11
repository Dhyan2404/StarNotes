package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.AdminTier;
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
public class MembersSetPermissionsResult {
    protected final AdminTier role;
    protected final String teamMemberId;

    /* renamed from: com.dropbox.core.v2.team.MembersSetPermissionsResult$a */
    /* loaded from: classes4.dex */
    public static class C3171a extends StructSerializer<MembersSetPermissionsResult> {

        /* renamed from: b */
        public static final C3171a f18391b = new C3171a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersSetPermissionsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AdminTier adminTier = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_member_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("role".equals(currentName)) {
                    adminTier = AdminTier.C3015b.f18121b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_id\" missing.");
            }
            if (adminTier == null) {
                throw new JsonParseException(jsonParser, "Required field \"role\" missing.");
            }
            MembersSetPermissionsResult membersSetPermissionsResult = new MembersSetPermissionsResult(str2, adminTier);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(membersSetPermissionsResult, membersSetPermissionsResult.toStringMultiline());
            return membersSetPermissionsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersSetPermissionsResult membersSetPermissionsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) membersSetPermissionsResult.teamMemberId, jsonGenerator);
            jsonGenerator.writeFieldName("role");
            AdminTier.C3015b.f18121b.serialize(membersSetPermissionsResult.role, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MembersSetPermissionsResult(String str, AdminTier adminTier) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str;
        if (adminTier == null) {
            throw new IllegalArgumentException("Required value for 'role' is null");
        }
        this.role = adminTier;
    }

    public boolean equals(Object obj) {
        AdminTier adminTier;
        AdminTier adminTier2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MembersSetPermissionsResult membersSetPermissionsResult = (MembersSetPermissionsResult) obj;
        String str = this.teamMemberId;
        String str2 = membersSetPermissionsResult.teamMemberId;
        return (str == str2 || str.equals(str2)) && ((adminTier = this.role) == (adminTier2 = membersSetPermissionsResult.role) || adminTier.equals(adminTier2));
    }

    public AdminTier getRole() {
        return this.role;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.role});
    }

    public String toString() {
        return C3171a.f18391b.serialize((C3171a) this, false);
    }

    public String toStringMultiline() {
        return C3171a.f18391b.serialize((C3171a) this, true);
    }
}
