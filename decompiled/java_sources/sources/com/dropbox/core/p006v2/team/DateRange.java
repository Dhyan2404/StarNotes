package com.dropbox.core.p006v2.team;

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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class DateRange {

    /* renamed from: a */
    public final Date f18131a;

    /* renamed from: b */
    public final Date f18132b;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Date startDate = null;
        protected Date endDate = null;

        public DateRange build() {
            return new DateRange(this.startDate, this.endDate);
        }

        public Builder withEndDate(Date date) {
            this.endDate = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withStartDate(Date date) {
            this.startDate = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.DateRange$a */
    /* loaded from: classes4.dex */
    public static class C3022a extends StructSerializer<DateRange> {

        /* renamed from: b */
        public static final C3022a f18133b = new C3022a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DateRange deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Date date = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Date date2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.END_DATE.equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            DateRange dateRange = new DateRange(date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(dateRange, dateRange.m12151d());
            return dateRange;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DateRange dateRange, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (dateRange.f18131a != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) dateRange.f18131a, jsonGenerator);
            }
            if (dateRange.f18132b != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.END_DATE);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) dateRange.f18132b, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public DateRange(Date date, Date date2) {
        this.f18131a = LangUtil.truncateMillis(date);
        this.f18132b = LangUtil.truncateMillis(date2);
    }

    /* renamed from: c */
    public static Builder m12148c() {
        return new Builder();
    }

    /* renamed from: a */
    public Date m12149a() {
        return this.f18132b;
    }

    /* renamed from: b */
    public Date m12150b() {
        return this.f18131a;
    }

    /* renamed from: d */
    public String m12151d() {
        return C3022a.f18133b.serialize((C3022a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        DateRange dateRange = (DateRange) obj;
        Date date = this.f18131a;
        Date date2 = dateRange.f18131a;
        if (date == date2 || (date != null && date.equals(date2))) {
            Date date3 = this.f18132b;
            Date date4 = dateRange.f18132b;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18131a, this.f18132b});
    }

    public String toString() {
        return C3022a.f18133b.serialize((C3022a) this, false);
    }

    public DateRange() {
        this(null, null);
    }
}
