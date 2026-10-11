package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.JoinTeamDetails;
import com.dropbox.core.p006v2.teamlog.MemberRemoveActionType;
import com.dropbox.core.p006v2.teamlog.TeamInviteDetails;
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
public final class ActionDetails {
    public static final ActionDetails OTHER = new ActionDetails().m13059d(Tag.OTHER);

    /* renamed from: a */
    public Tag f18720a;

    /* renamed from: b */
    public JoinTeamDetails f18721b;

    /* renamed from: c */
    public MemberRemoveActionType f18722c;

    /* renamed from: d */
    public TeamInviteDetails f18723d;

    /* loaded from: classes4.dex */
    public enum Tag {
        TEAM_JOIN_DETAILS,
        REMOVE_ACTION,
        TEAM_INVITE_DETAILS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ActionDetails$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3348a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18724a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18724a = iArr;
            try {
                iArr[Tag.TEAM_JOIN_DETAILS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18724a[Tag.REMOVE_ACTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18724a[Tag.TEAM_INVITE_DETAILS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18724a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ActionDetails$b */
    /* loaded from: classes4.dex */
    public static class C3349b extends UnionSerializer<ActionDetails> {

        /* renamed from: b */
        public static final C3349b f18725b = new C3349b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActionDetails deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ActionDetails teamInviteDetails;
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
            if ("team_join_details".equals(readTag)) {
                teamInviteDetails = ActionDetails.teamJoinDetails(JoinTeamDetails.C3691a.f19959b.deserialize(jsonParser, true));
            } else if ("remove_action".equals(readTag)) {
                StoneSerializer.expectField("remove_action", jsonParser);
                teamInviteDetails = ActionDetails.removeAction(MemberRemoveActionType.C3750b.f20023b.deserialize(jsonParser));
            } else {
                teamInviteDetails = "team_invite_details".equals(readTag) ? ActionDetails.teamInviteDetails(TeamInviteDetails.C4283a.f20559b.deserialize(jsonParser, true)) : ActionDetails.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamInviteDetails;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ActionDetails actionDetails, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3348a.f18724a[actionDetails.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("team_join_details", jsonGenerator);
                JoinTeamDetails.C3691a.f19959b.serialize(actionDetails.f18721b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("remove_action", jsonGenerator);
                jsonGenerator.writeFieldName("remove_action");
                MemberRemoveActionType.C3750b.f20023b.serialize(actionDetails.f18722c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("team_invite_details", jsonGenerator);
            TeamInviteDetails.C4283a.f20559b.serialize(actionDetails.f18723d, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static ActionDetails removeAction(MemberRemoveActionType memberRemoveActionType) {
        if (memberRemoveActionType != null) {
            return new ActionDetails().m13060e(Tag.REMOVE_ACTION, memberRemoveActionType);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ActionDetails teamInviteDetails(TeamInviteDetails teamInviteDetails) {
        if (teamInviteDetails != null) {
            return new ActionDetails().m13061f(Tag.TEAM_INVITE_DETAILS, teamInviteDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ActionDetails teamJoinDetails(JoinTeamDetails joinTeamDetails) {
        if (joinTeamDetails != null) {
            return new ActionDetails().m13062g(Tag.TEAM_JOIN_DETAILS, joinTeamDetails);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final ActionDetails m13059d(Tag tag) {
        ActionDetails actionDetails = new ActionDetails();
        actionDetails.f18720a = tag;
        return actionDetails;
    }

    /* renamed from: e */
    public final ActionDetails m13060e(Tag tag, MemberRemoveActionType memberRemoveActionType) {
        ActionDetails actionDetails = new ActionDetails();
        actionDetails.f18720a = tag;
        actionDetails.f18722c = memberRemoveActionType;
        return actionDetails;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ActionDetails)) {
            return false;
        }
        ActionDetails actionDetails = (ActionDetails) obj;
        Tag tag = this.f18720a;
        if (tag != actionDetails.f18720a) {
            return false;
        }
        int i = C3348a.f18724a[tag.ordinal()];
        if (i == 1) {
            JoinTeamDetails joinTeamDetails = this.f18721b;
            JoinTeamDetails joinTeamDetails2 = actionDetails.f18721b;
            return joinTeamDetails == joinTeamDetails2 || joinTeamDetails.equals(joinTeamDetails2);
        }
        if (i == 2) {
            MemberRemoveActionType memberRemoveActionType = this.f18722c;
            MemberRemoveActionType memberRemoveActionType2 = actionDetails.f18722c;
            return memberRemoveActionType == memberRemoveActionType2 || memberRemoveActionType.equals(memberRemoveActionType2);
        }
        if (i != 3) {
            return i == 4;
        }
        TeamInviteDetails teamInviteDetails = this.f18723d;
        TeamInviteDetails teamInviteDetails2 = actionDetails.f18723d;
        return teamInviteDetails == teamInviteDetails2 || teamInviteDetails.equals(teamInviteDetails2);
    }

    /* renamed from: f */
    public final ActionDetails m13061f(Tag tag, TeamInviteDetails teamInviteDetails) {
        ActionDetails actionDetails = new ActionDetails();
        actionDetails.f18720a = tag;
        actionDetails.f18723d = teamInviteDetails;
        return actionDetails;
    }

    /* renamed from: g */
    public final ActionDetails m13062g(Tag tag, JoinTeamDetails joinTeamDetails) {
        ActionDetails actionDetails = new ActionDetails();
        actionDetails.f18720a = tag;
        actionDetails.f18721b = joinTeamDetails;
        return actionDetails;
    }

    public MemberRemoveActionType getRemoveActionValue() {
        if (this.f18720a == Tag.REMOVE_ACTION) {
            return this.f18722c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.REMOVE_ACTION, but was Tag." + this.f18720a.name());
    }

    public TeamInviteDetails getTeamInviteDetailsValue() {
        if (this.f18720a == Tag.TEAM_INVITE_DETAILS) {
            return this.f18723d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_INVITE_DETAILS, but was Tag." + this.f18720a.name());
    }

    public JoinTeamDetails getTeamJoinDetailsValue() {
        if (this.f18720a == Tag.TEAM_JOIN_DETAILS) {
            return this.f18721b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.TEAM_JOIN_DETAILS, but was Tag." + this.f18720a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18720a, this.f18721b, this.f18722c, this.f18723d});
    }

    public boolean isOther() {
        return this.f18720a == Tag.OTHER;
    }

    public boolean isRemoveAction() {
        return this.f18720a == Tag.REMOVE_ACTION;
    }

    public boolean isTeamInviteDetails() {
        return this.f18720a == Tag.TEAM_INVITE_DETAILS;
    }

    public boolean isTeamJoinDetails() {
        return this.f18720a == Tag.TEAM_JOIN_DETAILS;
    }

    public Tag tag() {
        return this.f18720a;
    }

    public String toString() {
        return C3349b.f18725b.serialize((C3349b) this, false);
    }

    public String toStringMultiline() {
        return C3349b.f18725b.serialize((C3349b) this, true);
    }
}
