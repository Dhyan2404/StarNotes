package com.dropbox.core.p006v2.files;

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
public class GpsCoordinates {
    protected final double latitude;
    protected final double longitude;

    /* renamed from: com.dropbox.core.v2.files.GpsCoordinates$a */
    /* loaded from: classes4.dex */
    public static class C2566a extends StructSerializer<GpsCoordinates> {

        /* renamed from: b */
        public static final C2566a f17197b = new C2566a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GpsCoordinates deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Double d = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Double d2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("latitude".equals(currentName)) {
                    d = StoneSerializers.float64().deserialize(jsonParser);
                } else if ("longitude".equals(currentName)) {
                    d2 = StoneSerializers.float64().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (d == null) {
                throw new JsonParseException(jsonParser, "Required field \"latitude\" missing.");
            }
            if (d2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"longitude\" missing.");
            }
            GpsCoordinates gpsCoordinates = new GpsCoordinates(d.doubleValue(), d2.doubleValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(gpsCoordinates, gpsCoordinates.toStringMultiline());
            return gpsCoordinates;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GpsCoordinates gpsCoordinates, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("latitude");
            StoneSerializers.float64().serialize((StoneSerializer<Double>) Double.valueOf(gpsCoordinates.latitude), jsonGenerator);
            jsonGenerator.writeFieldName("longitude");
            StoneSerializers.float64().serialize((StoneSerializer<Double>) Double.valueOf(gpsCoordinates.longitude), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GpsCoordinates(double d, double d2) {
        this.latitude = d;
        this.longitude = d2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GpsCoordinates gpsCoordinates = (GpsCoordinates) obj;
        return this.latitude == gpsCoordinates.latitude && this.longitude == gpsCoordinates.longitude;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.latitude), Double.valueOf(this.longitude)});
    }

    public String toString() {
        return C2566a.f17197b.serialize((C2566a) this, false);
    }

    public String toStringMultiline() {
        return C2566a.f17197b.serialize((C2566a) this, true);
    }
}
