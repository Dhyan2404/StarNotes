package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.DevicesActive;
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
public class GetDevicesReport extends BaseDfbReport {
    protected final DevicesActive active1Day;
    protected final DevicesActive active28Day;
    protected final DevicesActive active7Day;

    /* renamed from: com.dropbox.core.v2.team.GetDevicesReport$a */
    /* loaded from: classes4.dex */
    public static class C3051a extends StructSerializer<GetDevicesReport> {

        /* renamed from: b */
        public static final C3051a f18178b = new C3051a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetDevicesReport deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            DevicesActive devicesActive = null;
            DevicesActive devicesActive2 = null;
            DevicesActive devicesActive3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (FirebaseAnalytics.Param.START_DATE.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("active_1_day".equals(currentName)) {
                    devicesActive = DevicesActive.C3032a.f18148b.deserialize(jsonParser);
                } else if ("active_7_day".equals(currentName)) {
                    devicesActive2 = DevicesActive.C3032a.f18148b.deserialize(jsonParser);
                } else if ("active_28_day".equals(currentName)) {
                    devicesActive3 = DevicesActive.C3032a.f18148b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"start_date\" missing.");
            }
            if (devicesActive == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_1_day\" missing.");
            }
            if (devicesActive2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_7_day\" missing.");
            }
            if (devicesActive3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"active_28_day\" missing.");
            }
            GetDevicesReport getDevicesReport = new GetDevicesReport(str2, devicesActive, devicesActive2, devicesActive3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getDevicesReport, getDevicesReport.toStringMultiline());
            return getDevicesReport;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetDevicesReport getDevicesReport, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.START_DATE);
            StoneSerializers.string().serialize((StoneSerializer<String>) getDevicesReport.startDate, jsonGenerator);
            jsonGenerator.writeFieldName("active_1_day");
            DevicesActive.C3032a c3032a = DevicesActive.C3032a.f18148b;
            c3032a.serialize((DevicesActive.C3032a) getDevicesReport.active1Day, jsonGenerator);
            jsonGenerator.writeFieldName("active_7_day");
            c3032a.serialize((DevicesActive.C3032a) getDevicesReport.active7Day, jsonGenerator);
            jsonGenerator.writeFieldName("active_28_day");
            c3032a.serialize((DevicesActive.C3032a) getDevicesReport.active28Day, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetDevicesReport(String str, DevicesActive devicesActive, DevicesActive devicesActive2, DevicesActive devicesActive3) {
        super(str);
        if (devicesActive == null) {
            throw new IllegalArgumentException("Required value for 'active1Day' is null");
        }
        this.active1Day = devicesActive;
        if (devicesActive2 == null) {
            throw new IllegalArgumentException("Required value for 'active7Day' is null");
        }
        this.active7Day = devicesActive2;
        if (devicesActive3 == null) {
            throw new IllegalArgumentException("Required value for 'active28Day' is null");
        }
        this.active28Day = devicesActive3;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public boolean equals(Object obj) {
        DevicesActive devicesActive;
        DevicesActive devicesActive2;
        DevicesActive devicesActive3;
        DevicesActive devicesActive4;
        DevicesActive devicesActive5;
        DevicesActive devicesActive6;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetDevicesReport getDevicesReport = (GetDevicesReport) obj;
        String str = this.startDate;
        String str2 = getDevicesReport.startDate;
        return (str == str2 || str.equals(str2)) && ((devicesActive = this.active1Day) == (devicesActive2 = getDevicesReport.active1Day) || devicesActive.equals(devicesActive2)) && (((devicesActive3 = this.active7Day) == (devicesActive4 = getDevicesReport.active7Day) || devicesActive3.equals(devicesActive4)) && ((devicesActive5 = this.active28Day) == (devicesActive6 = getDevicesReport.active28Day) || devicesActive5.equals(devicesActive6)));
    }

    public DevicesActive getActive1Day() {
        return this.active1Day;
    }

    public DevicesActive getActive28Day() {
        return this.active28Day;
    }

    public DevicesActive getActive7Day() {
        return this.active7Day;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String getStartDate() {
        return this.startDate;
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.active1Day, this.active7Day, this.active28Day});
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String toString() {
        return C3051a.f18178b.serialize((C3051a) this, false);
    }

    @Override // com.dropbox.core.p006v2.team.BaseDfbReport
    public String toStringMultiline() {
        return C3051a.f18178b.serialize((C3051a) this, true);
    }
}
