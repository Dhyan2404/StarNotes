package onyx.org.apache.commons.io.file.attribute;

import com.fasterxml.jackson.core.base.ParserBase;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.time.Instant;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* loaded from: classes11.dex */
public final class FileTimes {

    /* renamed from: a */
    public static final long f104246a = -116444736000000000L;
    public static final FileTime EPOCH = FileTime.from(Instant.EPOCH);

    /* renamed from: b */
    public static final long f104247b = TimeUnit.SECONDS.toNanos(1) / 100;

    /* renamed from: c */
    public static final long f104248c = TimeUnit.MILLISECONDS.toNanos(1) / 100;

    public static FileTime fromUnixTime(long j) {
        return FileTime.from(j, TimeUnit.SECONDS);
    }

    public static boolean isUnixTime(long j) {
        return ParserBase.f21225q <= j && j <= 2147483647L;
    }

    public static FileTime minusMillis(FileTime fileTime, long j) {
        return FileTime.from(fileTime.toInstant().minusMillis(j));
    }

    public static FileTime minusNanos(FileTime fileTime, long j) {
        return FileTime.from(fileTime.toInstant().minusNanos(j));
    }

    public static FileTime minusSeconds(FileTime fileTime, long j) {
        return FileTime.from(fileTime.toInstant().minusSeconds(j));
    }

    public static FileTime now() {
        return FileTime.from(Instant.now());
    }

    public static Date ntfsTimeToDate(long j) {
        return new Date(Math.floorDiv(Math.addExact(j, -116444736000000000L), f104248c));
    }

    public static FileTime ntfsTimeToFileTime(long j) {
        long addExact = Math.addExact(j, -116444736000000000L);
        long j2 = f104247b;
        return FileTime.from(Instant.ofEpochSecond(Math.floorDiv(addExact, j2), Math.floorMod(addExact, j2) * 100));
    }

    public static FileTime plusMillis(FileTime fileTime, long j) {
        return FileTime.from(fileTime.toInstant().plusMillis(j));
    }

    public static FileTime plusNanos(FileTime fileTime, long j) {
        return FileTime.from(fileTime.toInstant().plusNanos(j));
    }

    public static FileTime plusSeconds(FileTime fileTime, long j) {
        return FileTime.from(fileTime.toInstant().plusSeconds(j));
    }

    public static void setLastModifiedTime(Path path) throws IOException {
        Files.setLastModifiedTime(path, now());
    }

    public static Date toDate(FileTime fileTime) {
        if (fileTime != null) {
            return new Date(fileTime.toMillis());
        }
        return null;
    }

    public static FileTime toFileTime(Date date) {
        if (date != null) {
            return FileTime.fromMillis(date.getTime());
        }
        return null;
    }

    public static long toNtfsTime(Date date) {
        return Math.subtractExact(date.getTime() * f104248c, -116444736000000000L);
    }

    public static long toUnixTime(FileTime fileTime) {
        if (fileTime != null) {
            return fileTime.to(TimeUnit.SECONDS);
        }
        return 0L;
    }

    public static boolean isUnixTime(FileTime fileTime) {
        return isUnixTime(toUnixTime(fileTime));
    }

    public static long toNtfsTime(FileTime fileTime) {
        return Math.subtractExact((fileTime.toInstant().getEpochSecond() * f104247b) + (r4.getNano() / 100), -116444736000000000L);
    }

    public static long toNtfsTime(long j) {
        return Math.subtractExact(j * f104248c, -116444736000000000L);
    }
}
