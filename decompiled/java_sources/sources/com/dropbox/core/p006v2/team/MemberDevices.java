package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.ActiveWebSession;
import com.dropbox.core.p006v2.team.DesktopClientSession;
import com.dropbox.core.p006v2.team.MobileClientSession;
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
public class MemberDevices {
    protected final List<DesktopClientSession> desktopClients;
    protected final List<MobileClientSession> mobileClients;
    protected final String teamMemberId;
    protected final List<ActiveWebSession> webSessions;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected List<DesktopClientSession> desktopClients;
        protected List<MobileClientSession> mobileClients;
        protected final String teamMemberId;
        protected List<ActiveWebSession> webSessions;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
            }
            this.teamMemberId = str;
            this.webSessions = null;
            this.desktopClients = null;
            this.mobileClients = null;
        }

        public MemberDevices build() {
            return new MemberDevices(this.teamMemberId, this.webSessions, this.desktopClients, this.mobileClients);
        }

        public Builder withDesktopClients(List<DesktopClientSession> list) {
            if (list != null) {
                Iterator<DesktopClientSession> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'desktopClients' is null");
                    }
                }
            }
            this.desktopClients = list;
            return this;
        }

        public Builder withMobileClients(List<MobileClientSession> list) {
            if (list != null) {
                Iterator<MobileClientSession> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'mobileClients' is null");
                    }
                }
            }
            this.mobileClients = list;
            return this;
        }

        public Builder withWebSessions(List<ActiveWebSession> list) {
            if (list != null) {
                Iterator<ActiveWebSession> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'webSessions' is null");
                    }
                }
            }
            this.webSessions = list;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MemberDevices$a */
    /* loaded from: classes4.dex */
    public static class C3142a extends StructSerializer<MemberDevices> {

        /* renamed from: b */
        public static final C3142a f18343b = new C3142a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberDevices deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list2 = null;
            List list3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("team_member_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("web_sessions".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.C3008a.f18104b)).deserialize(jsonParser);
                } else if ("desktop_clients".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.C3028a.f18144b)).deserialize(jsonParser);
                } else if ("mobile_clients".equals(currentName)) {
                    list3 = (List) StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.C3184a.f18415b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_member_id\" missing.");
            }
            MemberDevices memberDevices = new MemberDevices(str2, list, list2, list3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(memberDevices, memberDevices.toStringMultiline());
            return memberDevices;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberDevices memberDevices, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("team_member_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) memberDevices.teamMemberId, jsonGenerator);
            if (memberDevices.webSessions != null) {
                jsonGenerator.writeFieldName("web_sessions");
                StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.C3008a.f18104b)).serialize((StoneSerializer) memberDevices.webSessions, jsonGenerator);
            }
            if (memberDevices.desktopClients != null) {
                jsonGenerator.writeFieldName("desktop_clients");
                StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.C3028a.f18144b)).serialize((StoneSerializer) memberDevices.desktopClients, jsonGenerator);
            }
            if (memberDevices.mobileClients != null) {
                jsonGenerator.writeFieldName("mobile_clients");
                StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.C3184a.f18415b)).serialize((StoneSerializer) memberDevices.mobileClients, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MemberDevices(String str, List<ActiveWebSession> list, List<DesktopClientSession> list2, List<MobileClientSession> list3) {
        if (str != null) {
            this.teamMemberId = str;
            if (list != null) {
                Iterator<ActiveWebSession> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'webSessions' is null");
                    }
                }
            }
            this.webSessions = list;
            if (list2 != null) {
                Iterator<DesktopClientSession> it3 = list2.iterator();
                while (it3.hasNext()) {
                    if (it3.next() == null) {
                        throw new IllegalArgumentException("An item in list 'desktopClients' is null");
                    }
                }
            }
            this.desktopClients = list2;
            if (list3 != null) {
                Iterator<MobileClientSession> it4 = list3.iterator();
                while (it4.hasNext()) {
                    if (it4.next() == null) {
                        throw new IllegalArgumentException("An item in list 'mobileClients' is null");
                    }
                }
            }
            this.mobileClients = list3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'teamMemberId' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        List<ActiveWebSession> list;
        List<ActiveWebSession> list2;
        List<DesktopClientSession> list3;
        List<DesktopClientSession> list4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MemberDevices memberDevices = (MemberDevices) obj;
        String str = this.teamMemberId;
        String str2 = memberDevices.teamMemberId;
        if ((str == str2 || str.equals(str2)) && (((list = this.webSessions) == (list2 = memberDevices.webSessions) || (list != null && list.equals(list2))) && ((list3 = this.desktopClients) == (list4 = memberDevices.desktopClients) || (list3 != null && list3.equals(list4))))) {
            List<MobileClientSession> list5 = this.mobileClients;
            List<MobileClientSession> list6 = memberDevices.mobileClients;
            if (list5 == list6) {
                return true;
            }
            if (list5 != null && list5.equals(list6)) {
                return true;
            }
        }
        return false;
    }

    public List<DesktopClientSession> getDesktopClients() {
        return this.desktopClients;
    }

    public List<MobileClientSession> getMobileClients() {
        return this.mobileClients;
    }

    public String getTeamMemberId() {
        return this.teamMemberId;
    }

    public List<ActiveWebSession> getWebSessions() {
        return this.webSessions;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.teamMemberId, this.webSessions, this.desktopClients, this.mobileClients});
    }

    public String toString() {
        return C3142a.f18343b.serialize((C3142a) this, false);
    }

    public String toStringMultiline() {
        return C3142a.f18343b.serialize((C3142a) this, true);
    }

    public MemberDevices(String str) {
        this(str, null, null, null);
    }
}
