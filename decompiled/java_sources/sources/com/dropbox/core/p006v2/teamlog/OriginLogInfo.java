package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AccessMethodLogInfo;
import com.dropbox.core.p006v2.teamlog.GeoLocationLogInfo;
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
public class OriginLogInfo {
    protected final AccessMethodLogInfo accessMethod;
    protected final GeoLocationLogInfo geoLocation;

    /* renamed from: com.dropbox.core.v2.teamlog.OriginLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3829a extends StructSerializer<OriginLogInfo> {

        /* renamed from: b */
        public static final C3829a f20102b = new C3829a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public OriginLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AccessMethodLogInfo accessMethodLogInfo = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            GeoLocationLogInfo geoLocationLogInfo = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("access_method".equals(currentName)) {
                    accessMethodLogInfo = AccessMethodLogInfo.C3327b.f18699b.deserialize(jsonParser);
                } else if ("geo_location".equals(currentName)) {
                    geoLocationLogInfo = (GeoLocationLogInfo) StoneSerializers.nullableStruct(GeoLocationLogInfo.C3631a.f19890b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (accessMethodLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"access_method\" missing.");
            }
            OriginLogInfo originLogInfo = new OriginLogInfo(accessMethodLogInfo, geoLocationLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(originLogInfo, originLogInfo.toStringMultiline());
            return originLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(OriginLogInfo originLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("access_method");
            AccessMethodLogInfo.C3327b.f18699b.serialize(originLogInfo.accessMethod, jsonGenerator);
            if (originLogInfo.geoLocation != null) {
                jsonGenerator.writeFieldName("geo_location");
                StoneSerializers.nullableStruct(GeoLocationLogInfo.C3631a.f19890b).serialize((StructSerializer) originLogInfo.geoLocation, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public OriginLogInfo(AccessMethodLogInfo accessMethodLogInfo, GeoLocationLogInfo geoLocationLogInfo) {
        this.geoLocation = geoLocationLogInfo;
        if (accessMethodLogInfo != null) {
            this.accessMethod = accessMethodLogInfo;
            return;
        }
        throw new IllegalArgumentException("Required value for 'accessMethod' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        OriginLogInfo originLogInfo = (OriginLogInfo) obj;
        AccessMethodLogInfo accessMethodLogInfo = this.accessMethod;
        AccessMethodLogInfo accessMethodLogInfo2 = originLogInfo.accessMethod;
        if (accessMethodLogInfo == accessMethodLogInfo2 || accessMethodLogInfo.equals(accessMethodLogInfo2)) {
            GeoLocationLogInfo geoLocationLogInfo = this.geoLocation;
            GeoLocationLogInfo geoLocationLogInfo2 = originLogInfo.geoLocation;
            if (geoLocationLogInfo == geoLocationLogInfo2) {
                return true;
            }
            if (geoLocationLogInfo != null && geoLocationLogInfo.equals(geoLocationLogInfo2)) {
                return true;
            }
        }
        return false;
    }

    public AccessMethodLogInfo getAccessMethod() {
        return this.accessMethod;
    }

    public GeoLocationLogInfo getGeoLocation() {
        return this.geoLocation;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.geoLocation, this.accessMethod});
    }

    public String toString() {
        return C3829a.f20102b.serialize((C3829a) this, false);
    }

    public String toStringMultiline() {
        return C3829a.f20102b.serialize((C3829a) this, true);
    }

    public OriginLogInfo(AccessMethodLogInfo accessMethodLogInfo) {
        this(accessMethodLogInfo, null);
    }
}
