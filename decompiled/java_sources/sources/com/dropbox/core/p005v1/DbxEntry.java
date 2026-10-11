package com.dropbox.core.p005v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import org.mortbay.jetty.HttpHeaderValues;

/* loaded from: classes4.dex */
public abstract class DbxEntry extends Dumpable implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* renamed from: FM */
    private static final JsonReader.FieldMapping f16730FM;
    private static final int FM_bytes = 1;
    private static final int FM_client_mtime = 9;
    private static final int FM_contents = 11;
    private static final int FM_hash = 10;
    private static final int FM_icon = 7;
    private static final int FM_is_deleted = 4;
    private static final int FM_is_dir = 3;
    private static final int FM_modified = 8;
    private static final int FM_path = 2;
    private static final int FM_photo_info = 12;
    private static final int FM_rev = 5;
    private static final int FM_size = 0;
    private static final int FM_thumb_exists = 6;
    private static final int FM_video_info = 13;
    public static final JsonReader<DbxEntry> Reader = new C2353a();
    public static final JsonReader<DbxEntry> ReaderMaybeDeleted = new C2354b();
    public static final long serialVersionUID = 0;
    public final String iconName;
    public final boolean mightHaveThumbnail;
    public final String name;
    public final String path;

    /* loaded from: classes4.dex */
    public static final class File extends DbxEntry {
        public static final JsonReader<File> Reader = new C2348a();
        public static final JsonReader<File> ReaderMaybeDeleted = new C2349b();
        public static final long serialVersionUID = 0;
        public final Date clientMtime;
        public final String humanSize;
        public final Date lastModified;
        public final long numBytes;
        public final PhotoInfo photoInfo;
        public final String rev;
        public final VideoInfo videoInfo;

        /* loaded from: classes4.dex */
        public static class Location extends Dumpable {
            public static JsonReader<Location> Reader = new C2345a();
            public final double latitude;
            public final double longitude;

            /* renamed from: com.dropbox.core.v1.DbxEntry$File$Location$a */
            /* loaded from: classes4.dex */
            public static class C2345a extends JsonReader<Location> {
                @Override // com.dropbox.core.json.JsonReader
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public Location read(JsonParser jsonParser) throws IOException, JsonReadException {
                    if (!JsonReader.isArrayStart(jsonParser)) {
                        JsonReader.skipValue(jsonParser);
                        return null;
                    }
                    JsonReader.expectArrayStart(jsonParser);
                    Location location = new Location(JsonReader.readDouble(jsonParser), JsonReader.readDouble(jsonParser));
                    JsonReader.expectArrayEnd(jsonParser);
                    return location;
                }
            }

            public Location(double d, double d2) {
                this.latitude = d;
                this.longitude = d2;
            }

            @Override // com.dropbox.core.util.Dumpable
            public void dumpFields(DumpWriter dumpWriter) {
                dumpWriter.mo10123f("latitude").m10124v(this.latitude);
                dumpWriter.mo10123f("longitude").m10124v(this.longitude);
            }

            public boolean equals(Object obj) {
                return obj != null && getClass().equals(obj.getClass()) && equals((Location) obj);
            }

            public int hashCode() {
                long doubleToLongBits = Double.doubleToLongBits(this.latitude);
                long doubleToLongBits2 = Double.doubleToLongBits(this.longitude);
                return ((527 + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
            }

            public boolean equals(Location location) {
                return this.latitude == location.latitude && this.longitude == location.longitude;
            }
        }

        /* loaded from: classes4.dex */
        public static final class PhotoInfo extends Dumpable {
            public final Location location;
            public final Date timeTaken;
            public static JsonReader<PhotoInfo> Reader = new C2346a();
            public static final PhotoInfo PENDING = new PhotoInfo(null, null);

            /* renamed from: com.dropbox.core.v1.DbxEntry$File$PhotoInfo$a */
            /* loaded from: classes4.dex */
            public static class C2346a extends JsonReader<PhotoInfo> {
                @Override // com.dropbox.core.json.JsonReader
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public PhotoInfo read(JsonParser jsonParser) throws IOException, JsonReadException {
                    JsonReader.expectObjectStart(jsonParser);
                    Date date = null;
                    Location location = null;
                    while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                        String currentName = jsonParser.getCurrentName();
                        JsonReader.nextToken(jsonParser);
                        if (currentName.equals("lat_long")) {
                            location = Location.Reader.read(jsonParser);
                        } else if (currentName.equals("time_taken")) {
                            date = JsonDateReader.Dropbox.readOptional(jsonParser);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    }
                    JsonReader.expectObjectEnd(jsonParser);
                    return new PhotoInfo(date, location);
                }
            }

            public PhotoInfo(Date date, Location location) {
                this.timeTaken = date;
                this.location = location;
            }

            @Override // com.dropbox.core.util.Dumpable
            public void dumpFields(DumpWriter dumpWriter) {
                dumpWriter.mo10123f("timeTaken").m10132v(this.timeTaken);
                dumpWriter.mo10123f("location").m10128v(this.location);
            }

            public boolean equals(Object obj) {
                return obj != null && PhotoInfo.class.equals(obj.getClass()) && equals((PhotoInfo) obj);
            }

            public int hashCode() {
                return ((0 + LangUtil.nullableHashCode(this.timeTaken)) * 31) + LangUtil.nullableHashCode(this.location);
            }

            public boolean equals(PhotoInfo photoInfo) {
                PhotoInfo photoInfo2 = PENDING;
                return (photoInfo == photoInfo2 || this == photoInfo2) ? photoInfo == this : LangUtil.nullableEquals(this.timeTaken, photoInfo.timeTaken) && LangUtil.nullableEquals(this.location, photoInfo.location);
            }
        }

        /* loaded from: classes4.dex */
        public static final class VideoInfo extends Dumpable {
            public final Long duration;
            public final Location location;
            public final Date timeTaken;
            public static JsonReader<VideoInfo> Reader = new C2347a();
            public static final VideoInfo PENDING = new VideoInfo(null, null, null);

            /* renamed from: com.dropbox.core.v1.DbxEntry$File$VideoInfo$a */
            /* loaded from: classes4.dex */
            public static class C2347a extends JsonReader<VideoInfo> {
                @Override // com.dropbox.core.json.JsonReader
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public VideoInfo read(JsonParser jsonParser) throws IOException, JsonReadException {
                    JsonReader.expectObjectStart(jsonParser);
                    Date date = null;
                    Location location = null;
                    Long l = null;
                    while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                        String currentName = jsonParser.getCurrentName();
                        JsonReader.nextToken(jsonParser);
                        if (currentName.equals("lat_long")) {
                            location = Location.Reader.read(jsonParser);
                        } else if (currentName.equals("time_taken")) {
                            date = JsonDateReader.Dropbox.readOptional(jsonParser);
                        } else if (currentName.equals("duration")) {
                            l = JsonReader.UnsignedLongReader.readOptional(jsonParser);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    }
                    JsonReader.expectObjectEnd(jsonParser);
                    return new VideoInfo(date, location, l);
                }
            }

            public VideoInfo(Date date, Location location, Long l) {
                this.timeTaken = date;
                this.location = location;
                this.duration = l;
            }

            @Override // com.dropbox.core.util.Dumpable
            public void dumpFields(DumpWriter dumpWriter) {
                dumpWriter.mo10123f("timeTaken").m10132v(this.timeTaken);
                dumpWriter.mo10123f("location").m10128v(this.location);
                dumpWriter.mo10123f("duration").m10130v(this.duration);
            }

            public boolean equals(Object obj) {
                return obj != null && VideoInfo.class.equals(obj.getClass()) && equals((VideoInfo) obj);
            }

            public int hashCode() {
                return ((((0 + LangUtil.nullableHashCode(this.timeTaken)) * 31) + LangUtil.nullableHashCode(this.location)) * 31) + LangUtil.nullableHashCode(this.duration);
            }

            public boolean equals(VideoInfo videoInfo) {
                VideoInfo videoInfo2 = PENDING;
                return (videoInfo == videoInfo2 || this == videoInfo2) ? videoInfo == this : LangUtil.nullableEquals(this.timeTaken, videoInfo.timeTaken) && LangUtil.nullableEquals(this.location, videoInfo.location) && LangUtil.nullableEquals(this.duration, videoInfo.duration);
            }
        }

        /* renamed from: com.dropbox.core.v1.DbxEntry$File$a */
        /* loaded from: classes4.dex */
        public static class C2348a extends JsonReader<File> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final File read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                DbxEntry dbxEntry = DbxEntry.read(jsonParser, null).entry;
                if (dbxEntry instanceof File) {
                    return (File) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        }

        /* renamed from: com.dropbox.core.v1.DbxEntry$File$b */
        /* loaded from: classes4.dex */
        public static class C2349b extends JsonReader<File> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final File read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                WithChildrenC _read = DbxEntry._read(jsonParser, null, true);
                if (_read == null) {
                    return null;
                }
                DbxEntry dbxEntry = _read.entry;
                if (dbxEntry instanceof File) {
                    return (File) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        }

        public File(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4, PhotoInfo photoInfo, VideoInfo videoInfo) {
            super(str, str2, z, null);
            this.numBytes = j;
            this.humanSize = str3;
            this.lastModified = date;
            this.clientMtime = date2;
            this.rev = str4;
            this.photoInfo = photoInfo;
            this.videoInfo = videoInfo;
        }

        private static <T extends Dumpable> void nullablePendingField(DumpWriter dumpWriter, String str, T t, T t2) {
            if (t == null) {
                return;
            }
            dumpWriter.mo10123f(str);
            if (t == t2) {
                dumpWriter.verbatim("pending");
            } else {
                dumpWriter.m10128v(t);
            }
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public File asFile() {
            return this;
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public Folder asFolder() {
            throw new RuntimeException("not a folder");
        }

        @Override // com.dropbox.core.p005v1.DbxEntry, com.dropbox.core.util.Dumpable
        public void dumpFields(DumpWriter dumpWriter) {
            super.dumpFields(dumpWriter);
            dumpWriter.mo10123f("numBytes").m10127v(this.numBytes);
            dumpWriter.mo10123f("humanSize").m10131v(this.humanSize);
            dumpWriter.mo10123f("lastModified").m10132v(this.lastModified);
            dumpWriter.mo10123f("clientMtime").m10132v(this.clientMtime);
            dumpWriter.mo10123f("rev").m10131v(this.rev);
            nullablePendingField(dumpWriter, "photoInfo", this.photoInfo, PhotoInfo.PENDING);
            nullablePendingField(dumpWriter, "videoInfo", this.videoInfo, VideoInfo.PENDING);
        }

        public boolean equals(Object obj) {
            return obj != null && File.class.equals(obj.getClass()) && equals((File) obj);
        }

        @Override // com.dropbox.core.util.Dumpable
        public String getTypeName() {
            return "File";
        }

        public int hashCode() {
            return (((((((((((partialHashCode() * 31) + ((int) this.numBytes)) * 31) + this.lastModified.hashCode()) * 31) + this.clientMtime.hashCode()) * 31) + this.rev.hashCode()) * 31) + LangUtil.nullableHashCode(this.photoInfo)) * 31) + LangUtil.nullableHashCode(this.videoInfo);
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public boolean isFile() {
            return true;
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public boolean isFolder() {
            return false;
        }

        public boolean equals(File file) {
            return partialEquals(file) && this.numBytes == file.numBytes && this.humanSize.equals(file.humanSize) && this.lastModified.equals(file.lastModified) && this.clientMtime.equals(file.clientMtime) && this.rev.equals(file.rev) && LangUtil.nullableEquals(this.photoInfo, file.photoInfo) && LangUtil.nullableEquals(this.videoInfo, file.videoInfo);
        }

        public File(String str, String str2, boolean z, long j, String str3, Date date, Date date2, String str4) {
            this(str, str2, z, j, str3, date, date2, str4, null, null);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Folder extends DbxEntry {
        public static final JsonReader<Folder> Reader = new C2350a();
        public static final long serialVersionUID = 0;

        /* renamed from: com.dropbox.core.v1.DbxEntry$Folder$a */
        /* loaded from: classes4.dex */
        public static class C2350a extends JsonReader<Folder> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Folder read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation currentLocation = jsonParser.getCurrentLocation();
                DbxEntry dbxEntry = DbxEntry.read(jsonParser, null).entry;
                if (dbxEntry instanceof Folder) {
                    return (Folder) dbxEntry;
                }
                throw new JsonReadException("Expecting a file entry, got a folder entry", currentLocation);
            }
        }

        public Folder(String str, String str2, boolean z) {
            super(str, str2, z, null);
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public File asFile() {
            throw new RuntimeException("not a file");
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public Folder asFolder() {
            return this;
        }

        public boolean equals(Object obj) {
            return obj != null && Folder.class.equals(obj.getClass()) && equals((Folder) obj);
        }

        @Override // com.dropbox.core.util.Dumpable
        public String getTypeName() {
            return "Folder";
        }

        public int hashCode() {
            return partialHashCode();
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public boolean isFile() {
            return false;
        }

        @Override // com.dropbox.core.p005v1.DbxEntry
        public boolean isFolder() {
            return true;
        }

        public boolean equals(Folder folder) {
            return partialEquals(folder);
        }
    }

    /* loaded from: classes4.dex */
    public static final class WithChildren extends Dumpable implements Serializable {
        public static final JsonReader<WithChildren> Reader = new C2351a();
        public static final JsonReader<WithChildren> ReaderMaybeDeleted = new C2352b();
        public static final long serialVersionUID = 0;
        public final List<DbxEntry> children;
        public final DbxEntry entry;
        public final String hash;

        /* renamed from: com.dropbox.core.v1.DbxEntry$WithChildren$a */
        /* loaded from: classes4.dex */
        public static class C2351a extends JsonReader<WithChildren> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final WithChildren read(JsonParser jsonParser) throws IOException, JsonReadException {
                WithChildrenC read = DbxEntry.read(jsonParser, new Collector.ArrayListCollector());
                return new WithChildren(read.entry, read.hash, (List) read.children);
            }
        }

        /* renamed from: com.dropbox.core.v1.DbxEntry$WithChildren$b */
        /* loaded from: classes4.dex */
        public static class C2352b extends JsonReader<WithChildren> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final WithChildren read(JsonParser jsonParser) throws IOException, JsonReadException {
                WithChildrenC readMaybeDeleted = DbxEntry.readMaybeDeleted(jsonParser, new Collector.ArrayListCollector());
                if (readMaybeDeleted == null) {
                    return null;
                }
                return new WithChildren(readMaybeDeleted.entry, readMaybeDeleted.hash, (List) readMaybeDeleted.children);
            }
        }

        public WithChildren(DbxEntry dbxEntry, String str, List<DbxEntry> list) {
            this.entry = dbxEntry;
            this.hash = str;
            this.children = list;
        }

        @Override // com.dropbox.core.util.Dumpable
        public void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.m10128v(this.entry);
            dumpWriter.mo10123f("hash").m10131v(this.hash);
            dumpWriter.mo10123f(Constants.ELEMNAME_CHILDREN_STRING).m10129v(this.children);
        }

        public boolean equals(Object obj) {
            return obj != null && WithChildren.class.equals(obj.getClass()) && equals((WithChildren) obj);
        }

        public int hashCode() {
            int hashCode = this.entry.hashCode() * 31;
            String str = this.hash;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            List<DbxEntry> list = this.children;
            return hashCode2 + (list != null ? list.hashCode() : 0);
        }

        public boolean equals(WithChildren withChildren) {
            List<DbxEntry> list = this.children;
            if (list == null ? withChildren.children != null : !list.equals(withChildren.children)) {
                return false;
            }
            if (!this.entry.equals(withChildren.entry)) {
                return false;
            }
            String str = this.hash;
            if (str != null) {
                if (str.equals(withChildren.hash)) {
                    return true;
                }
            } else if (withChildren.hash == null) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    public static final class WithChildrenC<C> extends Dumpable implements Serializable {
        public static final long serialVersionUID = 0;
        public final C children;
        public final DbxEntry entry;
        public final String hash;

        /* loaded from: classes4.dex */
        public static class Reader<C> extends JsonReader<WithChildrenC<C>> {

            /* renamed from: c */
            public final Collector<DbxEntry, ? extends C> f16731c;

            public Reader(Collector<DbxEntry, ? extends C> collector) {
                this.f16731c = collector;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return DbxEntry.read(jsonParser, this.f16731c);
            }
        }

        /* loaded from: classes4.dex */
        public static class ReaderMaybeDeleted<C> extends JsonReader<WithChildrenC<C>> {

            /* renamed from: c */
            public final Collector<DbxEntry, ? extends C> f16732c;

            public ReaderMaybeDeleted(Collector<DbxEntry, ? extends C> collector) {
                this.f16732c = collector;
            }

            @Override // com.dropbox.core.json.JsonReader
            public final WithChildrenC<C> read(JsonParser jsonParser) throws IOException, JsonReadException {
                return DbxEntry.readMaybeDeleted(jsonParser, this.f16732c);
            }
        }

        public WithChildrenC(DbxEntry dbxEntry, String str, C c) {
            this.entry = dbxEntry;
            this.hash = str;
            this.children = c;
        }

        @Override // com.dropbox.core.util.Dumpable
        public void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.m10128v(this.entry);
            dumpWriter.mo10123f("hash").m10131v(this.hash);
            if (this.children != null) {
                dumpWriter.mo10123f(Constants.ELEMNAME_CHILDREN_STRING).verbatim(this.children.toString());
            }
        }

        public boolean equals(Object obj) {
            return obj != null && WithChildrenC.class.equals(obj.getClass()) && equals((WithChildrenC<?>) obj);
        }

        public int hashCode() {
            int hashCode = this.entry.hashCode() * 31;
            String str = this.hash;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            C c = this.children;
            return hashCode2 + (c != null ? c.hashCode() : 0);
        }

        public boolean equals(WithChildrenC<?> withChildrenC) {
            C c = this.children;
            if (c == null ? withChildrenC.children != null : !c.equals(withChildrenC.children)) {
                return false;
            }
            if (!this.entry.equals(withChildrenC.entry)) {
                return false;
            }
            String str = this.hash;
            if (str != null) {
                if (str.equals(withChildrenC.hash)) {
                    return true;
                }
            } else if (withChildrenC.hash == null) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxEntry$a */
    /* loaded from: classes4.dex */
    public static class C2353a extends JsonReader<DbxEntry> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DbxEntry read(JsonParser jsonParser) throws IOException, JsonReadException {
            return DbxEntry.read(jsonParser, null).entry;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxEntry$b */
    /* loaded from: classes4.dex */
    public static class C2354b extends JsonReader<DbxEntry> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DbxEntry read(JsonParser jsonParser) throws IOException, JsonReadException {
            WithChildrenC readMaybeDeleted = DbxEntry.readMaybeDeleted(jsonParser, null);
            if (readMaybeDeleted == null) {
                return null;
            }
            return readMaybeDeleted.entry;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxEntry$c */
    /* loaded from: classes4.dex */
    public static final class C2355c<T> extends JsonReader<T> {

        /* renamed from: c */
        public final JsonReader<T> f16733c;

        /* renamed from: d */
        public final T f16734d;

        public C2355c(JsonReader<T> jsonReader, T t) {
            this.f16733c = jsonReader;
            this.f16734d = t;
        }

        /* renamed from: a */
        public static <T> C2355c<T> m10209a(JsonReader<T> jsonReader, T t) {
            return new C2355c<>(jsonReader, t);
        }

        @Override // com.dropbox.core.json.JsonReader
        public T read(JsonParser jsonParser) throws IOException, JsonReadException {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_STRING) {
                return this.f16733c.read(jsonParser);
            }
            if (!jsonParser.getText().equals("pending")) {
                throw new JsonReadException("got a string, but the value wasn't \"pending\"", jsonParser.getTokenLocation());
            }
            jsonParser.nextToken();
            return this.f16734d;
        }
    }

    static {
        JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
        builder.add("size", 0);
        builder.add(HttpHeaderValues.BYTES, 1);
        builder.add("path", 2);
        builder.add("is_dir", 3);
        builder.add("is_deleted", 4);
        builder.add("rev", 5);
        builder.add("thumb_exists", 6);
        builder.add("icon", 7);
        builder.add("modified", 8);
        builder.add("client_mtime", 9);
        builder.add("hash", 10);
        builder.add(Constants.ELEMNAME_CONTENTS_STRING, 11);
        builder.add("photo_info", 12);
        builder.add("video_info", 13);
        f16730FM = builder.build();
    }

    public /* synthetic */ DbxEntry(String str, String str2, boolean z, C2353a c2353a) {
        this(str, str2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x002f. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C> WithChildrenC<C> _read(JsonParser jsonParser, Collector<DbxEntry, ? extends C> collector, boolean z) throws IOException, JsonReadException {
        DbxEntry file;
        JsonLocation jsonLocation;
        Object obj;
        String str;
        String str2;
        File.VideoInfo videoInfo;
        File.PhotoInfo photoInfo;
        long j;
        Collector<DbxEntry, ? extends C> collector2 = collector;
        JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
        String str3 = null;
        Boolean bool = null;
        Boolean bool2 = null;
        Boolean bool3 = null;
        File.VideoInfo videoInfo2 = null;
        String str4 = null;
        String str5 = null;
        File.PhotoInfo photoInfo2 = null;
        Object obj2 = null;
        Date date = null;
        Date date2 = null;
        String str6 = null;
        String str7 = null;
        long j2 = -1;
        while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            JsonReader.nextToken(jsonParser);
            int i = f16730FM.get(currentName);
            switch (i) {
                case -1:
                    str2 = str4;
                    long j3 = j2;
                    videoInfo = videoInfo2;
                    photoInfo = photoInfo2;
                    j = j3;
                    JsonReader.skipValue(jsonParser);
                    str7 = str7;
                    photoInfo2 = photoInfo;
                    long j4 = j;
                    str4 = str2;
                    videoInfo2 = videoInfo;
                    j2 = j4;
                    collector2 = collector;
                case 0:
                    str2 = str4;
                    long j5 = j2;
                    videoInfo = videoInfo2;
                    j = j5;
                    photoInfo = photoInfo2;
                    str7 = JsonReader.StringReader.readField(jsonParser, currentName, str7);
                    photoInfo2 = photoInfo;
                    long j42 = j;
                    str4 = str2;
                    videoInfo2 = videoInfo;
                    j2 = j42;
                    collector2 = collector;
                case 1:
                    str2 = str4;
                    long j6 = j2;
                    videoInfo = videoInfo2;
                    j = JsonReader.readUnsignedLongField(jsonParser, currentName, j6);
                    long j422 = j;
                    str4 = str2;
                    videoInfo2 = videoInfo;
                    j2 = j422;
                    collector2 = collector;
                case 2:
                    str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                    collector2 = collector;
                case 3:
                    str = str4;
                    bool2 = JsonReader.BooleanReader.readField(jsonParser, currentName, bool2);
                    str4 = str;
                    collector2 = collector;
                case 4:
                    str = str4;
                    bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                    str4 = str;
                    collector2 = collector;
                case 5:
                    str = str4;
                    str6 = JsonReader.StringReader.readField(jsonParser, currentName, str6);
                    str4 = str;
                    collector2 = collector;
                case 6:
                    str = str4;
                    bool3 = JsonReader.BooleanReader.readField(jsonParser, currentName, bool3);
                    str4 = str;
                    collector2 = collector;
                case 7:
                    str = str4;
                    str5 = JsonReader.StringReader.readField(jsonParser, currentName, str5);
                    str4 = str;
                    collector2 = collector;
                case 8:
                    str = str4;
                    date = JsonDateReader.Dropbox.readField(jsonParser, currentName, date);
                    str4 = str;
                    collector2 = collector;
                case 9:
                    str = str4;
                    date2 = JsonDateReader.Dropbox.readField(jsonParser, currentName, date2);
                    str4 = str;
                    collector2 = collector;
                case 10:
                    str = str4;
                    if (collector2 == null) {
                        throw new JsonReadException("not expecting \"hash\" field, since we didn't ask for children", jsonParser.getCurrentLocation());
                    }
                    str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    str4 = str;
                    collector2 = collector;
                case 11:
                    str = str4;
                    if (collector2 == null) {
                        throw new JsonReadException("not expecting \"contents\" field, since we didn't ask for children", jsonParser.getCurrentLocation());
                    }
                    obj2 = JsonArrayReader.m10073mk(Reader, collector2).readField(jsonParser, currentName, obj2);
                    str4 = str;
                    collector2 = collector;
                case 12:
                    str = str4;
                    photoInfo2 = (File.PhotoInfo) C2355c.m10209a(File.PhotoInfo.Reader, File.PhotoInfo.PENDING).readField(jsonParser, currentName, photoInfo2);
                    str4 = str;
                    collector2 = collector;
                case 13:
                    try {
                        str = str4;
                        videoInfo2 = (File.VideoInfo) C2355c.m10209a(File.VideoInfo.Reader, File.VideoInfo.PENDING).readField(jsonParser, currentName, videoInfo2);
                        str4 = str;
                        collector2 = collector;
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                default:
                    throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
            }
        }
        String str8 = str4;
        long j7 = j2;
        File.VideoInfo videoInfo3 = videoInfo2;
        File.PhotoInfo photoInfo3 = photoInfo2;
        String str9 = str7;
        JsonReader.expectObjectEnd(jsonParser);
        if (str8 == null) {
            throw new JsonReadException("missing field \"path\"", expectObjectStart);
        }
        if (str5 == null) {
            throw new JsonReadException("missing field \"icon\"", expectObjectStart);
        }
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        if (bool2 == null) {
            bool2 = Boolean.FALSE;
        }
        if (bool3 == null) {
            bool3 = Boolean.FALSE;
        }
        if (bool2.booleanValue() && (obj2 != null || str3 != null)) {
            if (str3 == null) {
                throw new JsonReadException("missing \"hash\", when we asked for children", expectObjectStart);
            }
            if (obj2 == null) {
                throw new JsonReadException("missing \"contents\", when we asked for children", expectObjectStart);
            }
        }
        if (bool2.booleanValue()) {
            file = new Folder(str8, str5, bool3.booleanValue());
            jsonLocation = expectObjectStart;
            obj = obj2;
        } else {
            if (str9 == null) {
                throw new JsonReadException("missing \"size\" for a file entry", expectObjectStart);
            }
            if (j7 == -1) {
                throw new JsonReadException("missing \"bytes\" for a file entry", expectObjectStart);
            }
            if (date == null) {
                throw new JsonReadException("missing \"modified\" for a file entry", expectObjectStart);
            }
            if (date2 == null) {
                throw new JsonReadException("missing \"client_mtime\" for a file entry", expectObjectStart);
            }
            if (str6 == null) {
                throw new JsonReadException("missing \"rev\" for a file entry", expectObjectStart);
            }
            jsonLocation = expectObjectStart;
            obj = obj2;
            file = new File(str8, str5, bool3.booleanValue(), j7, str9, date, date2, str6, photoInfo3, videoInfo3);
        }
        if (!bool.booleanValue()) {
            return new WithChildrenC<>(file, str3, obj);
        }
        if (z) {
            return null;
        }
        throw new JsonReadException("not expecting \"is_deleted\" entry here", jsonLocation);
    }

    public static <C> WithChildrenC<C> read(JsonParser jsonParser, Collector<DbxEntry, ? extends C> collector) throws IOException, JsonReadException {
        return _read(jsonParser, collector, false);
    }

    public static <C> WithChildrenC<C> readMaybeDeleted(JsonParser jsonParser, Collector<DbxEntry, ? extends C> collector) throws IOException, JsonReadException {
        return _read(jsonParser, collector, true);
    }

    public abstract File asFile();

    public abstract Folder asFolder();

    @Override // com.dropbox.core.util.Dumpable
    public void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.m10131v(this.path);
        dumpWriter.mo10123f("iconName").m10131v(this.iconName);
        dumpWriter.mo10123f("mightHaveThumbnail").m10133v(this.mightHaveThumbnail);
    }

    public abstract boolean isFile();

    public abstract boolean isFolder();

    public boolean partialEquals(DbxEntry dbxEntry) {
        return this.name.equals(dbxEntry.name) && this.path.equals(dbxEntry.path) && this.iconName.equals(dbxEntry.iconName) && this.mightHaveThumbnail == dbxEntry.mightHaveThumbnail;
    }

    public int partialHashCode() {
        return (((((((this.name.hashCode() * 31) + this.path.hashCode()) * 31) + this.iconName.hashCode()) * 31) + this.path.hashCode()) * 31) + (this.mightHaveThumbnail ? 1 : 0);
    }

    private DbxEntry(String str, String str2, boolean z) {
        this.name = DbxPathV1.getName(str);
        this.path = str;
        this.iconName = str2;
        this.mightHaveThumbnail = z;
    }
}
