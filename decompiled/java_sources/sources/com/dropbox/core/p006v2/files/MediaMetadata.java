package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.Dimensions;
import com.dropbox.core.p006v2.files.GpsCoordinates;
import com.dropbox.core.p006v2.files.PhotoMetadata;
import com.dropbox.core.p006v2.files.VideoMetadata;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class MediaMetadata {
    protected final Dimensions dimensions;
    protected final GpsCoordinates location;
    protected final Date timeTaken;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected Dimensions dimensions = null;
        protected GpsCoordinates location = null;
        protected Date timeTaken = null;

        public MediaMetadata build() {
            return new MediaMetadata(this.dimensions, this.location, this.timeTaken);
        }

        public Builder withDimensions(Dimensions dimensions) {
            this.dimensions = dimensions;
            return this;
        }

        public Builder withLocation(GpsCoordinates gpsCoordinates) {
            this.location = gpsCoordinates;
            return this;
        }

        public Builder withTimeTaken(Date date) {
            this.timeTaken = LangUtil.truncateMillis(date);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.MediaMetadata$a */
    /* loaded from: classes4.dex */
    public static class C2595a extends StructSerializer<MediaMetadata> {

        /* renamed from: b */
        public static final C2595a f17263b = new C2595a();

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
        
            if ("".equals(r1) != false) goto L6;
         */
        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.dropbox.core.p006v2.files.MediaMetadata deserialize(com.fasterxml.jackson.core.JsonParser r5, boolean r6) throws java.io.IOException, com.fasterxml.jackson.core.JsonParseException {
            /*
                r4 = this;
                java.lang.String r4 = ""
                r0 = 0
                if (r6 != 0) goto L12
                com.dropbox.core.stone.StoneSerializer.expectStartObject(r5)
                java.lang.String r1 = com.dropbox.core.stone.CompositeSerializer.readTag(r5)
                boolean r2 = r4.equals(r1)
                if (r2 == 0) goto L13
            L12:
                r1 = r0
            L13:
                if (r1 != 0) goto L71
                r4 = r0
                r1 = r4
            L17:
                com.fasterxml.jackson.core.JsonToken r2 = r5.getCurrentToken()
                com.fasterxml.jackson.core.JsonToken r3 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r2 != r3) goto L6b
                java.lang.String r2 = r5.getCurrentName()
                r5.nextToken()
                java.lang.String r3 = "dimensions"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L3b
                com.dropbox.core.v2.files.Dimensions$a r0 = com.dropbox.core.p006v2.files.Dimensions.C2528a.f17119b
                com.dropbox.core.stone.StructSerializer r0 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r0)
                java.lang.Object r0 = r0.deserialize(r5)
                com.dropbox.core.v2.files.Dimensions r0 = (com.dropbox.core.p006v2.files.Dimensions) r0
                goto L17
            L3b:
                java.lang.String r3 = "location"
                boolean r3 = r3.equals(r2)
                if (r3 == 0) goto L50
                com.dropbox.core.v2.files.GpsCoordinates$a r4 = com.dropbox.core.p006v2.files.GpsCoordinates.C2566a.f17197b
                com.dropbox.core.stone.StructSerializer r4 = com.dropbox.core.stone.StoneSerializers.nullableStruct(r4)
                java.lang.Object r4 = r4.deserialize(r5)
                com.dropbox.core.v2.files.GpsCoordinates r4 = (com.dropbox.core.p006v2.files.GpsCoordinates) r4
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
                com.dropbox.core.v2.files.MediaMetadata r2 = new com.dropbox.core.v2.files.MediaMetadata
                r2.<init>(r0, r4, r1)
                goto L9c
            L71:
                boolean r4 = r4.equals(r1)
                r0 = 1
                if (r4 == 0) goto L7f
                com.dropbox.core.v2.files.MediaMetadata$a r4 = com.dropbox.core.p006v2.files.MediaMetadata.C2595a.f17263b
                com.dropbox.core.v2.files.MediaMetadata r2 = r4.deserialize(r5, r0)
                goto L9c
            L7f:
                java.lang.String r4 = "photo"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto L8e
                com.dropbox.core.v2.files.PhotoMetadata$a r4 = com.dropbox.core.p006v2.files.PhotoMetadata.C2605a.f17289b
                com.dropbox.core.v2.files.PhotoMetadata r2 = r4.deserialize(r5, r0)
                goto L9c
            L8e:
                java.lang.String r4 = "video"
                boolean r4 = r4.equals(r1)
                if (r4 == 0) goto La9
                com.dropbox.core.v2.files.VideoMetadata$a r4 = com.dropbox.core.p006v2.files.VideoMetadata.C2698a.f17478b
                com.dropbox.core.v2.files.VideoMetadata r2 = r4.deserialize(r5, r0)
            L9c:
                if (r6 != 0) goto La1
                com.dropbox.core.stone.StoneSerializer.expectEndObject(r5)
            La1:
                java.lang.String r4 = r2.toStringMultiline()
                com.dropbox.core.stone.StoneDeserializerLogger.log(r2, r4)
                return r2
            La9:
                com.fasterxml.jackson.core.JsonParseException r4 = new com.fasterxml.jackson.core.JsonParseException
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r0 = "No subtype found that matches tag: \""
                r6.append(r0)
                r6.append(r1)
                java.lang.String r0 = "\""
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r4.<init>(r5, r6)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.p006v2.files.MediaMetadata.C2595a.deserialize(com.fasterxml.jackson.core.JsonParser, boolean):com.dropbox.core.v2.files.MediaMetadata");
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MediaMetadata mediaMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (mediaMetadata instanceof PhotoMetadata) {
                PhotoMetadata.C2605a.f17289b.serialize((PhotoMetadata) mediaMetadata, jsonGenerator, z);
                return;
            }
            if (mediaMetadata instanceof VideoMetadata) {
                VideoMetadata.C2698a.f17478b.serialize((VideoMetadata) mediaMetadata, jsonGenerator, z);
                return;
            }
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (mediaMetadata.dimensions != null) {
                jsonGenerator.writeFieldName("dimensions");
                StoneSerializers.nullableStruct(Dimensions.C2528a.f17119b).serialize((StructSerializer) mediaMetadata.dimensions, jsonGenerator);
            }
            if (mediaMetadata.location != null) {
                jsonGenerator.writeFieldName("location");
                StoneSerializers.nullableStruct(GpsCoordinates.C2566a.f17197b).serialize((StructSerializer) mediaMetadata.location, jsonGenerator);
            }
            if (mediaMetadata.timeTaken != null) {
                jsonGenerator.writeFieldName("time_taken");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) mediaMetadata.timeTaken, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public MediaMetadata(Dimensions dimensions, GpsCoordinates gpsCoordinates, Date date) {
        this.dimensions = dimensions;
        this.location = gpsCoordinates;
        this.timeTaken = LangUtil.truncateMillis(date);
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        GpsCoordinates gpsCoordinates;
        GpsCoordinates gpsCoordinates2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        Dimensions dimensions = this.dimensions;
        Dimensions dimensions2 = mediaMetadata.dimensions;
        if ((dimensions == dimensions2 || (dimensions != null && dimensions.equals(dimensions2))) && ((gpsCoordinates = this.location) == (gpsCoordinates2 = mediaMetadata.location) || (gpsCoordinates != null && gpsCoordinates.equals(gpsCoordinates2)))) {
            Date date = this.timeTaken;
            Date date2 = mediaMetadata.timeTaken;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public Dimensions getDimensions() {
        return this.dimensions;
    }

    public GpsCoordinates getLocation() {
        return this.location;
    }

    public Date getTimeTaken() {
        return this.timeTaken;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.dimensions, this.location, this.timeTaken});
    }

    public String toString() {
        return C2595a.f17263b.serialize((C2595a) this, false);
    }

    public String toStringMultiline() {
        return C2595a.f17263b.serialize((C2595a) this, true);
    }

    public MediaMetadata() {
        this(null, null, null);
    }
}
