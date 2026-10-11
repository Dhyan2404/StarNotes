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
public class GetActivityReport extends BaseDfbReport {
    protected final List<Long> activeSharedFolders1Day;
    protected final List<Long> activeSharedFolders28Day;
    protected final List<Long> activeSharedFolders7Day;
    protected final List<Long> activeUsers1Day;
    protected final List<Long> activeUsers28Day;
    protected final List<Long> activeUsers7Day;
    protected final List<Long> adds;
    protected final List<Long> deletes;
    protected final List<Long> edits;
    protected final List<Long> sharedLinksCreated;
    protected final List<Long> sharedLinksViewedByNotLoggedIn;
    protected final List<Long> sharedLinksViewedByOutsideUser;
    protected final List<Long> sharedLinksViewedByTeam;
    protected final List<Long> sharedLinksViewedTotal;

    /* renamed from: com.dropbox.core.v2.team.GetActivityReport$a */
    /* loaded from: classes4.dex */
    public static class C3050a extends StructSerializer<GetActivityReport> {

        /* renamed from: b */
        public static final C3050a f18177b = new C3050a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetActivityReport deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list6 = null;
            List list7 = null;
            List list8 = null;
            List list9 = null;
            List list10 = null;
            List list11 = null;
            List list12 = null;
            List list13 = null;
            List list14 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("adds".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("edits".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("deletes".equals(currentName)) {
                    list3 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("active_users_28_day".equals(currentName)) {
                    list4 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("active_users_7_day".equals(currentName)) {
                    list5 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("active_users_1_day".equals(currentName)) {
                    list6 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("active_shared_folders_28_day".equals(currentName)) {
                    list7 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("active_shared_folders_7_day".equals(currentName)) {
                    list8 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("active_shared_folders_1_day".equals(currentName)) {
                    list9 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("shared_links_created".equals(currentName)) {
                    list10 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("shared_links_viewed_by_team".equals(currentName)) {
                    list11 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("shared_links_viewed_by_outside_user".equals(currentName)) {
                    list12 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("shared_links_viewed_by_not_logged_in".equals(currentName)) {
                    list13 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else if ("shared_links_viewed_total".equals(currentName)) {
                    list14 = (List) StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"start_date\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"adds\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"edits\" missing.");
            }
            if (list3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"deletes\" missing.");
            }
            if (list4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_users_28_day\" missing.");
            }
            if (list5 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_users_7_day\" missing.");
            }
            if (list6 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_users_1_day\" missing.");
            }
            if (list7 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_shared_folders_28_day\" missing.");
            }
            if (list8 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_shared_folders_7_day\" missing.");
            }
            if (list9 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_shared_folders_1_day\" missing.");
            }
            if (list10 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_links_created\" missing.");
            }
            if (list11 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_links_viewed_by_team\" missing.");
            }
            if (list12 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_links_viewed_by_outside_user\" missing.");
            }
            if (list13 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_links_viewed_by_not_logged_in\" missing.");
            }
            if (list14 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_links_viewed_total\" missing.");
            }
            GetActivityReport getActivityReport = new GetActivityReport(str2, list, list2, list3, list4, list5, list6, list7, list8, list9, list10, list11, list12, list13, list14);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getActivityReport, getActivityReport.toStringMultiline());
            return getActivityReport;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetActivityReport getActivityReport, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
            StoneSerializers.string().serialize((StoneSerializer<String>) getActivityReport.startDate, jsonGenerator);
            jsonGenerator.writeFieldName("adds");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.adds, jsonGenerator);
            jsonGenerator.writeFieldName("edits");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.edits, jsonGenerator);
            jsonGenerator.writeFieldName("deletes");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.deletes, jsonGenerator);
            jsonGenerator.writeFieldName("active_users_28_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.activeUsers28Day, jsonGenerator);
            jsonGenerator.writeFieldName("active_users_7_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.activeUsers7Day, jsonGenerator);
            jsonGenerator.writeFieldName("active_users_1_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.activeUsers1Day, jsonGenerator);
            jsonGenerator.writeFieldName("active_shared_folders_28_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.activeSharedFolders28Day, jsonGenerator);
            jsonGenerator.writeFieldName("active_shared_folders_7_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.activeSharedFolders7Day, jsonGenerator);
            jsonGenerator.writeFieldName("active_shared_folders_1_day");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.activeSharedFolders1Day, jsonGenerator);
            jsonGenerator.writeFieldName("shared_links_created");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.sharedLinksCreated, jsonGenerator);
            jsonGenerator.writeFieldName("shared_links_viewed_by_team");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.sharedLinksViewedByTeam, jsonGenerator);
            jsonGenerator.writeFieldName("shared_links_viewed_by_outside_user");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.sharedLinksViewedByOutsideUser, jsonGenerator);
            jsonGenerator.writeFieldName("shared_links_viewed_by_not_logged_in");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.sharedLinksViewedByNotLoggedIn, jsonGenerator);
            jsonGenerator.writeFieldName("shared_links_viewed_total");
            StoneSerializers.list(StoneSerializers.nullable(StoneSerializers.uInt64())).serialize((StoneSerializer) getActivityReport.sharedLinksViewedTotal, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetActivityReport(String str, List<Long> list, List<Long> list2, List<Long> list3, List<Long> list4, List<Long> list5, List<Long> list6, List<Long> list7, List<Long> list8, List<Long> list9, List<Long> list10, List<Long> list11, List<Long> list12, List<Long> list13, List<Long> list14) {
        super(str);
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'adds' is null");
        }
        Iterator<Long> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'adds' is null");
            }
        }
        this.adds = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'edits' is null");
        }
        Iterator<Long> it3 = list2.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'edits' is null");
            }
        }
        this.edits = list2;
        if (list3 == null) {
            throw new IllegalArgumentException("Required value for 'deletes' is null");
        }
        Iterator<Long> it4 = list3.iterator();
        while (it4.hasNext()) {
            if (it4.next() == null) {
                throw new IllegalArgumentException("An item in list 'deletes' is null");
            }
        }
        this.deletes = list3;
        if (list4 == null) {
            throw new IllegalArgumentException("Required value for 'activeUsers28Day' is null");
        }
        Iterator<Long> it5 = list4.iterator();
        while (it5.hasNext()) {
            if (it5.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeUsers28Day' is null");
            }
        }
        this.activeUsers28Day = list4;
        if (list5 == null) {
            throw new IllegalArgumentException("Required value for 'activeUsers7Day' is null");
        }
        Iterator<Long> it6 = list5.iterator();
        while (it6.hasNext()) {
            if (it6.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeUsers7Day' is null");
            }
        }
        this.activeUsers7Day = list5;
        if (list6 == null) {
            throw new IllegalArgumentException("Required value for 'activeUsers1Day' is null");
        }
        Iterator<Long> it7 = list6.iterator();
        while (it7.hasNext()) {
            if (it7.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeUsers1Day' is null");
            }
        }
        this.activeUsers1Day = list6;
        if (list7 == null) {
            throw new IllegalArgumentException("Required value for 'activeSharedFolders28Day' is null");
        }
        Iterator<Long> it8 = list7.iterator();
        while (it8.hasNext()) {
            if (it8.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeSharedFolders28Day' is null");
            }
        }
        this.activeSharedFolders28Day = list7;
        if (list8 == null) {
            throw new IllegalArgumentException("Required value for 'activeSharedFolders7Day' is null");
        }
        Iterator<Long> it9 = list8.iterator();
        while (it9.hasNext()) {
            if (it9.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeSharedFolders7Day' is null");
            }
        }
        this.activeSharedFolders7Day = list8;
        if (list9 == null) {
            throw new IllegalArgumentException("Required value for 'activeSharedFolders1Day' is null");
        }
        Iterator<Long> it10 = list9.iterator();
        while (it10.hasNext()) {
            if (it10.next() == null) {
                throw new IllegalArgumentException("An item in list 'activeSharedFolders1Day' is null");
            }
        }
        this.activeSharedFolders1Day = list9;
        if (list10 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksCreated' is null");
        }
        Iterator<Long> it11 = list10.iterator();
        while (it11.hasNext()) {
            if (it11.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksCreated' is null");
            }
        }
        this.sharedLinksCreated = list10;
        if (list11 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedByTeam' is null");
        }
        Iterator<Long> it12 = list11.iterator();
        while (it12.hasNext()) {
            if (it12.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedByTeam' is null");
            }
        }
        this.sharedLinksViewedByTeam = list11;
        if (list12 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedByOutsideUser' is null");
        }
        Iterator<Long> it13 = list12.iterator();
        while (it13.hasNext()) {
            if (it13.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedByOutsideUser' is null");
            }
        }
        this.sharedLinksViewedByOutsideUser = list12;
        if (list13 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedByNotLoggedIn' is null");
        }
        Iterator<Long> it14 = list13.iterator();
        while (it14.hasNext()) {
            if (it14.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedByNotLoggedIn' is null");
            }
        }
        this.sharedLinksViewedByNotLoggedIn = list13;
        if (list14 == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinksViewedTotal' is null");
        }
        Iterator<Long> it15 = list14.iterator();
        while (it15.hasNext()) {
            if (it15.next() == null) {
                throw new IllegalArgumentException("An item in list 'sharedLinksViewedTotal' is null");
            }
        }
        this.sharedLinksViewedTotal = list14;
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
        List<Long> list11;
        List<Long> list12;
        List<Long> list13;
        List<Long> list14;
        List<Long> list15;
        List<Long> list16;
        List<Long> list17;
        List<Long> list18;
        List<Long> list19;
        List<Long> list20;
        List<Long> list21;
        List<Long> list22;
        List<Long> list23;
        List<Long> list24;
        List<Long> list25;
        List<Long> list26;
        List<Long> list27;
        List<Long> list28;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetActivityReport getActivityReport = (GetActivityReport) obj;
        String str = this.startDate;
        String str2 = getActivityReport.startDate;
        return (str == str2 || str.equals(str2)) && ((list = this.adds) == (list2 = getActivityReport.adds) || list.equals(list2)) && (((list3 = this.edits) == (list4 = getActivityReport.edits) || list3.equals(list4)) && (((list5 = this.deletes) == (list6 = getActivityReport.deletes) || list5.equals(list6)) && (((list7 = this.activeUsers28Day) == (list8 = getActivityReport.activeUsers28Day) || list7.equals(list8)) && (((list9 = this.activeUsers7Day) == (list10 = getActivityReport.activeUsers7Day) || list9.equals(list10)) && (((list11 = this.activeUsers1Day) == (list12 = getActivityReport.activeUsers1Day) || list11.equals(list12)) && (((list13 = this.activeSharedFolders28Day) == (list14 = getActivityReport.activeSharedFolders28Day) || list13.equals(list14)) && (((list15 = this.activeSharedFolders7Day) == (list16 = getActivityReport.activeSharedFolders7Day) || list15.equals(list16)) && (((list17 = this.activeSharedFolders1Day) == (list18 = getActivityReport.activeSharedFolders1Day) || list17.equals(list18)) && (((list19 = this.sharedLinksCreated) == (list20 = getActivityReport.sharedLinksCreated) || list19.equals(list20)) && (((list21 = this.sharedLinksViewedByTeam) == (list22 = getActivityReport.sharedLinksViewedByTeam) || list21.equals(list22)) && (((list23 = this.sharedLinksViewedByOutsideUser) == (list24 = getActivityReport.sharedLinksViewedByOutsideUser) || list23.equals(list24)) && (((list25 = this.sharedLinksViewedByNotLoggedIn) == (list26 = getActivityReport.sharedLinksViewedByNotLoggedIn) || list25.equals(list26)) && ((list27 = this.sharedLinksViewedTotal) == (list28 = getActivityReport.sharedLinksViewedTotal) || list27.equals(list28))))))))))))));
    }

    public List<Long> getActiveSharedFolders1Day() {
        return this.activeSharedFolders1Day;
    }

    public List<Long> getActiveSharedFolders28Day() {
        return this.activeSharedFolders28Day;
    }

    public List<Long> getActiveSharedFolders7Day() {
        return this.activeSharedFolders7Day;
    }

    public List<Long> getActiveUsers1Day() {
        return this.activeUsers1Day;
    }

    public List<Long> getActiveUsers28Day() {
        return this.activeUsers28Day;
    }

    public List<Long> getActiveUsers7Day() {
        return this.activeUsers7Day;
    }

    public List<Long> getAdds() {
        return this.adds;
    }

    public List<Long> getDeletes() {
        return this.deletes;
    }

    public List<Long> getEdits() {
        return this.edits;
    }

    public List<Long> getSharedLinksCreated() {
        return this.sharedLinksCreated;
    }

    public List<Long> getSharedLinksViewedByNotLoggedIn() {
        return this.sharedLinksViewedByNotLoggedIn;
    }

    public List<Long> getSharedLinksViewedByOutsideUser() {
        return this.sharedLinksViewedByOutsideUser;
    }

    public List<Long> getSharedLinksViewedByTeam() {
        return this.sharedLinksViewedByTeam;
    }

    public List<Long> getSharedLinksViewedTotal() {
        return this.sharedLinksViewedTotal;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String getStartDate() {
        return this.startDate;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.adds, this.edits, this.deletes, this.activeUsers28Day, this.activeUsers7Day, this.activeUsers1Day, this.activeSharedFolders28Day, this.activeSharedFolders7Day, this.activeSharedFolders1Day, this.sharedLinksCreated, this.sharedLinksViewedByTeam, this.sharedLinksViewedByOutsideUser, this.sharedLinksViewedByNotLoggedIn, this.sharedLinksViewedTotal});
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String toString() {
        return C3050a.f18177b.serialize((C3050a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String toStringMultiline() {
        return C3050a.f18177b.serialize((C3050a) this, true);
    }
}
