package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Dimensions;
import com.dropbox.core.p006v2.files.GpsCoordinates;
import com.dropbox.core.p006v2.files.MediaMetadata;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class VideoMetadata extends MediaMetadata {
    protected final Long duration;

    /* loaded from: classes4.dex */
    public static class Builder extends MediaMetadata.Builder {
        protected Long duration = null;

        public Builder withDuration(Long l) {
            this.duration = l;
            return this;
        }

        @Override // com.dropbox.core.v2.files.MediaMetadata.Builder
        public VideoMetadata build() {
            return new VideoMetadata(this.dimensions, this.location, this.timeTaken, this.duration);
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

    /* renamed from: com.dropbox.core.v2.files.VideoMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2698a extends StructSerializer<VideoMetadata> {

        /* renamed from: b */
        public static final C2698a f17478b = new C2698a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("video".equals(r0) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.files.VideoMetadata deserialize(com.fasterxml.jackson.core.JsonParser r6, boolean r7) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r5 = this;
                r5 = 0
                if (r7 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r6)
                java.lang.String r0 = com.dropbox.core.stone.CompositeSerializer.readTag(r6)
                java.lang.String r1 = "video"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L13
            L12:
                r0 = r5
            L13:
                if (r0 != 0) goto L95
                r0 = r5
                r1 = r0
                r2 = r1
            L18:
                com.fasterxml.jackson.core.JsonToken r3 = r6.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r4 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r3 != r4) goto L83
                java.lang.String r3 = r6.getCurrentName()
                r6.nextToken()
                java.lang.String r4 = "dimensions"
                boolean r4 = r4.equals(r3)
                if (r4 == 0) goto L3c
                com.dropbox.core.v2.files.Dimensions$a r5 = com.dropbox.core.p006v2.files.Dimensions.C2528a.f17119b
                com.dropbox.core.stone.StructSerializer r5 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r5)
                java.lang.Object r5 = r5.deserialize(r6)
                com.dropbox.core.v2.files.Dimensions r5 = (com.dropbox.core.p006v2.files.Dimensions) r5
                goto L18
            L3c:
                java.lang.String r4 = "location"
                boolean r4 = r4.equals(r3)
                if (r4 == 0) goto L51
                com.dropbox.core.v2.files.GpsCoordinates$a r0 = com.dropbox.core.p006v2.files.GpsCoordinates.C2566a.f17197b
                com.dropbox.core.stone.StructSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r0)
                java.lang.Object r0 = r0.deserialize(r6)
                com.dropbox.core.v2.files.GpsCoordinates r0 = (com.dropbox.core.p006v2.files.GpsCoordinates) r0
                goto L18
            L51:
                java.lang.String r4 = "time_taken"
                boolean r4 = r4.equals(r3)
                if (r4 == 0) goto L68
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.timestamp()
                com.dropbox.core.stone.StoneSerializer r1 = com.dropbox.core.stone.StoneSerializers.nullable(r1)
                java.lang.Object r1 = r1.deserialize(r6)
                java.util.Date r1 = (java.util.Date) r1
                goto L18
            L68:
                java.lang.String r4 = "duration"
                boolean r3 = r4.equals(r3)
                if (r3 == 0) goto L7f
                com.dropbox.core.stone.StoneSerializer r2 = com.dropbox.core.stone.StoneSerializers.uInt64()
                com.dropbox.core.stone.StoneSerializer r2 = com.dropbox.core.stone.StoneSerializers.nullable(r2)
                java.lang.Object r2 = r2.deserialize(r6)
                java.lang.Long r2 = (java.lang.Long) r2
                goto L18
            L7f:
                com.dropbox.core.stone.StoneSerializer.skipValue(r6)
                goto L18
            L83:
                com.dropbox.core.v2.files.VideoMetadata r3 = new com.dropbox.core.v2.files.VideoMetadata
                r3.<init>(r5, r0, r1, r2)
                if (r7 != 0) goto L8d
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r6)
            L8d:
                java.lang.String r5 = r3.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r3, r5)
                return r3
            L95:
                com.fasterxml.jackson.core.JsonParseException r5 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                java.lang.String r1 = "No subtype found that matches tag: \""
                r7.append(r1)
                r7.append(r0)
                java.lang.String r0 = "\""
                r7.append(r0)
                java.lang.String r7 = r7.toString()
                r5.<init>(r6, r7)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.files.VideoMetadata.C2698a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.VideoMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(VideoMetadata videoMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            writeTag("video", jsonGenerator);
            if (videoMetadata.dimensions != null) {
                jsonGenerator.writeFieldName("dimensions");
                StoneSerializers.nullableStruct(Dimensions.C2528a.f17119b).serialize((StructSerializer) videoMetadata.dimensions, jsonGenerator);
            }
            if (videoMetadata.location != null) {
                jsonGenerator.writeFieldName("location");
                StoneSerializers.nullableStruct(GpsCoordinates.C2566a.f17197b).serialize((StructSerializer) videoMetadata.location, jsonGenerator);
            }
            if (videoMetadata.timeTaken != null) {
                jsonGenerator.writeFieldName("time_taken");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) videoMetadata.timeTaken, jsonGenerator);
            }
            if (videoMetadata.duration != null) {
                jsonGenerator.writeFieldName("duration");
                StoneSerializers.nullable(StoneSerializers.uInt64()).serialize((StoneSerializer) videoMetadata.duration, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public VideoMetadata(Dimensions dimensions, GpsCoordinates gpsCoordinates, Date date, Long l) {
        super(dimensions, gpsCoordinates, date);
        this.duration = l;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public boolean equals(Object obj) {
        GpsCoordinates gpsCoordinates;
        GpsCoordinates gpsCoordinates2;
        Date date;
        Date date2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        VideoMetadata videoMetadata = (VideoMetadata) obj;
        Dimensions dimensions = this.dimensions;
        Dimensions dimensions2 = videoMetadata.dimensions;
        if ((dimensions == dimensions2 || (dimensions != null && dimensions.equals(dimensions2))) && (((gpsCoordinates = this.location) == (gpsCoordinates2 = videoMetadata.location) || (gpsCoordinates != null && gpsCoordinates.equals(gpsCoordinates2))) && ((date = this.timeTaken) == (date2 = videoMetadata.timeTaken) || (date != null && date.equals(date2))))) {
            Long l = this.duration;
            Long l2 = videoMetadata.duration;
            if (l == l2) {
                return true;
            }
            if (l != null && l.equals(l2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public Dimensions getDimensions() {
        return this.dimensions;
    }

    public Long getDuration() {
        return this.duration;
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
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.duration});
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public String toString() {
        return C2698a.f17478b.serialize((C2698a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.MediaMetadata
    public String toStringMultiline() {
        return C2698a.f17478b.serialize((C2698a) this, true);
    }

    public VideoMetadata() {
        this(null, null, null, null);
    }
}
