package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Dimensions;
import com.dropbox.core.p006v2.files.GpsCoordinates;
import com.dropbox.core.p006v2.files.MediaMetadata;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.onyx.android.sdk.event.StatisticsStoolbarPageAdd;
import java.io.IOException;
import java.util.Date;

/* loaded from: classes4.dex */
public class PhotoMetadata extends MediaMetadata {

    /* loaded from: classes4.dex */
    public static class Builder extends MediaMetadata.Builder {
        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public PhotoMetadata build() {
            return new PhotoMetadata(this.dimensions, this.location, this.timeTaken);
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public Builder withDimensions(Dimensions dimensions) {
            super.withDimensions(dimensions);
            return this;
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public Builder withLocation(GpsCoordinates gpsCoordinates) {
            super.withLocation(gpsCoordinates);
            return this;
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public Builder withTimeTaken(Date date) {
            super.withTimeTaken(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.PhotoMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2605a extends StructSerializer<PhotoMetadata> {

        /* renamed from: b */
        public static final C2605a f17289b = new C2605a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if (com.onyx.android.sdk.event.StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO.equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.files.PhotoMetadata deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r4 = this;
                r4 = 0
                if (r6 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r5)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r5)
                java.lang.String r1 = "photo"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r4
            L13:
                if (r0 != 0) goto L7d
                r0 = r4
                r1 = r0
            L17:
                com.fasterxml.jackson.core.JsonToken r2 = r5.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r2 != r3) goto L6b
                java.lang.String r2 = r5.getCurrentName()
                r5.nextToken()
                java.lang.String r3 = "dimensions"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L3b
                com.dropbox.core.v2.files.Dimensions$a r4 = com.dropbox.core.p006v2.files.Dimensions.C2528a.f17119b
                com.dropbox.core.stone.StructSerializer r4 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r4)
                java.lang.Object r4 = r4.deserialize(r5)
                com.dropbox.core.v2.files.Dimensions r4 = (com.dropbox.core.p006v2.files.Dimensions) r4
                goto L17
            L3b:
                java.lang.String r3 = "location"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L50
                com.dropbox.core.v2.files.GpsCoordinates$a r0 = com.dropbox.core.p006v2.files.GpsCoordinates.C2566a.f17197b
                com.dropbox.core.stone.StructSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r0)
                java.lang.Object r0 = r0.deserialize(r5)
                com.dropbox.core.v2.files.GpsCoordinates r0 = (com.dropbox.core.p006v2.files.GpsCoordinates) r0
                goto L17
            L50:
                java.lang.String r3 = "time_taken"
                boolean r2 = r3.equals(r2)
                if (r2 == 0) goto L67
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.timestamp()
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.nullable(r1)
                java.lang.Object r1 = r1.deserialize(r5)
                java.util.Date r1 = (java.util.Date) r1
                goto L17
            L67:
                com.dropbox.core.stone.StoneSerializer.skipValue(r5)
                goto L17
            L6b:
                com.dropbox.core.v2.files.PhotoMetadata r2 = new com.dropbox.core.v2.files.PhotoMetadata
                r2.<init>(r4, r0, r1)
                if (r6 != 0) goto L75
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            L75:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            L7d:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r6.append(r1)
                r6.append(r0)
                java.lang.String r0 = "\""
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r4.<init>(r5, r6)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.files.PhotoMetadata.C2605a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.PhotoMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PhotoMetadata photoMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag(StatisticsStoolbarPageAdd.PAGE_ADD_FROM_PHOTO, jsonGenerator);
            if (photoMetadata.dimensions != null) {
                jsonGenerator.writeFieldName("dimensions");
                StoneSerializers.nullableStruct(Dimensions.C2528a.f17119b).serialize((StructSerializer) photoMetadata.dimensions, jsonGenerator);
            }
            if (photoMetadata.location != null) {
                jsonGenerator.writeFieldName("location");
                StoneSerializers.nullableStruct(GpsCoordinates.C2566a.f17197b).serialize((StructSerializer) photoMetadata.location, jsonGenerator);
            }
            if (photoMetadata.timeTaken != null) {
                jsonGenerator.writeFieldName("time_taken");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) photoMetadata.timeTaken, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PhotoMetadata(Dimensions dimensions, GpsCoordinates gpsCoordinates, Date date) {
        super(dimensions, gpsCoordinates, date);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public boolean equals(Object obj) {
        GpsCoordinates gpsCoordinates;
        GpsCoordinates gpsCoordinates2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PhotoMetadata photoMetadata = (PhotoMetadata) obj;
        Dimensions dimensions = this.dimensions;
        Dimensions dimensions2 = photoMetadata.dimensions;
        if ((dimensions == dimensions2 || (dimensions != null && dimensions.equals(dimensions2))) && ((gpsCoordinates = this.location) == (gpsCoordinates2 = photoMetadata.location) || (gpsCoordinates != null && gpsCoordinates.equals(gpsCoordinates2)))) {
            Date date = this.timeTaken;
            Date date2 = photoMetadata.timeTaken;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public Dimensions getDimensions() {
        return this.dimensions;
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public GpsCoordinates getLocation() {
        return this.location;
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public Date getTimeTaken() {
        return this.timeTaken;
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public int hashCode() {
        return getClass().toString().hashCode();
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public String toString() {
        return C2605a.f17289b.serialize((C2605a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public String toStringMultiline() {
        return C2605a.f17289b.serialize((C2605a) this, true);
    }

    public PhotoMetadata() {
        this(null, null, null);
    }
}
