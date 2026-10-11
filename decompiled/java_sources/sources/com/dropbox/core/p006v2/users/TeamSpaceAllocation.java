package com.dropbox.core.p006v2.users;

import com.dropbox.core.p006v2.teamcommon.MemberSpaceLimitType;
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
public class TeamSpaceAllocation {
    protected final long allocated;
    protected final long used;
    protected final long userWithinTeamSpaceAllocated;
    protected final MemberSpaceLimitType userWithinTeamSpaceLimitType;
    protected final long userWithinTeamSpaceUsedCached;

    /* renamed from: com.dropbox.core.v2.users.TeamSpaceAllocation$a */
    /* loaded from: classes4.dex */
    public static class C4445a extends StructSerializer<TeamSpaceAllocation> {

        /* renamed from: b */
        public static final C4445a f20751b = new C4445a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamSpaceAllocation deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Long l = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l2 = null;
            Long l3 = null;
            Long l4 = null;
            MemberSpaceLimitType memberSpaceLimitType = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("used".equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("allocated".equals(currentName)) {
                    l2 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("user_within_team_space_allocated".equals(currentName)) {
                    l3 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else if ("user_within_team_space_limit_type".equals(currentName)) {
                    memberSpaceLimitType = MemberSpaceLimitType.Serializer.INSTANCE.deserialize(jsonParser);
                } else if ("user_within_team_space_used_cached".equals(currentName)) {
                    l4 = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"used\" missing.");
            }
            if (l2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"allocated\" missing.");
            }
            if (l3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"user_within_team_space_allocated\" missing.");
            }
            if (memberSpaceLimitType == null) {
                throw new JsonParseException(jsonParser, "Required field \"user_within_team_space_limit_type\" missing.");
            }
            if (l4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"user_within_team_space_used_cached\" missing.");
            }
            TeamSpaceAllocation teamSpaceAllocation = new TeamSpaceAllocation(l.longValue(), l2.longValue(), l3.longValue(), memberSpaceLimitType, l4.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamSpaceAllocation, teamSpaceAllocation.toStringMultiline());
            return teamSpaceAllocation;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamSpaceAllocation teamSpaceAllocation, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("used");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(teamSpaceAllocation.used), jsonGenerator);
            jsonGenerator.writeFieldName("allocated");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(teamSpaceAllocation.allocated), jsonGenerator);
            jsonGenerator.writeFieldName("user_within_team_space_allocated");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(teamSpaceAllocation.userWithinTeamSpaceAllocated), jsonGenerator);
            jsonGenerator.writeFieldName("user_within_team_space_limit_type");
            MemberSpaceLimitType.Serializer.INSTANCE.serialize(teamSpaceAllocation.userWithinTeamSpaceLimitType, jsonGenerator);
            jsonGenerator.writeFieldName("user_within_team_space_used_cached");
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(teamSpaceAllocation.userWithinTeamSpaceUsedCached), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamSpaceAllocation(long j, long j2, long j3, MemberSpaceLimitType memberSpaceLimitType, long j4) {
        this.used = j;
        this.allocated = j2;
        this.userWithinTeamSpaceAllocated = j3;
        if (memberSpaceLimitType == null) {
            throw new IllegalArgumentException("Required value for 'userWithinTeamSpaceLimitType' is null");
        }
        this.userWithinTeamSpaceLimitType = memberSpaceLimitType;
        this.userWithinTeamSpaceUsedCached = j4;
    }

    public boolean equals(Object obj) {
        MemberSpaceLimitType memberSpaceLimitType;
        MemberSpaceLimitType memberSpaceLimitType2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamSpaceAllocation teamSpaceAllocation = (TeamSpaceAllocation) obj;
        return this.used == teamSpaceAllocation.used && this.allocated == teamSpaceAllocation.allocated && this.userWithinTeamSpaceAllocated == teamSpaceAllocation.userWithinTeamSpaceAllocated && ((memberSpaceLimitType = this.userWithinTeamSpaceLimitType) == (memberSpaceLimitType2 = teamSpaceAllocation.userWithinTeamSpaceLimitType) || memberSpaceLimitType.equals(memberSpaceLimitType2)) && this.userWithinTeamSpaceUsedCached == teamSpaceAllocation.userWithinTeamSpaceUsedCached;
    }

    public long getAllocated() {
        return this.allocated;
    }

    public long getUsed() {
        return this.used;
    }

    public long getUserWithinTeamSpaceAllocated() {
        return this.userWithinTeamSpaceAllocated;
    }

    public MemberSpaceLimitType getUserWithinTeamSpaceLimitType() {
        return this.userWithinTeamSpaceLimitType;
    }

    public long getUserWithinTeamSpaceUsedCached() {
        return this.userWithinTeamSpaceUsedCached;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.used), Long.valueOf(this.allocated), Long.valueOf(this.userWithinTeamSpaceAllocated), this.userWithinTeamSpaceLimitType, Long.valueOf(this.userWithinTeamSpaceUsedCached)});
    }

    public String toString() {
        return C4445a.f20751b.serialize((C4445a) this, false);
    }

    public String toStringMultiline() {
        return C4445a.f20751b.serialize((C4445a) this, true);
    }
}
