package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TeamEvent;
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
public class GetTeamEventsResult {
    protected final String cursor;
    protected final List<TeamEvent> events;
    protected final boolean hasMore;

    /* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsResult$a */
    /* loaded from: classes4.dex */
    public static class C3637a extends StructSerializer<GetTeamEventsResult> {

        /* renamed from: b */
        public static final C3637a f19905b = new C3637a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTeamEventsResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str2 = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("events".equals(currentName)) {
                    list = (List) StoneSerializers.list(TeamEvent.C4268a.f20544b).deserialize(jsonParser);
                } else if ("cursor".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("has_more".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"events\" missing.");
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
            }
            GetTeamEventsResult getTeamEventsResult = new GetTeamEventsResult(list, str2, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getTeamEventsResult, getTeamEventsResult.toStringMultiline());
            return getTeamEventsResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetTeamEventsResult getTeamEventsResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("events");
            StoneSerializers.list(TeamEvent.C4268a.f20544b).serialize((StoneSerializer) getTeamEventsResult.events, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            StoneSerializers.string().serialize((StoneSerializer<String>) getTeamEventsResult.cursor, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(getTeamEventsResult.hasMore), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetTeamEventsResult(List<TeamEvent> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'events' is null");
        }
        Iterator<TeamEvent> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("An item in list 'events' is null");
            }
        }
        this.events = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        this.cursor = str;
        this.hasMore = z;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetTeamEventsResult getTeamEventsResult = (GetTeamEventsResult) obj;
        List<TeamEvent> list = this.events;
        List<TeamEvent> list2 = getTeamEventsResult.events;
        return (list == list2 || list.equals(list2)) && ((str = this.cursor) == (str2 = getTeamEventsResult.cursor) || str.equals(str2)) && this.hasMore == getTeamEventsResult.hasMore;
    }

    public String getCursor() {
        return this.cursor;
    }

    public List<TeamEvent> getEvents() {
        return this.events;
    }

    public boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.events, this.cursor, Boolean.valueOf(this.hasMore)});
    }

    public String toString() {
        return C3637a.f19905b.serialize((C3637a) this, false);
    }

    public String toStringMultiline() {
        return C3637a.f19905b.serialize((C3637a) this, true);
    }
}
