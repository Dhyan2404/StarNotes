package com.dropbox.core.p006v2.users;

import com.dropbox.core.p006v2.users.IndividualSpaceAllocation;
import com.dropbox.core.p006v2.users.TeamSpaceAllocation;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class SpaceAllocation {
    public static final SpaceAllocation OTHER = new SpaceAllocation().m16876c(Tag.OTHER);

    /* renamed from: a */
    public Tag f20744a;

    /* renamed from: b */
    public IndividualSpaceAllocation f20745b;

    /* renamed from: c */
    public TeamSpaceAllocation f20746c;

    /* loaded from: classes4.dex */
    public enum Tag {
        INDIVIDUAL,
        TEAM,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.users.SpaceAllocation$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4442a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20747a;

        static {
            int[] iArr = new int[Tag.values().length];
            f20747a = iArr;
            try {
                iArr[Tag.INDIVIDUAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20747a[Tag.TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20747a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.SpaceAllocation$b */
    /* loaded from: classes4.dex */
    public static class C4443b extends UnionSerializer<SpaceAllocation> {

        /* renamed from: b */
        public static final C4443b f20748b = new C4443b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SpaceAllocation deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            SpaceAllocation individual = "individual".equals(readTag) ? SpaceAllocation.individual(IndividualSpaceAllocation.C4439a.f20739b.deserialize(jsonParser, true)) : "team".equals(readTag) ? SpaceAllocation.team(TeamSpaceAllocation.C4445a.f20751b.deserialize(jsonParser, true)) : SpaceAllocation.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return individual;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SpaceAllocation spaceAllocation, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4442a.f20747a[spaceAllocation.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("individual", jsonGenerator);
                IndividualSpaceAllocation.C4439a.f20739b.serialize(spaceAllocation.f20745b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("team", jsonGenerator);
            TeamSpaceAllocation.C4445a.f20751b.serialize(spaceAllocation.f20746c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static SpaceAllocation individual(IndividualSpaceAllocation individualSpaceAllocation) {
        if (individualSpaceAllocation != null) {
            return new SpaceAllocation().m16877d(Tag.INDIVIDUAL, individualSpaceAllocation);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static SpaceAllocation team(TeamSpaceAllocation teamSpaceAllocation) {
        if (teamSpaceAllocation != null) {
            return new SpaceAllocation().m16878e(Tag.TEAM, teamSpaceAllocation);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final SpaceAllocation m16876c(Tag tag) {
        SpaceAllocation spaceAllocation = new SpaceAllocation();
        spaceAllocation.f20744a = tag;
        return spaceAllocation;
    }

    /* renamed from: d */
    public final SpaceAllocation m16877d(Tag tag, IndividualSpaceAllocation individualSpaceAllocation) {
        SpaceAllocation spaceAllocation = new SpaceAllocation();
        spaceAllocation.f20744a = tag;
        spaceAllocation.f20745b = individualSpaceAllocation;
        return spaceAllocation;
    }

    /* renamed from: e */
    public final SpaceAllocation m16878e(Tag tag, TeamSpaceAllocation teamSpaceAllocation) {
        SpaceAllocation spaceAllocation = new SpaceAllocation();
        spaceAllocation.f20744a = tag;
        spaceAllocation.f20746c = teamSpaceAllocation;
        return spaceAllocation;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SpaceAllocation)) {
            return false;
        }
        SpaceAllocation spaceAllocation = (SpaceAllocation) obj;
        Tag tag = this.f20744a;
        if (tag != spaceAllocation.f20744a) {
            return false;
        }
        int i = C4442a.f20747a[tag.ordinal()];
        if (i == 1) {
            IndividualSpaceAllocation individualSpaceAllocation = this.f20745b;
            IndividualSpaceAllocation individualSpaceAllocation2 = spaceAllocation.f20745b;
            return individualSpaceAllocation == individualSpaceAllocation2 || individualSpaceAllocation.equals(individualSpaceAllocation2);
        }
        if (i != 2) {
            return i == 3;
        }
        TeamSpaceAllocation teamSpaceAllocation = this.f20746c;
        TeamSpaceAllocation teamSpaceAllocation2 = spaceAllocation.f20746c;
        return teamSpaceAllocation == teamSpaceAllocation2 || teamSpaceAllocation.equals(teamSpaceAllocation2);
    }

    public IndividualSpaceAllocation getIndividualValue() {
        if (this.f20744a == Tag.INDIVIDUAL) {
            return this.f20745b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INDIVIDUAL, but was Tag." + this.f20744a.name());
    }

    public TeamSpaceAllocation getTeamValue() {
        if (this.f20744a == Tag.TEAM) {
            return this.f20746c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM, but was Tag." + this.f20744a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f20744a, this.f20745b, this.f20746c});
    }

    public boolean isIndividual() {
        return this.f20744a == Tag.INDIVIDUAL;
    }

    public boolean isOther() {
        return this.f20744a == Tag.OTHER;
    }

    public boolean isTeam() {
        return this.f20744a == Tag.TEAM;
    }

    public Tag tag() {
        return this.f20744a;
    }

    public String toString() {
        return C4443b.f20748b.serialize((C4443b) this, false);
    }

    public String toStringMultiline() {
        return C4443b.f20748b.serialize((C4443b) this, true);
    }
}
