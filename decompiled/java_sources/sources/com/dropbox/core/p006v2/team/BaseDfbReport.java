package com.dropbox.core.p006v2.team;

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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class BaseDfbReport {
    protected final String startDate;

    /* renamed from: com.dropbox.core.v2.team.BaseDfbReport$a */
    /* loaded from: classes4.dex */
    public static class C3017a extends StructSerializer<BaseDfbReport> {

        /* renamed from: b */
        public static final C3017a f18123b = new C3017a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BaseDfbReport deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"start_date\" missing.");
            }
            BaseDfbReport baseDfbReport = new BaseDfbReport(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(baseDfbReport, baseDfbReport.toStringMultiline());
            return baseDfbReport;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(BaseDfbReport baseDfbReport, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
            StoneSerializers.string().serialize((StoneSerializer<String>) baseDfbReport.startDate, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public BaseDfbReport(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'startDate' is null");
        }
        this.startDate = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.startDate;
        String str2 = ((BaseDfbReport) obj).startDate;
        return str == str2 || str.equals(str2);
    }

    public String getStartDate() {
        return this.startDate;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.startDate});
    }

    public String toString() {
        return C3017a.f18123b.serialize((C3017a) this, false);
    }

    public String toStringMultiline() {
        return C3017a.f18123b.serialize((C3017a) this, true);
    }
}
