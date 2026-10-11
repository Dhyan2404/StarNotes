package com.dropbox.core.p006v2.teamcommon;

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

/* loaded from: classes4.dex */
public class TimeRange {
    protected final Date endTime;
    protected final Date startTime;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date startTime = null;
        protected Date endTime = null;

        public TimeRange build() {
            return new TimeRange(this.startTime, this.endTime);
        }

        public Builder withEndTime(Date date) {
            this.endTime = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withStartTime(Date date) {
            this.startTime = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class Serializer extends StructSerializer<TimeRange> {
        public static final Serializer INSTANCE = new Serializer();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.stone.StructSerializer
        public TimeRange deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Date date = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str == null) {
                Date date2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("start_time".equals(currentName)) {
                        date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                    } else if ("end_time".equals(currentName)) {
                        date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                    } else {
                        StoneSerializer.skipValue(jsonParser);
                    }
                }
                TimeRange timeRange = new TimeRange(date, date2);
                if (!z) {
                    StoneSerializer.expectEndObject(jsonParser);
                }
                StoneDeserializerLogger.log(timeRange, timeRange.toStringMultiline());
                return timeRange;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(TimeRange timeRange, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (timeRange.startTime != null) {
                jsonGenerator.writeFieldName("start_time");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) timeRange.startTime, jsonGenerator);
            }
            if (timeRange.endTime != null) {
                jsonGenerator.writeFieldName("end_time");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) timeRange.endTime, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public TimeRange(Date date, Date date2) {
        this.startTime = LangUtil.truncateMillis(date);
        this.endTime = LangUtil.truncateMillis(date2);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TimeRange timeRange = (TimeRange) obj;
        Date date = this.startTime;
        Date date2 = timeRange.startTime;
        if (date == date2 || (date != null && date.equals(date2))) {
            Date date3 = this.endTime;
            Date date4 = timeRange.endTime;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    public Date getEndTime() {
        return this.endTime;
    }

    public Date getStartTime() {
        return this.startTime;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.startTime, this.endTime});
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }

    public TimeRange() {
        this(null, null);
    }
}
