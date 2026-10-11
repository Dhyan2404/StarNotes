package com.dropbox.core.p006v2.teamlog;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.teamlog.ActorLogInfo;
import com.dropbox.core.p006v2.teamlog.AssetLogInfo;
import com.dropbox.core.p006v2.teamlog.ContextLogInfo;
import com.dropbox.core.p006v2.teamlog.EventCategory;
import com.dropbox.core.p006v2.teamlog.EventDetails;
import com.dropbox.core.p006v2.teamlog.EventType;
import com.dropbox.core.p006v2.teamlog.OriginLogInfo;
import com.dropbox.core.p006v2.teamlog.ParticipantLogInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class TeamEvent {
    protected final ActorLogInfo actor;
    protected final List<AssetLogInfo> assets;
    protected final ContextLogInfo context;
    protected final EventDetails details;
    protected final EventCategory eventCategory;
    protected final EventType eventType;
    protected final Boolean involveNonTeamMember;
    protected final OriginLogInfo origin;
    protected final List<ParticipantLogInfo> participants;
    protected final Date timestamp;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected ActorLogInfo actor;
        protected List<AssetLogInfo> assets;
        protected ContextLogInfo context;
        protected final EventDetails details;
        protected final EventCategory eventCategory;
        protected final EventType eventType;
        protected Boolean involveNonTeamMember;
        protected OriginLogInfo origin;
        protected List<ParticipantLogInfo> participants;
        protected final Date timestamp;

        public Builder(Date date, EventCategory eventCategory, EventType eventType, EventDetails eventDetails) {
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'timestamp' is null");
            }
            this.timestamp = LangUtil.truncateMillis(date);
            if (eventCategory == null) {
                throw new IllegalArgumentException("Required value for 'eventCategory' is null");
            }
            this.eventCategory = eventCategory;
            if (eventType == null) {
                throw new IllegalArgumentException("Required value for 'eventType' is null");
            }
            this.eventType = eventType;
            if (eventDetails == null) {
                throw new IllegalArgumentException("Required value for 'details' is null");
            }
            this.details = eventDetails;
            this.actor = null;
            this.origin = null;
            this.involveNonTeamMember = null;
            this.context = null;
            this.participants = null;
            this.assets = null;
        }

        public TeamEvent build() {
            return new TeamEvent(this.timestamp, this.eventCategory, this.eventType, this.details, this.actor, this.origin, this.involveNonTeamMember, this.context, this.participants, this.assets);
        }

        public Builder withActor(ActorLogInfo actorLogInfo) {
            this.actor = actorLogInfo;
            return this;
        }

        public Builder withAssets(List<AssetLogInfo> list) {
            if (list != null) {
                Iterator<AssetLogInfo> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'assets' is null");
                    }
                }
            }
            this.assets = list;
            return this;
        }

        public Builder withContext(ContextLogInfo contextLogInfo) {
            this.context = contextLogInfo;
            return this;
        }

        public Builder withInvolveNonTeamMember(Boolean bool) {
            this.involveNonTeamMember = bool;
            return this;
        }

        public Builder withOrigin(OriginLogInfo originLogInfo) {
            this.origin = originLogInfo;
            return this;
        }

        public Builder withParticipants(List<ParticipantLogInfo> list) {
            if (list != null) {
                Iterator<ParticipantLogInfo> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        throw new IllegalArgumentException("An item in list 'participants' is null");
                    }
                }
            }
            this.participants = list;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamEvent$a */
    /* loaded from: classes4.dex */
    public static class C4268a extends StructSerializer<TeamEvent> {

        /* renamed from: b */
        public static final C4268a f20544b = new C4268a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamEvent deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Date date = null;
            EventCategory eventCategory = null;
            EventType eventType = null;
            EventDetails eventDetails = null;
            ActorLogInfo actorLogInfo = null;
            OriginLogInfo originLogInfo = null;
            Boolean bool = null;
            ContextLogInfo contextLogInfo = null;
            List list = null;
            List list2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (NotificationCompat.CarExtender.f4980p.equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if ("event_category".equals(currentName)) {
                    eventCategory = EventCategory.C3505b.f18898b.deserialize(jsonParser);
                } else if ("event_type".equals(currentName)) {
                    eventType = EventType.C3509b.f19761b.deserialize(jsonParser);
                } else if ("details".equals(currentName)) {
                    eventDetails = EventDetails.C3507b.f19330b.deserialize(jsonParser);
                } else if ("actor".equals(currentName)) {
                    actorLogInfo = (ActorLogInfo) StoneSerializers.nullable(ActorLogInfo.C3351b.f18732b).deserialize(jsonParser);
                } else if ("origin".equals(currentName)) {
                    originLogInfo = (OriginLogInfo) StoneSerializers.nullableStruct(OriginLogInfo.C3829a.f20102b).deserialize(jsonParser);
                } else if ("involve_non_team_member".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else if ("context".equals(currentName)) {
                    contextLogInfo = (ContextLogInfo) StoneSerializers.nullable(ContextLogInfo.C3403b.f18795b).deserialize(jsonParser);
                } else if (NotificationCompat.CarExtender.f4979o.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(ParticipantLogInfo.C3947b.f20223b)).deserialize(jsonParser);
                } else if ("assets".equals(currentName)) {
                    list2 = (List) StoneSerializers.nullable(StoneSerializers.list(AssetLogInfo.C3369b.f18756b)).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"timestamp\" missing.");
            }
            if (eventCategory == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_category\" missing.");
            }
            if (eventType == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_type\" missing.");
            }
            if (eventDetails == null) {
                throw new JsonParseException(jsonParser, "Required field \"details\" missing.");
            }
            TeamEvent teamEvent = new TeamEvent(date, eventCategory, eventType, eventDetails, actorLogInfo, originLogInfo, bool, contextLogInfo, list, list2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(teamEvent, teamEvent.toStringMultiline());
            return teamEvent;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamEvent teamEvent, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(NotificationCompat.CarExtender.f4980p);
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) teamEvent.timestamp, jsonGenerator);
            jsonGenerator.writeFieldName("event_category");
            EventCategory.C3505b.f18898b.serialize(teamEvent.eventCategory, jsonGenerator);
            jsonGenerator.writeFieldName("event_type");
            EventType.C3509b.f19761b.serialize(teamEvent.eventType, jsonGenerator);
            jsonGenerator.writeFieldName("details");
            EventDetails.C3507b.f19330b.serialize(teamEvent.details, jsonGenerator);
            if (teamEvent.actor != null) {
                jsonGenerator.writeFieldName("actor");
                StoneSerializers.nullable(ActorLogInfo.C3351b.f18732b).serialize((StoneSerializer) teamEvent.actor, jsonGenerator);
            }
            if (teamEvent.origin != null) {
                jsonGenerator.writeFieldName("origin");
                StoneSerializers.nullableStruct(OriginLogInfo.C3829a.f20102b).serialize((StructSerializer) teamEvent.origin, jsonGenerator);
            }
            if (teamEvent.involveNonTeamMember != null) {
                jsonGenerator.writeFieldName("involve_non_team_member");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) teamEvent.involveNonTeamMember, jsonGenerator);
            }
            if (teamEvent.context != null) {
                jsonGenerator.writeFieldName("context");
                StoneSerializers.nullable(ContextLogInfo.C3403b.f18795b).serialize((StoneSerializer) teamEvent.context, jsonGenerator);
            }
            if (teamEvent.participants != null) {
                jsonGenerator.writeFieldName(NotificationCompat.CarExtender.f4979o);
                StoneSerializers.nullable(StoneSerializers.list(ParticipantLogInfo.C3947b.f20223b)).serialize((StoneSerializer) teamEvent.participants, jsonGenerator);
            }
            if (teamEvent.assets != null) {
                jsonGenerator.writeFieldName("assets");
                StoneSerializers.nullable(StoneSerializers.list(AssetLogInfo.C3369b.f18756b)).serialize((StoneSerializer) teamEvent.assets, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TeamEvent(Date date, EventCategory eventCategory, EventType eventType, EventDetails eventDetails, ActorLogInfo actorLogInfo, OriginLogInfo originLogInfo, Boolean bool, ContextLogInfo contextLogInfo, List<ParticipantLogInfo> list, List<AssetLogInfo> list2) {
        if (date != null) {
            this.timestamp = LangUtil.truncateMillis(date);
            if (eventCategory != null) {
                this.eventCategory = eventCategory;
                this.actor = actorLogInfo;
                this.origin = originLogInfo;
                this.involveNonTeamMember = bool;
                this.context = contextLogInfo;
                if (list != null) {
                    Iterator<ParticipantLogInfo> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == null) {
                            throw new IllegalArgumentException("An item in list 'participants' is null");
                        }
                    }
                }
                this.participants = list;
                if (list2 != null) {
                    Iterator<AssetLogInfo> it3 = list2.iterator();
                    while (it3.hasNext()) {
                        if (it3.next() == null) {
                            throw new IllegalArgumentException("An item in list 'assets' is null");
                        }
                    }
                }
                this.assets = list2;
                if (eventType != null) {
                    this.eventType = eventType;
                    if (eventDetails != null) {
                        this.details = eventDetails;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'details' is null");
                }
                throw new IllegalArgumentException("Required value for 'eventType' is null");
            }
            throw new IllegalArgumentException("Required value for 'eventCategory' is null");
        }
        throw new IllegalArgumentException("Required value for 'timestamp' is null");
    }

    public static Builder newBuilder(Date date, EventCategory eventCategory, EventType eventType, EventDetails eventDetails) {
        return new Builder(date, eventCategory, eventType, eventDetails);
    }

    public boolean equals(Object obj) {
        EventCategory eventCategory;
        EventCategory eventCategory2;
        EventType eventType;
        EventType eventType2;
        EventDetails eventDetails;
        EventDetails eventDetails2;
        ActorLogInfo actorLogInfo;
        ActorLogInfo actorLogInfo2;
        OriginLogInfo originLogInfo;
        OriginLogInfo originLogInfo2;
        Boolean bool;
        Boolean bool2;
        ContextLogInfo contextLogInfo;
        ContextLogInfo contextLogInfo2;
        List<ParticipantLogInfo> list;
        List<ParticipantLogInfo> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamEvent teamEvent = (TeamEvent) obj;
        Date date = this.timestamp;
        Date date2 = teamEvent.timestamp;
        if ((date == date2 || date.equals(date2)) && (((eventCategory = this.eventCategory) == (eventCategory2 = teamEvent.eventCategory) || eventCategory.equals(eventCategory2)) && (((eventType = this.eventType) == (eventType2 = teamEvent.eventType) || eventType.equals(eventType2)) && (((eventDetails = this.details) == (eventDetails2 = teamEvent.details) || eventDetails.equals(eventDetails2)) && (((actorLogInfo = this.actor) == (actorLogInfo2 = teamEvent.actor) || (actorLogInfo != null && actorLogInfo.equals(actorLogInfo2))) && (((originLogInfo = this.origin) == (originLogInfo2 = teamEvent.origin) || (originLogInfo != null && originLogInfo.equals(originLogInfo2))) && (((bool = this.involveNonTeamMember) == (bool2 = teamEvent.involveNonTeamMember) || (bool != null && bool.equals(bool2))) && (((contextLogInfo = this.context) == (contextLogInfo2 = teamEvent.context) || (contextLogInfo != null && contextLogInfo.equals(contextLogInfo2))) && ((list = this.participants) == (list2 = teamEvent.participants) || (list != null && list.equals(list2))))))))))) {
            List<AssetLogInfo> list3 = this.assets;
            List<AssetLogInfo> list4 = teamEvent.assets;
            if (list3 == list4) {
                return true;
            }
            if (list3 != null && list3.equals(list4)) {
                return true;
            }
        }
        return false;
    }

    public ActorLogInfo getActor() {
        return this.actor;
    }

    public List<AssetLogInfo> getAssets() {
        return this.assets;
    }

    public ContextLogInfo getContext() {
        return this.context;
    }

    public EventDetails getDetails() {
        return this.details;
    }

    public EventCategory getEventCategory() {
        return this.eventCategory;
    }

    public EventType getEventType() {
        return this.eventType;
    }

    public Boolean getInvolveNonTeamMember() {
        return this.involveNonTeamMember;
    }

    public OriginLogInfo getOrigin() {
        return this.origin;
    }

    public List<ParticipantLogInfo> getParticipants() {
        return this.participants;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.timestamp, this.eventCategory, this.actor, this.origin, this.involveNonTeamMember, this.context, this.participants, this.assets, this.eventType, this.details});
    }

    public String toString() {
        return C4268a.f20544b.serialize((C4268a) this, false);
    }

    public String toStringMultiline() {
        return C4268a.f20544b.serialize((C4268a) this, true);
    }

    public TeamEvent(Date date, EventCategory eventCategory, EventType eventType, EventDetails eventDetails) {
        this(date, eventCategory, eventType, eventDetails, null, null, null, null, null, null);
    }
}
