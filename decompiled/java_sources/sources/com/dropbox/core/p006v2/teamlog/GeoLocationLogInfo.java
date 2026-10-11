package com.dropbox.core.p006v2.teamlog;

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
import com.sunia.HTREnginev2.sod;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class GeoLocationLogInfo {
    protected final String city;
    protected final String country;
    protected final String ipAddress;
    protected final String region;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String city;
        protected String country;
        protected final String ipAddress;
        protected String region;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'ipAddress' is null");
            }
            this.ipAddress = str;
            this.city = null;
            this.region = null;
            this.country = null;
        }

        public GeoLocationLogInfo build() {
            return new GeoLocationLogInfo(this.ipAddress, this.city, this.region, this.country);
        }

        public Builder withCity(String str) {
            this.city = str;
            return this;
        }

        public Builder withCountry(String str) {
            this.country = str;
            return this;
        }

        public Builder withRegion(String str) {
            this.region = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GeoLocationLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3631a extends StructSerializer<GeoLocationLogInfo> {

        /* renamed from: b */
        public static final C3631a f19890b = new C3631a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GeoLocationLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str4 = null;
            String str5 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("ip_address".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("city".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("region".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (sod.f84350C.equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"ip_address\" missing.");
            }
            GeoLocationLogInfo geoLocationLogInfo = new GeoLocationLogInfo(str2, str3, str4, str5);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(geoLocationLogInfo, geoLocationLogInfo.toStringMultiline());
            return geoLocationLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GeoLocationLogInfo geoLocationLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("ip_address");
            StoneSerializers.string().serialize((StoneSerializer<String>) geoLocationLogInfo.ipAddress, jsonGenerator);
            if (geoLocationLogInfo.city != null) {
                jsonGenerator.writeFieldName("city");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) geoLocationLogInfo.city, jsonGenerator);
            }
            if (geoLocationLogInfo.region != null) {
                jsonGenerator.writeFieldName("region");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) geoLocationLogInfo.region, jsonGenerator);
            }
            if (geoLocationLogInfo.country != null) {
                jsonGenerator.writeFieldName(sod.f84350C);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) geoLocationLogInfo.country, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GeoLocationLogInfo(String str, String str2, String str3, String str4) {
        this.city = str2;
        this.region = str3;
        this.country = str4;
        if (str != null) {
            this.ipAddress = str;
            return;
        }
        throw new IllegalArgumentException("Required value for 'ipAddress' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GeoLocationLogInfo geoLocationLogInfo = (GeoLocationLogInfo) obj;
        String str5 = this.ipAddress;
        String str6 = geoLocationLogInfo.ipAddress;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.city) == (str2 = geoLocationLogInfo.city) || (str != null && str.equals(str2))) && ((str3 = this.region) == (str4 = geoLocationLogInfo.region) || (str3 != null && str3.equals(str4))))) {
            String str7 = this.country;
            String str8 = geoLocationLogInfo.country;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
    }

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getRegion() {
        return this.region;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.city, this.region, this.country, this.ipAddress});
    }

    public String toString() {
        return C3631a.f19890b.serialize((C3631a) this, false);
    }

    public String toStringMultiline() {
        return C3631a.f19890b.serialize((C3631a) this, true);
    }

    public GeoLocationLogInfo(String str) {
        this(str, null, null, null);
    }
}
