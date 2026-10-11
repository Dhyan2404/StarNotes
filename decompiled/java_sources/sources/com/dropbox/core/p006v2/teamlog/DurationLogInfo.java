package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.TimeUnit;
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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class DurationLogInfo {
    protected final long amount;
    protected final TimeUnit unit;

    /* renamed from: com.dropbox.core.v2.teamlog.DurationLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3481a extends StructSerializer<DurationLogInfo> {

        /* renamed from: b */
        public static final C3481a f18874b = new C3481a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DurationLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TimeUnit timeUnit = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("unit".equals(currentName)) {
                    timeUnit = TimeUnit.C4379b.f20667b.deserialize(jsonParser);
                } else if (Constants.ATTRNAME_AMOUNT.equals(currentName)) {
                    l = StoneSerializers.uInt64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (timeUnit == null) {
                throw new JsonParseException(jsonParser, "Required field \"unit\" missing.");
            }
            if (l == null) {
                throw new JsonParseException(jsonParser, "Required field \"amount\" missing.");
            }
            DurationLogInfo durationLogInfo = new DurationLogInfo(timeUnit, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(durationLogInfo, durationLogInfo.toStringMultiline());
            return durationLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DurationLogInfo durationLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("unit");
            TimeUnit.C4379b.f20667b.serialize(durationLogInfo.unit, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_AMOUNT);
            StoneSerializers.uInt64().serialize((StoneSerializer<Long>) Long.valueOf(durationLogInfo.amount), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DurationLogInfo(TimeUnit timeUnit, long j) {
        if (timeUnit == null) {
            throw new IllegalArgumentException("Required value for 'unit' is null");
        }
        this.unit = timeUnit;
        this.amount = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DurationLogInfo durationLogInfo = (DurationLogInfo) obj;
        TimeUnit timeUnit = this.unit;
        TimeUnit timeUnit2 = durationLogInfo.unit;
        return (timeUnit == timeUnit2 || timeUnit.equals(timeUnit2)) && this.amount == durationLogInfo.amount;
    }

    public long getAmount() {
        return this.amount;
    }

    public TimeUnit getUnit() {
        return this.unit;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.unit, Long.valueOf(this.amount)});
    }

    public String toString() {
        return C3481a.f18874b.serialize((C3481a) this, false);
    }

    public String toStringMultiline() {
        return C3481a.f18874b.serialize((C3481a) this, true);
    }
}
