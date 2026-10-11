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
public class LegalHoldsActivateAHoldDetails {
    protected final Date endDate;
    protected final String legalHoldId;
    protected final String name;
    protected final Date startDate;

    /* renamed from: com.dropbox.core.v2.teamlog.LegalHoldsActivateAHoldDetails$a */
    /* loaded from: classes4.dex */
    public static class C3693a extends StructSerializer<LegalHoldsActivateAHoldDetails> {

        /* renamed from: b */
        public static final C3693a f19961b = new C3693a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LegalHoldsActivateAHoldDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            Date date = null;
            Date date2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("legal_hold_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    date = StoneSerializers.timestamp().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.END_DATE.equals(currentName)) {
                    date2 = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"legal_hold_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (date == null) {
                throw new JsonParseException(jsonParser, "Required field \"start_date\" missing.");
            }
            LegalHoldsActivateAHoldDetails legalHoldsActivateAHoldDetails = new LegalHoldsActivateAHoldDetails(str2, str3, date, date2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(legalHoldsActivateAHoldDetails, legalHoldsActivateAHoldDetails.toStringMultiline());
            return legalHoldsActivateAHoldDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(LegalHoldsActivateAHoldDetails legalHoldsActivateAHoldDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("legal_hold_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsActivateAHoldDetails.legalHoldId, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            StoneSerializers.string().serialize((StoneSerializer<String>) legalHoldsActivateAHoldDetails.name, jsonGenerator);
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) legalHoldsActivateAHoldDetails.startDate, jsonGenerator);
            if (legalHoldsActivateAHoldDetails.endDate != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.END_DATE);
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) legalHoldsActivateAHoldDetails.endDate, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public LegalHoldsActivateAHoldDetails(String str, String str2, Date date, Date date2) {
        if (str != null) {
            this.legalHoldId = str;
            if (str2 != null) {
                this.name = str2;
                if (date != null) {
                    this.startDate = LangUtil.truncateMillis(date);
                    this.endDate = LangUtil.truncateMillis(date2);
                    return;
                }
                throw new IllegalArgumentException("Required value for 'startDate' is null");
            }
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        throw new IllegalArgumentException("Required value for 'legalHoldId' is null");
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        LegalHoldsActivateAHoldDetails legalHoldsActivateAHoldDetails = (LegalHoldsActivateAHoldDetails) obj;
        String str3 = this.legalHoldId;
        String str4 = legalHoldsActivateAHoldDetails.legalHoldId;
        if ((str3 == str4 || str3.equals(str4)) && (((str = this.name) == (str2 = legalHoldsActivateAHoldDetails.name) || str.equals(str2)) && ((date = this.startDate) == (date2 = legalHoldsActivateAHoldDetails.startDate) || date.equals(date2)))) {
            Date date3 = this.endDate;
            Date date4 = legalHoldsActivateAHoldDetails.endDate;
            if (date3 == date4) {
                return true;
            }
            if (date3 != null && date3.equals(date4)) {
                return true;
            }
        }
        return false;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public String getLegalHoldId() {
        return this.legalHoldId;
    }

    public String getName() {
        return this.name;
    }

    public Date getStartDate() {
        return this.startDate;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.legalHoldId, this.name, this.startDate, this.endDate});
    }

    public String toString() {
        return C3693a.f19961b.serialize((C3693a) this, false);
    }

    public String toStringMultiline() {
        return C3693a.f19961b.serialize((C3693a) this, true);
    }

    public LegalHoldsActivateAHoldDetails(String str, String str2, Date date) {
        this(str, str2, date, null);
    }
}
