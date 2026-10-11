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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class GetMembershipReport extends BaseDfbReport {
    protected final List<Long> licenses;
    protected final List<Long> membersJoined;
    protected final List<Long> pendingInvites;
    protected final List<Long> suspendedMembers;
    protected final List<Long> teamSize;

    /* renamed from: com.dropbox.core.v2.team.GetMembershipReport$a */
    /* loaded from: classes4.dex */
    public static class C3052a extends StructSerializer<GetMembershipReport> {

        /* renamed from: b */
        public static final C3052a f18179b = new C3052a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetMembershipReport deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            List list = null;
            List list2 = null;
            List list3 = null;
            List list4 = null;
            List list5 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("team_size".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("pending_invites".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("members_joined".equals(currentName)) {
                    list3 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("suspended_members".equals(currentName)) {
                    list4 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("licenses".equals(currentName)) {
                    list5 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"start_date\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"team_size\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"pending_invites\" missing.");
            }
            if (list3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"members_joined\" missing.");
            }
            if (list4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"suspended_members\" missing.");
            }
            if (list5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"licenses\" missing.");
            }
            GetMembershipReport getMembershipReport = new GetMembershipReport(str2, list, list2, list3, list4, list5);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getMembershipReport, getMembershipReport.toStringMultiline());
            return getMembershipReport;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetMembershipReport getMembershipReport, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
            StoneSerializers.string().serialize((StoneSerializer<String>) getMembershipReport.startDate, jsonGenerator);
            jsonGenerator.writeFieldName("team_size");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getMembershipReport.teamSize, jsonGenerator);
            jsonGenerator.writeFieldName("pending_invites");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getMembershipReport.pendingInvites, jsonGenerator);
            jsonGenerator.writeFieldName("members_joined");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getMembershipReport.membersJoined, jsonGenerator);
            jsonGenerator.writeFieldName("suspended_members");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getMembershipReport.suspendedMembers, jsonGenerator);
            jsonGenerator.writeFieldName("licenses");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getMembershipReport.licenses, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetMembershipReport(String str, List<Long> list, List<Long> list2, List<Long> list3, List<Long> list4, List<Long> list5) {
        super(str);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'teamSize' is null");
        }
        Iterator<Long> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'teamSize' is null");
            }
        }
        this.teamSize = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'pendingInvites' is null");
        }
        Iterator<Long> it3 = list2.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'pendingInvites' is null");
            }
        }
        this.pendingInvites = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'membersJoined' is null");
        }
        Iterator<Long> it4 = list3.iterator();
        while (it4.hasNext()) {
            if (it4.next() == null) {
                throw new IllegalArgumentException("An item in list 'membersJoined' is null");
            }
        }
        this.membersJoined = list3;
        if (list4 == null) {
            throw new IllegalArgumentException("Required value for 'suspendedMembers' is null");
        }
        Iterator<Long> it5 = list4.iterator();
        while (it5.hasNext()) {
            if (it5.next() == null) {
                throw new IllegalArgumentException("An item in list 'suspendedMembers' is null");
            }
        }
        this.suspendedMembers = list4;
        if (list5 == null) {
            throw new IllegalArgumentException("Required value for 'licenses' is null");
        }
        Iterator<Long> it6 = list5.iterator();
        while (it6.hasNext()) {
            if (it6.next() == null) {
                throw new IllegalArgumentException("An item in list 'licenses' is null");
            }
        }
        this.licenses = list5;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public boolean equals(Object obj) {
        List<Long> list;
        List<Long> list2;
        List<Long> list3;
        List<Long> list4;
        List<Long> list5;
        List<Long> list6;
        List<Long> list7;
        List<Long> list8;
        List<Long> list9;
        List<Long> list10;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetMembershipReport getMembershipReport = (GetMembershipReport) obj;
        String str = this.startDate;
        String str2 = getMembershipReport.startDate;
        return (str == str2 || str.equals(str2)) && ((list = this.teamSize) == (list2 = getMembershipReport.teamSize) || list.equals(list2)) && (((list3 = this.pendingInvites) == (list4 = getMembershipReport.pendingInvites) || list3.equals(list4)) && (((list5 = this.membersJoined) == (list6 = getMembershipReport.membersJoined) || list5.equals(list6)) && (((list7 = this.suspendedMembers) == (list8 = getMembershipReport.suspendedMembers) || list7.equals(list8)) && ((list9 = this.licenses) == (list10 = getMembershipReport.licenses) || list9.equals(list10)))));
    }

    public List<Long> getLicenses() {
        return this.licenses;
    }

    public List<Long> getMembersJoined() {
        return this.membersJoined;
    }

    public List<Long> getPendingInvites() {
        return this.pendingInvites;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String getStartDate() {
        return this.startDate;
    }

    public List<Long> getSuspendedMembers() {
        return this.suspendedMembers;
    }

    public List<Long> getTeamSize() {
        return this.teamSize;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.teamSize, this.pendingInvites, this.membersJoined, this.suspendedMembers, this.licenses});
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String toString() {
        return C3052a.f18179b.serialize((C3052a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String toStringMultiline() {
        return C3052a.f18179b.serialize((C3052a) this, true);
    }
}
