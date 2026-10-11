package com.dropbox.core.p006v2.teamlog;

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
public class NoExpirationLinkGenCreateReportDetails {
    protected final Date endDate;
    protected final Date startDate;

    /* renamed from: com.dropbox.core.v2.teamlog.NoExpirationLinkGenCreateReportDetails$a */
    /* loaded from: classes4.dex */
    public static class C3801a extends StructSerializer<NoExpirationLinkGenCreateReportDetails> {

        /* renamed from: b */
        public static final C3801a f20074b = new C3801a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoExpirationLinkGenCreateReportDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.END_DATE.equals(currentName)) {
                    date2 = StoneSerializers.timestamp().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"start_date\" missing.");
            }
            if (date2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"end_date\" missing.");
            }
            NoExpirationLinkGenCreateReportDetails noExpirationLinkGenCreateReportDetails = new NoExpirationLinkGenCreateReportDetails(date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(noExpirationLinkGenCreateReportDetails, noExpirationLinkGenCreateReportDetails.toStringMultiline());
            return noExpirationLinkGenCreateReportDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NoExpirationLinkGenCreateReportDetails noExpirationLinkGenCreateReportDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) noExpirationLinkGenCreateReportDetails.startDate, jsonGenerator);
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.END_DATE);
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) noExpirationLinkGenCreateReportDetails.endDate, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public NoExpirationLinkGenCreateReportDetails(Date date, Date date2) {
        if (date == null) {
            throw new IllegalArgumentException("Required value for 'startDate' is null");
        }
        this.startDate = LangUtil.truncateMillis(date);
        if (date2 == null) {
            throw new IllegalArgumentException("Required value for 'endDate' is null");
        }
        this.endDate = LangUtil.truncateMillis(date2);
    }

    public boolean equals(Object obj) {
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        NoExpirationLinkGenCreateReportDetails noExpirationLinkGenCreateReportDetails = (NoExpirationLinkGenCreateReportDetails) obj;
        Date date3 = this.startDate;
        Date date4 = noExpirationLinkGenCreateReportDetails.startDate;
        return (date3 == date4 || date3.equals(date4)) && ((date = this.endDate) == (date2 = noExpirationLinkGenCreateReportDetails.endDate) || date.equals(date2));
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.startDate, this.endDate});
    }

    public String toString() {
        return C3801a.f20074b.serialize((C3801a) this, false);
    }

    public String toStringMultiline() {
        return C3801a.f20074b.serialize((C3801a) this, true);
    }
}
