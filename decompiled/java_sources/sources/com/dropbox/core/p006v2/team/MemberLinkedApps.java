package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.ApiApp;
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
public class MemberLinkedApps {
    protected final List<ApiApp> linkedApiApps;
    protected final String teamMemberId;

    /* renamed from: com.dropbox.core.v2.team.MemberLinkedApps$a */
    /* loaded from: classes4.dex */
    public static class C3143a extends StructSerializer<MemberLinkedApps> {

        /* renamed from: b */
        public static final C3143a f18344b = new C3143a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberLinkedApps deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_member_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("linked_api_apps".equals(currentName)) {
                    list = (List) StoneSerializers.list(ApiApp.C3016a.f18122b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_id\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"linked_api_apps\" missing.");
            }
            MemberLinkedApps memberLinkedApps = new MemberLinkedApps(str2, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberLinkedApps, memberLinkedApps.toStringMultiline());
            return memberLinkedApps;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberLinkedApps memberLinkedApps, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) memberLinkedApps.teamMemberId, jsonGenerator);
            jsonGenerator.writeFieldName("linked_api_apps");
            StoneSerializers.list(ApiApp.C3016a.f18122b).serialize((StoneSerializer) memberLinkedApps.linkedApiApps, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberLinkedApps(String str, List<ApiApp> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
        }
        this.teamMemberId = str;
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'linkedApiApps' is null");
        }
        Iterator<ApiApp> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'linkedApiApps' is null");
            }
        }
        this.linkedApiApps = list;
    }

    public boolean equals(Object obj) {
        List<ApiApp> list;
        List<ApiApp> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberLinkedApps memberLinkedApps = (MemberLinkedApps) obj;
        String str = this.teamMemberId;
        String str2 = memberLinkedApps.teamMemberId;
        return (str == str2 || str.equals(str2)) && ((list = this.linkedApiApps) == (list2 = memberLinkedApps.linkedApiApps) || list.equals(list2));
    }

    public List<ApiApp> getLinkedApiApps() {
        return this.linkedApiApps;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.linkedApiApps});
    }

    public String toString() {
        return C3143a.f18344b.serialize((C3143a) this, false);
    }

    public String toStringMultiline() {
        return C3143a.f18344b.serialize((C3143a) this, true);
    }
}
