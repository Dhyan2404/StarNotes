package okio.internal;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sunia.HTREnginev2.arf;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a.\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0000\u001a\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00050\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\nH\u0002\u001a\f\u0010\u000f\u001a\u00020\u0005*\u00020\u000eH\u0000\u001a\f\u0010\u0011\u001a\u00020\u0010*\u00020\u000eH\u0002\u001a\u0014\u0010\u0013\u001a\u00020\u0010*\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0010H\u0002\u001a.\u0010\u001a\u001a\u00020\u0018*\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016H\u0002\u001a\f\u0010\u001b\u001a\u00020\u0018*\u00020\u000eH\u0000\u001a\u0014\u0010\u001e\u001a\u00020\u001c*\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0000\u001a\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c*\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u001a!\u0010\"\u001a\u0004\u0018\u00010\u00172\u0006\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\"\u0010#\"\u0014\u0010%\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010$\"\u0014\u0010&\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010$\"\u0014\u0010(\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b'\u0010$\"\u0014\u0010)\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010$\"\u0014\u0010*\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010$\"\u0014\u0010+\u001a\u00020\u00148\u0000X\u0080T¢\u0006\u0006\n\u0004\b+\u0010$\"\u0014\u0010,\u001a\u00020\u00148\u0000X\u0080T¢\u0006\u0006\n\u0004\b,\u0010$\"\u0014\u0010-\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010$\"\u0014\u0010.\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010$\"\u0014\u00101\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u00100\"\u0014\u00103\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u0010$\"\u0014\u00105\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u0010$\"\u0018\u00108\u001a\u000206*\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u00107¨\u00069"}, m61528d2 = {"Lokio/Path;", "zipPath", "Lokio/FileSystem;", "fileSystem", "Lkotlin/Function1;", "Lokio/internal/ZipEntry;", "", "predicate", "Lokio/ZipFileSystem;", "openZip", "", "entries", "", "a", "Lokio/BufferedSource;", "readEntry", "Lcom/sunia/HTREnginev2/arf;", "d", "regularRecord", C6998g.f39679a, "", "extraSize", "Lkotlin/Function2;", "", "", BreakpointSQLiteHelper.f39283i, "e", "skipLocalHeader", "Lokio/FileMetadata;", "basicMetadata", "readLocalHeader", C6997f.f39671c, "date", "time", "b", "(II)Ljava/lang/Long;", "I", "LOCAL_FILE_HEADER_SIGNATURE", "CENTRAL_FILE_HEADER_SIGNATURE", "c", "END_OF_CENTRAL_DIRECTORY_SIGNATURE", "ZIP64_LOCATOR_SIGNATURE", "ZIP64_EOCD_RECORD_SIGNATURE", "COMPRESSION_METHOD_DEFLATED", "COMPRESSION_METHOD_STORED", "BIT_FLAG_ENCRYPTED", "BIT_FLAG_UNSUPPORTED_MASK", C6999h.f39688c, "J", "MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE", "i", "HEADER_ID_ZIP64_EXTENDED_INFO", "j", "HEADER_ID_EXTENDED_TIMESTAMP", "", "(I)Ljava/lang/String;", "hex", "okio"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1045#2:460\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n156#1:460\n*E\n"})
/* loaded from: classes11.dex */
public final class ZipFilesKt {
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;

    /* renamed from: a */
    public static final int f104152a = 67324752;

    /* renamed from: b */
    public static final int f104153b = 33639248;

    /* renamed from: c */
    public static final int f104154c = 101010256;

    /* renamed from: d */
    public static final int f104155d = 117853008;

    /* renamed from: e */
    public static final int f104156e = 101075792;

    /* renamed from: f */
    public static final int f104157f = 1;

    /* renamed from: g */
    public static final int f104158g = 1;

    /* renamed from: h */
    public static final long f104159h = 4294967295L;

    /* renamed from: i */
    public static final int f104160i = 1;

    /* renamed from: j */
    public static final int f104161j = 21589;

    /* renamed from: a */
    public static final Map<Path, ZipEntry> m65076a(List<ZipEntry> list) {
        Map<Path, ZipEntry> mutableMapOf;
        List<ZipEntry> sortedWith;
        Path path = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null)));
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((ZipEntry) t).getCanonicalPath(), ((ZipEntry) t2).getCanonicalPath());
                return compareValues;
            }
        });
        for (ZipEntry zipEntry : sortedWith) {
            if (mutableMapOf.put(zipEntry.getCanonicalPath(), zipEntry) == null) {
                while (true) {
                    Path parent = zipEntry.getCanonicalPath().parent();
                    if (parent != null) {
                        ZipEntry zipEntry2 = mutableMapOf.get(parent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(parent, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                        mutableMapOf.put(parent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return mutableMapOf;
    }

    /* renamed from: b */
    public static final Long m65077b(int i, int i2) {
        if (i2 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i >> 9) & 127) + 1980, ((i >> 5) & 15) - 1, i & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (i2 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    /* renamed from: c */
    public static final String m65078c(int i) {
        int checkRadix;
        StringBuilder sb = new StringBuilder();
        sb.append("0x");
        checkRadix = CharsKt__CharJVMKt.checkRadix(16);
        String num = Integer.toString(i, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        sb.append(num);
        return sb.toString();
    }

    /* renamed from: d */
    public static final arf m65079d(BufferedSource bufferedSource) throws IOException {
        int readShortLe = bufferedSource.readShortLe() & 65535;
        int readShortLe2 = bufferedSource.readShortLe() & 65535;
        long readShortLe3 = bufferedSource.readShortLe() & 65535;
        if (readShortLe3 != (bufferedSource.readShortLe() & 65535) || readShortLe != 0 || readShortLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(4L);
        return new arf(readShortLe3, 4294967295L & bufferedSource.readIntLe(), bufferedSource.readShortLe() & 65535);
    }

    /* renamed from: e */
    public static final void m65080e(BufferedSource bufferedSource, int i, Function2<? super Integer, ? super Long, Unit> function2) {
        long j = i;
        while (j != 0) {
            if (j < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int readShortLe = bufferedSource.readShortLe() & 65535;
            long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long j2 = j - 4;
            if (j2 < readShortLe2) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            bufferedSource.require(readShortLe2);
            long size = bufferedSource.getBuffer().size();
            function2.invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
            long size2 = (bufferedSource.getBuffer().size() + readShortLe2) - size;
            if (size2 < 0) {
                throw new IOException("unsupported zip: too many bytes processed for " + readShortLe);
            }
            if (size2 > 0) {
                bufferedSource.getBuffer().skip(size2);
            }
            j = j2 - readShortLe2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static final FileMetadata m65081f(final BufferedSource bufferedSource, FileMetadata fileMetadata) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = fileMetadata != null ? fileMetadata.getLastModifiedAtMillis() : 0;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        int readIntLe = bufferedSource.readIntLe();
        if (readIntLe != 67324752) {
            throw new IOException("bad zip: expected " + m65078c(f104152a) + " but was " + m65078c(readIntLe));
        }
        bufferedSource.skip(2L);
        int readShortLe = bufferedSource.readShortLe() & 65535;
        if ((readShortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + m65078c(readShortLe));
        }
        bufferedSource.skip(18L);
        long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int readShortLe3 = bufferedSource.readShortLe() & 65535;
        bufferedSource.skip(readShortLe2);
        if (fileMetadata == null) {
            bufferedSource.skip(readShortLe3);
            return null;
        }
        m65080e(bufferedSource, readShortLe3, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt$readOrSkipLocalHeader$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) {
                invoke(num.intValue(), l.longValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r0v11, types: [T, java.lang.Long] */
            /* JADX WARN: Type inference failed for: r10v10, types: [T, java.lang.Long] */
            /* JADX WARN: Type inference failed for: r9v5, types: [T, java.lang.Long] */
            public final void invoke(int i, long j) {
                if (i == 21589) {
                    if (j >= 1) {
                        int readByte = BufferedSource.this.readByte() & 255;
                        boolean z = (readByte & 1) == 1;
                        boolean z2 = (readByte & 2) == 2;
                        boolean z3 = (readByte & 4) == 4;
                        BufferedSource bufferedSource2 = BufferedSource.this;
                        long j2 = z ? 5L : 1L;
                        if (z2) {
                            j2 += 4;
                        }
                        if (z3) {
                            j2 += 4;
                        }
                        if (j < j2) {
                            throw new IOException("bad zip: extended timestamp extra too short");
                        }
                        if (z) {
                            objectRef.element = Long.valueOf(bufferedSource2.readIntLe() * 1000);
                        }
                        if (z2) {
                            objectRef2.element = Long.valueOf(BufferedSource.this.readIntLe() * 1000);
                        }
                        if (z3) {
                            objectRef3.element = Long.valueOf(BufferedSource.this.readIntLe() * 1000);
                            return;
                        }
                        return;
                    }
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
            }
        });
        return new FileMetadata(fileMetadata.getIsRegularFile(), fileMetadata.getIsDirectory(), null, fileMetadata.getSize(), (Long) objectRef3.element, (Long) objectRef.element, (Long) objectRef2.element, null, 128, null);
    }

    /* renamed from: g */
    public static final arf m65082g(BufferedSource bufferedSource, arf arfVar) throws IOException {
        bufferedSource.skip(12L);
        int readIntLe = bufferedSource.readIntLe();
        int readIntLe2 = bufferedSource.readIntLe();
        long readLongLe = bufferedSource.readLongLe();
        if (readLongLe != bufferedSource.readLongLe() || readIntLe != 0 || readIntLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(8L);
        return new arf(readLongLe, bufferedSource.readLongLe(), arfVar.m53075b());
    }

    @NotNull
    public static final ZipFileSystem openZip(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Function1<? super ZipEntry, Boolean> predicate) throws IOException {
        BufferedSource buffer;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FileHandle openReadOnly = fileSystem.openReadOnly(zipPath);
        try {
            long size = openReadOnly.size() - 22;
            if (size < 0) {
                throw new IOException("not a zip: size=" + openReadOnly.size());
            }
            long max = Math.max(size - 65536, 0L);
            do {
                BufferedSource buffer2 = Okio.buffer(openReadOnly.source(size));
                try {
                    if (buffer2.readIntLe() == 101010256) {
                        arf m65079d = m65079d(buffer2);
                        String readUtf8 = buffer2.readUtf8(m65079d.m53075b());
                        buffer2.close();
                        long j = size - 20;
                        if (j > 0) {
                            buffer = Okio.buffer(openReadOnly.source(j));
                            try {
                                if (buffer.readIntLe() == 117853008) {
                                    int readIntLe = buffer.readIntLe();
                                    long readLongLe = buffer.readLongLe();
                                    if (buffer.readIntLe() != 1 || readIntLe != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    buffer = Okio.buffer(openReadOnly.source(readLongLe));
                                    try {
                                        int readIntLe2 = buffer.readIntLe();
                                        if (readIntLe2 != 101075792) {
                                            throw new IOException("bad zip: expected " + m65078c(f104156e) + " but was " + m65078c(readIntLe2));
                                        }
                                        m65079d = m65082g(buffer, m65079d);
                                        Unit unit = Unit.INSTANCE;
                                        CloseableKt.closeFinally(buffer, null);
                                    } finally {
                                    }
                                }
                                Unit unit2 = Unit.INSTANCE;
                                CloseableKt.closeFinally(buffer, null);
                            } finally {
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        buffer = Okio.buffer(openReadOnly.source(m65079d.m53074a()));
                        try {
                            long m53076c = m65079d.m53076c();
                            for (long j2 = 0; j2 < m53076c; j2++) {
                                ZipEntry readEntry = readEntry(buffer);
                                if (readEntry.getAndroidx.constraintlayout.core.motion.utils.TypedValues.CycleType.S_WAVE_OFFSET java.lang.String() >= m65079d.m53074a()) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (predicate.invoke(readEntry).booleanValue()) {
                                    arrayList.add(readEntry);
                                }
                            }
                            Unit unit3 = Unit.INSTANCE;
                            CloseableKt.closeFinally(buffer, null);
                            ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, m65076a(arrayList), readUtf8);
                            CloseableKt.closeFinally(openReadOnly, null);
                            return zipFileSystem;
                        } finally {
                            try {
                                throw th;
                            } finally {
                                CloseableKt.closeFinally(buffer, th);
                            }
                        }
                    }
                    buffer2.close();
                    size--;
                } catch (Throwable th) {
                    buffer2.close();
                    throw th;
                }
            } while (size >= max);
            throw new IOException("not a zip: end of central directory signature not found");
        } finally {
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            function1 = new Function1<ZipEntry, Boolean>() { // from class: okio.internal.ZipFilesKt$openZip$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull ZipEntry it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.TRUE;
                }
            };
        }
        return openZip(path, fileSystem, function1);
    }

    @NotNull
    public static final ZipEntry readEntry(@NotNull final BufferedSource bufferedSource) throws IOException {
        boolean contains$default;
        Ref.LongRef longRef;
        long j;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        int readIntLe = bufferedSource.readIntLe();
        if (readIntLe != 33639248) {
            throw new IOException("bad zip: expected " + m65078c(f104153b) + " but was " + m65078c(readIntLe));
        }
        bufferedSource.skip(4L);
        int readShortLe = bufferedSource.readShortLe() & 65535;
        if ((readShortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + m65078c(readShortLe));
        }
        int readShortLe2 = bufferedSource.readShortLe() & 65535;
        Long m65077b = m65077b(bufferedSource.readShortLe() & 65535, bufferedSource.readShortLe() & 65535);
        long readIntLe2 = bufferedSource.readIntLe() & 4294967295L;
        final Ref.LongRef longRef2 = new Ref.LongRef();
        longRef2.element = bufferedSource.readIntLe() & 4294967295L;
        final Ref.LongRef longRef3 = new Ref.LongRef();
        longRef3.element = bufferedSource.readIntLe() & 4294967295L;
        int readShortLe3 = bufferedSource.readShortLe() & 65535;
        int readShortLe4 = bufferedSource.readShortLe() & 65535;
        int readShortLe5 = bufferedSource.readShortLe() & 65535;
        bufferedSource.skip(8L);
        Ref.LongRef longRef4 = new Ref.LongRef();
        longRef4.element = bufferedSource.readIntLe() & 4294967295L;
        String readUtf8 = bufferedSource.readUtf8(readShortLe3);
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) readUtf8, (char) 0, false, 2, (Object) null);
        if (contains$default) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        if (longRef3.element == 4294967295L) {
            j = 8 + 0;
            longRef = longRef4;
        } else {
            longRef = longRef4;
            j = 0;
        }
        if (longRef2.element == 4294967295L) {
            j += 8;
        }
        final Ref.LongRef longRef5 = longRef;
        if (longRef5.element == 4294967295L) {
            j += 8;
        }
        final long j2 = j;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        m65080e(bufferedSource, readShortLe4, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt$readEntry$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) {
                invoke(num.intValue(), l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i, long j3) {
                if (i == 1) {
                    Ref.BooleanRef booleanRef2 = Ref.BooleanRef.this;
                    if (!booleanRef2.element) {
                        booleanRef2.element = true;
                        if (j3 >= j2) {
                            Ref.LongRef longRef6 = longRef3;
                            long j4 = longRef6.element;
                            if (j4 == 4294967295L) {
                                j4 = bufferedSource.readLongLe();
                            }
                            longRef6.element = j4;
                            Ref.LongRef longRef7 = longRef2;
                            longRef7.element = longRef7.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
                            Ref.LongRef longRef8 = longRef5;
                            longRef8.element = longRef8.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
                            return;
                        }
                        throw new IOException("bad zip: zip64 extra too short");
                    }
                    throw new IOException("bad zip: zip64 extra repeated");
                }
            }
        });
        if (j2 > 0 && !booleanRef.element) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        String readUtf82 = bufferedSource.readUtf8(readShortLe5);
        Path resolve = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null).resolve(readUtf8);
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(readUtf8, "/", false, 2, null);
        return new ZipEntry(resolve, endsWith$default, readUtf82, readIntLe2, longRef2.element, longRef3.element, readShortLe2, m65077b, longRef5.element);
    }

    @NotNull
    public static final FileMetadata readLocalHeader(@NotNull BufferedSource bufferedSource, @NotNull FileMetadata basicMetadata) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(basicMetadata, "basicMetadata");
        FileMetadata m65081f = m65081f(bufferedSource, basicMetadata);
        Intrinsics.checkNotNull(m65081f);
        return m65081f;
    }

    public static final void skipLocalHeader(@NotNull BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        m65081f(bufferedSource, null);
    }
}
