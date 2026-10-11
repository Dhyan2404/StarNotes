package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.RemovedStatus;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class TeamMemberStatus {
    public static final TeamMemberStatus ACTIVE = new TeamMemberStatus().m12755b(Tag.ACTIVE);
    public static final TeamMemberStatus INVITED = new TeamMemberStatus().m12755b(Tag.INVITED);
    public static final TeamMemberStatus SUSPENDED = new TeamMemberStatus().m12755b(Tag.SUSPENDED);

    /* renamed from: a */
    public Tag f18535a;

    /* renamed from: b */
    public RemovedStatus f18536b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACTIVE,
        INVITED,
        SUSPENDED,
        REMOVED
    }

    /* renamed from: com.dropbox.core.v2.team.TeamMemberStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3247a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18537a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18537a = iArr;
            try {
                iArr[Tag.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18537a[Tag.INVITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18537a[Tag.SUSPENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18537a[Tag.REMOVED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamMemberStatus$b */
    /* loaded from: classes4.dex */
    public static class C3248b extends UnionSerializer<TeamMemberStatus> {

        /* renamed from: b */
        public static final C3248b f18538b = new C3248b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamMemberStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamMemberStatus removed;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if (AppMeasurementSdk.ConditionalUserProperty.ACTIVE.equals(readTag)) {
                removed = TeamMemberStatus.ACTIVE;
            } else if ("invited".equals(readTag)) {
                removed = TeamMemberStatus.INVITED;
            } else if ("suspended".equals(readTag)) {
                removed = TeamMemberStatus.SUSPENDED;
            } else {
                if (!"removed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                removed = TeamMemberStatus.removed(RemovedStatus.C3190a.f18426b.deserialize(jsonParser, true));
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return removed;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamMemberStatus teamMemberStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3247a.f18537a[teamMemberStatus.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("invited");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("suspended");
                return;
            }
            if (i != 4) {
                throw new IllegalArgumentException("Unrecognized tag: " + teamMemberStatus.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("removed", jsonGenerator);
            RemovedStatus.C3190a.f18426b.serialize(teamMemberStatus.f18536b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static TeamMemberStatus removed(RemovedStatus removedStatus) {
        if (removedStatus != null) {
            return new TeamMemberStatus().m12756c(Tag.REMOVED, removedStatus);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final TeamMemberStatus m12755b(Tag tag) {
        TeamMemberStatus teamMemberStatus = new TeamMemberStatus();
        teamMemberStatus.f18535a = tag;
        return teamMemberStatus;
    }

    /* renamed from: c */
    public final TeamMemberStatus m12756c(Tag tag, RemovedStatus removedStatus) {
        TeamMemberStatus teamMemberStatus = new TeamMemberStatus();
        teamMemberStatus.f18535a = tag;
        teamMemberStatus.f18536b = removedStatus;
        return teamMemberStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof TeamMemberStatus)) {
            return false;
        }
        TeamMemberStatus teamMemberStatus = (TeamMemberStatus) obj;
        Tag tag = this.f18535a;
        if (tag != teamMemberStatus.f18535a) {
            return false;
        }
        int i = C3247a.f18537a[tag.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return false;
        }
        RemovedStatus removedStatus = this.f18536b;
        RemovedStatus removedStatus2 = teamMemberStatus.f18536b;
        return removedStatus == removedStatus2 || removedStatus.equals(removedStatus2);
    }

    public RemovedStatus getRemovedValue() {
        if (this.f18535a == Tag.REMOVED) {
            return this.f18536b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.REMOVED, but was Tag." + this.f18535a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18535a, this.f18536b});
    }

    public boolean isActive() {
        return this.f18535a == Tag.ACTIVE;
    }

    public boolean isInvited() {
        return this.f18535a == Tag.INVITED;
    }

    public boolean isRemoved() {
        return this.f18535a == Tag.REMOVED;
    }

    public boolean isSuspended() {
        return this.f18535a == Tag.SUSPENDED;
    }

    public Tag tag() {
        return this.f18535a;
    }

    public String toString() {
        return C3248b.f18538b.serialize((C3248b) this, false);
    }

    public String toStringMultiline() {
        return C3248b.f18538b.serialize((C3248b) this, true);
    }
}
