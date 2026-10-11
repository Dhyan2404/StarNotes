package com.dropbox.core.p006v2.teamlog;

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
public class TeamSharingWhitelistSubjectsChangedDetails {
    protected final List<String> addedWhitelistSubjects;
    protected final List<String> removedWhitelistSubjects;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamSharingWhitelistSubjectsChangedDetails$a */
    /* loaded from: classes4.dex */
    public static class C4354a extends StructSerializer<TeamSharingWhitelistSubjectsChangedDetails> {

        /* renamed from: b */
        public static final C4354a f20642b = new C4354a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamSharingWhitelistSubjectsChangedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("added_whitelist_subjects".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("removed_whitelist_subjects".equals(currentName)) {
                    list2 = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"added_whitelist_subjects\" missing.");
            }
            if (list2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"removed_whitelist_subjects\" missing.");
            }
            TeamSharingWhitelistSubjectsChangedDetails teamSharingWhitelistSubjectsChangedDetails = new TeamSharingWhitelistSubjectsChangedDetails(list, list2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamSharingWhitelistSubjectsChangedDetails, teamSharingWhitelistSubjectsChangedDetails.toStringMultiline());
            return teamSharingWhitelistSubjectsChangedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamSharingWhitelistSubjectsChangedDetails teamSharingWhitelistSubjectsChangedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("added_whitelist_subjects");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) teamSharingWhitelistSubjectsChangedDetails.addedWhitelistSubjects, jsonGenerator);
            jsonGenerator.writeFieldName("removed_whitelist_subjects");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) teamSharingWhitelistSubjectsChangedDetails.removedWhitelistSubjects, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamSharingWhitelistSubjectsChangedDetails(List<String> list, List<String> list2) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'addedWhitelistSubjects' is null");
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'addedWhitelistSubjects' is null");
            }
        }
        this.addedWhitelistSubjects = list;
        if (list2 == null) {
            throw new IllegalArgumentException("Required value for 'removedWhitelistSubjects' is null");
        }
        Iterator<String> it3 = list2.iterator();
        while (it3.hasNext()) {
            if (it3.next() == null) {
                throw new IllegalArgumentException("An item in list 'removedWhitelistSubjects' is null");
            }
        }
        this.removedWhitelistSubjects = list2;
    }

    public boolean equals(Object obj) {
        List<String> list;
        List<String> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamSharingWhitelistSubjectsChangedDetails teamSharingWhitelistSubjectsChangedDetails = (TeamSharingWhitelistSubjectsChangedDetails) obj;
        List<String> list3 = this.addedWhitelistSubjects;
        List<String> list4 = teamSharingWhitelistSubjectsChangedDetails.addedWhitelistSubjects;
        return (list3 == list4 || list3.equals(list4)) && ((list = this.removedWhitelistSubjects) == (list2 = teamSharingWhitelistSubjectsChangedDetails.removedWhitelistSubjects) || list.equals(list2));
    }

    public List<String> getAddedWhitelistSubjects() {
        return this.addedWhitelistSubjects;
    }

    public List<String> getRemovedWhitelistSubjects() {
        return this.removedWhitelistSubjects;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.addedWhitelistSubjects, this.removedWhitelistSubjects});
    }

    public String toString() {
        return C4354a.f20642b.serialize((C4354a) this, false);
    }

    public String toStringMultiline() {
        return C4354a.f20642b.serialize((C4354a) this, true);
    }
}
