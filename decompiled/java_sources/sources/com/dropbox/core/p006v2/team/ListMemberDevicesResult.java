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
public class ListMemberDevicesResult {
    protected final List<ActiveWebSession> activeWebSessions;
    protected final List<DesktopClientSession> desktopClientSessions;
    protected final List<MobileClientSession> mobileClientSessions;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected List<ActiveWebSession> activeWebSessions = null;
        protected List<DesktopClientSession> desktopClientSessions = null;
        protected List<MobileClientSession> mobileClientSessions = null;

        public ListMemberDevicesResult build() {
            return new ListMemberDevicesResult(this.activeWebSessions, this.desktopClientSessions, this.mobileClientSessions);
        }

        public Builder withActiveWebSessions(List<ActiveWebSession> list) {
            if (list != null) {
                Iterator<ActiveWebSession> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'activeWebSessions' is null");
                    }
                }
            }
            this.activeWebSessions = list;
            return this;
        }

        public Builder withDesktopClientSessions(List<DesktopClientSession> list) {
            if (list != null) {
                Iterator<DesktopClientSession> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'desktopClientSessions' is null");
                    }
                }
            }
            this.desktopClientSessions = list;
            return this;
        }

        public Builder withMobileClientSessions(List<MobileClientSession> list) {
            if (list != null) {
                Iterator<MobileClientSession> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'mobileClientSessions' is null");
                    }
                }
            }
            this.mobileClientSessions = list;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ListMemberDevicesResult$a */
    /* loaded from: classes4.dex */
    public static class C3123a extends StructSerializer<ListMemberDevicesResult> {

        /* renamed from: b */
        public static final C3123a f18304b = new C3123a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMemberDevicesResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("active_web_sessions".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.C3008a.f18104b)).deserialize(jsonParser);
                } else if ("desktop_client_sessions".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.C3028a.f18144b)).deserialize(jsonParser);
                } else if ("mobile_client_sessions".equals(currentName)) {
                    list3 = (List) StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.C3184a.f18415b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            ListMemberDevicesResult listMemberDevicesResult = new ListMemberDevicesResult(list, list2, list3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listMemberDevicesResult, listMemberDevicesResult.toStringMultiline());
            return listMemberDevicesResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListMemberDevicesResult listMemberDevicesResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (listMemberDevicesResult.activeWebSessions != null) {
                jsonGenerator.writeFieldName("active_web_sessions");
                StoneSerializers.nullable(StoneSerializers.list(ActiveWebSession.C3008a.f18104b)).serialize((StoneSerializer) listMemberDevicesResult.activeWebSessions, jsonGenerator);
            }
            if (listMemberDevicesResult.desktopClientSessions != null) {
                jsonGenerator.writeFieldName("desktop_client_sessions");
                StoneSerializers.nullable(StoneSerializers.list(DesktopClientSession.C3028a.f18144b)).serialize((StoneSerializer) listMemberDevicesResult.desktopClientSessions, jsonGenerator);
            }
            if (listMemberDevicesResult.mobileClientSessions != null) {
                jsonGenerator.writeFieldName("mobile_client_sessions");
                StoneSerializers.nullable(StoneSerializers.list(MobileClientSession.C3184a.f18415b)).serialize((StoneSerializer) listMemberDevicesResult.mobileClientSessions, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListMemberDevicesResult(List<ActiveWebSession> list, List<DesktopClientSession> list2, List<MobileClientSession> list3) {
        if (list != null) {
            Iterator<ActiveWebSession> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next() == null) {
                    throw new IllegalArgumentException("An item in list 'activeWebSessions' is null");
                }
            }
        }
        this.activeWebSessions = list;
        if (list2 != null) {
            Iterator<DesktopClientSession> it3 = list2.iterator();
            while (it3.hasNext()) {
                if (it3.next() == null) {
                    throw new IllegalArgumentException("An item in list 'desktopClientSessions' is null");
                }
            }
        }
        this.desktopClientSessions = list2;
        if (list3 != null) {
            Iterator<MobileClientSession> it4 = list3.iterator();
            while (it4.hasNext()) {
                if (it4.next() == null) {
                    throw new IllegalArgumentException("An item in list 'mobileClientSessions' is null");
                }
            }
        }
        this.mobileClientSessions = list3;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        List<DesktopClientSession> list;
        List<DesktopClientSession> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListMemberDevicesResult listMemberDevicesResult = (ListMemberDevicesResult) obj;
        List<ActiveWebSession> list3 = this.activeWebSessions;
        List<ActiveWebSession> list4 = listMemberDevicesResult.activeWebSessions;
        if ((list3 == list4 || (list3 != null && list3.equals(list4))) && ((list = this.desktopClientSessions) == (list2 = listMemberDevicesResult.desktopClientSessions) || (list != null && list.equals(list2)))) {
            List<MobileClientSession> list5 = this.mobileClientSessions;
            List<MobileClientSession> list6 = listMemberDevicesResult.mobileClientSessions;
            if (list5 == list6) {
                return true;
            }
            if (list5 != null && list5.equals(list6)) {
                return true;
            }
        }
        return false;
    }

    public List<ActiveWebSession> getActiveWebSessions() {
        return this.activeWebSessions;
    }

    public List<DesktopClientSession> getDesktopClientSessions() {
        return this.desktopClientSessions;
    }

    public List<MobileClientSession> getMobileClientSessions() {
        return this.mobileClientSessions;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.activeWebSessions, this.desktopClientSessions, this.mobileClientSessions});
    }

    public String toString() {
        return C3123a.f18304b.serialize((C3123a) this, false);
    }

    public String toStringMultiline() {
        return C3123a.f18304b.serialize((C3123a) this, true);
    }

    public ListMemberDevicesResult() {
        this(null, null, null);
    }
}
