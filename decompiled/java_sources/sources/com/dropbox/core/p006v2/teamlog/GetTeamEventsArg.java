package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamcommon.TimeRange;
import com.dropbox.core.p006v2.teamlog.EventCategory;
import com.dropbox.core.p006v2.teamlog.EventTypeArg;
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
public class GetTeamEventsArg {

    /* renamed from: a */
    public final long f19893a;

    /* renamed from: b */
    public final String f19894b;

    /* renamed from: c */
    public final TimeRange f19895c;

    /* renamed from: d */
    public final EventCategory f19896d;

    /* renamed from: e */
    public final EventTypeArg f19897e;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected long limit = 1000;
        protected String accountId = null;
        protected TimeRange time = null;
        protected EventCategory category = null;
        protected EventTypeArg eventType = null;

        public GetTeamEventsArg build() {
            return new GetTeamEventsArg(this.limit, this.accountId, this.time, this.category, this.eventType);
        }

        public Builder withAccountId(String str) {
            if (str != null) {
                if (str.length() < 40) {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
                if (str.length() > 40) {
                    throw new IllegalArgumentException("String 'accountId' is longer than 40");
                }
            }
            this.accountId = str;
            return this;
        }

        public Builder withCategory(EventCategory eventCategory) {
            this.category = eventCategory;
            return this;
        }

        public Builder withEventType(EventTypeArg eventTypeArg) {
            this.eventType = eventTypeArg;
            return this;
        }

        public Builder withLimit(Long l) {
            if (l.longValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
            }
            if (l.longValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
            }
            this.limit = l.longValue();
            return this;
        }

        public Builder withTime(TimeRange timeRange) {
            this.time = timeRange;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsArg$a */
    /* loaded from: classes4.dex */
    public static class C3632a extends StructSerializer<GetTeamEventsArg> {

        /* renamed from: b */
        public static final C3632a f19898b = new C3632a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTeamEventsArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = 1000L;
            String str2 = null;
            TimeRange timeRange = null;
            EventCategory eventCategory = null;
            EventTypeArg eventTypeArg = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else if ("account_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("time".equals(currentName)) {
                    timeRange = (TimeRange) StoneSerializers.nullableStruct(TimeRange.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("category".equals(currentName)) {
                    eventCategory = (EventCategory) StoneSerializers.nullable(EventCategory.C3505b.f18898b).deserialize(jsonParser);
                } else if ("event_type".equals(currentName)) {
                    eventTypeArg = (EventTypeArg) StoneSerializers.nullable(EventTypeArg.C3511b.f19763b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            GetTeamEventsArg getTeamEventsArg = new GetTeamEventsArg(l.longValue(), str2, timeRange, eventCategory, eventTypeArg);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getTeamEventsArg, getTeamEventsArg.m15348g());
            return getTeamEventsArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetTeamEventsArg getTeamEventsArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(getTeamEventsArg.f19893a), jsonGenerator);
            if (getTeamEventsArg.f19894b != null) {
                jsonGenerator.writeFieldName("account_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) getTeamEventsArg.f19894b, jsonGenerator);
            }
            if (getTeamEventsArg.f19895c != null) {
                jsonGenerator.writeFieldName("time");
                StoneSerializers.nullableStruct(TimeRange.Serializer.INSTANCE).serialize((StructSerializer) getTeamEventsArg.f19895c, jsonGenerator);
            }
            if (getTeamEventsArg.f19896d != null) {
                jsonGenerator.writeFieldName("category");
                StoneSerializers.nullable(EventCategory.C3505b.f18898b).serialize((StoneSerializer) getTeamEventsArg.f19896d, jsonGenerator);
            }
            if (getTeamEventsArg.f19897e != null) {
                jsonGenerator.writeFieldName("event_type");
                StoneSerializers.nullable(EventTypeArg.C3511b.f19763b).serialize((StoneSerializer) getTeamEventsArg.f19897e, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetTeamEventsArg(long j, String str, TimeRange timeRange, EventCategory eventCategory, EventTypeArg eventTypeArg) {
        if (j < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
        }
        if (j <= 1000) {
            this.f19893a = j;
            if (str != null) {
                if (str.length() >= 40) {
                    if (str.length() > 40) {
                        throw new IllegalArgumentException("String 'accountId' is longer than 40");
                    }
                } else {
                    throw new IllegalArgumentException("String 'accountId' is shorter than 40");
                }
            }
            this.f19894b = str;
            this.f19895c = timeRange;
            this.f19896d = eventCategory;
            this.f19897e = eventTypeArg;
            return;
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000L");
    }

    /* renamed from: f */
    public static Builder m15342f() {
        return new Builder();
    }

    /* renamed from: a */
    public String m15343a() {
        return this.f19894b;
    }

    /* renamed from: b */
    public EventCategory m15344b() {
        return this.f19896d;
    }

    /* renamed from: c */
    public EventTypeArg m15345c() {
        return this.f19897e;
    }

    /* renamed from: d */
    public long m15346d() {
        return this.f19893a;
    }

    /* renamed from: e */
    public TimeRange m15347e() {
        return this.f19895c;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        TimeRange timeRange;
        TimeRange timeRange2;
        EventCategory eventCategory;
        EventCategory eventCategory2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetTeamEventsArg getTeamEventsArg = (GetTeamEventsArg) obj;
        if (this.f19893a == getTeamEventsArg.f19893a && (((str = this.f19894b) == (str2 = getTeamEventsArg.f19894b) || (str != null && str.equals(str2))) && (((timeRange = this.f19895c) == (timeRange2 = getTeamEventsArg.f19895c) || (timeRange != null && timeRange.equals(timeRange2))) && ((eventCategory = this.f19896d) == (eventCategory2 = getTeamEventsArg.f19896d) || (eventCategory != null && eventCategory.equals(eventCategory2)))))) {
            EventTypeArg eventTypeArg = this.f19897e;
            EventTypeArg eventTypeArg2 = getTeamEventsArg.f19897e;
            if (eventTypeArg == eventTypeArg2) {
                return true;
            }
            if (eventTypeArg != null && eventTypeArg.equals(eventTypeArg2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public String m15348g() {
        return C3632a.f19898b.serialize((C3632a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f19893a), this.f19894b, this.f19895c, this.f19896d, this.f19897e});
    }

    public String toString() {
        return C3632a.f19898b.serialize((C3632a) this, false);
    }

    public GetTeamEventsArg() {
        this(1000L, null, null, null, null);
    }
}
