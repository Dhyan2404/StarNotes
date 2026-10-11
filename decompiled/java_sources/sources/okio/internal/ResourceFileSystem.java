package okio.internal;

import com.google.common.reflect.ClassPath;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u0000 $2\u00020\u0001:\u0001\u001dB#\b\u0000\u0012\u0006\u0010'\u001a\u00020 \u0012\u0006\u0010.\u001a\u00020\f\u0012\b\b\u0002\u0010*\u001a\u00020\u0001¢\u0006\u0004\b/\u00100J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016J \u0010\u000f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016J\u0018\u0010\u0016\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016J\u0018\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H\u0016J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0002H\u0016J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\f\u0010\u001f\u001a\u00020\u001e*\u00020\u0002H\u0002J\u001e\u0010\"\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020!0\u0006*\u00020 H\u0002J\u001a\u0010$\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0002\u0018\u00010!*\u00020#H\u0002J\u001a\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0002\u0018\u00010!*\u00020#H\u0002R\u0014\u0010'\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010&R\u0014\u0010*\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R-\u0010-\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020!0\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010+\u001a\u0004\b(\u0010,¨\u00061"}, m61528d2 = {"Lokio/internal/ResourceFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "path", "canonicalize", CouchFieldKey.KEY_DIR, "", "list", "listOrNull", "file", "Lokio/FileHandle;", "openReadOnly", "", "mustCreate", "mustExist", "openReadWrite", "Lokio/FileMetadata;", "metadataOrNull", "Lokio/Source;", "source", "Lokio/Sink;", "sink", "appendingSink", "", "createDirectory", "target", "atomicMove", "delete", "createSymlink", "a", "", C6997f.f39671c, "Ljava/lang/ClassLoader;", "Lkotlin/Pair;", "c", "Ljava/net/URL;", "d", "e", "Ljava/lang/ClassLoader;", "classLoader", "b", "Lokio/FileSystem;", "systemFileSystem", "Lkotlin/Lazy;", "()Ljava/util/List;", "roots", "indexEagerly", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/ClassLoader;ZLokio/FileSystem;)V", "okio"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n766#2:211\n857#2,2:212\n1549#2:214\n1620#2,3:215\n766#2:218\n857#2,2:219\n1549#2:221\n1620#2,3:222\n1603#2,9:225\n1855#2:234\n1856#2:236\n1612#2:237\n1603#2,9:238\n1855#2:247\n1856#2:249\n1612#2:250\n1#3:235\n1#3:248\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n*L\n74#1:211\n74#1:212,2\n75#1:214\n75#1:215,3\n90#1:218\n90#1:219,2\n91#1:221\n91#1:222,3\n173#1:225,9\n173#1:234\n173#1:236\n173#1:237\n174#1:238,9\n174#1:247\n174#1:249\n174#1:250\n173#1:235\n174#1:248\n*E\n"})
/* loaded from: classes11.dex */
public final class ResourceFileSystem extends FileSystem {

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    @NotNull
    public static final Path f104138e = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ClassLoader classLoader;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final FileSystem systemFileSystem;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy roots;

    /* renamed from: okio.internal.ResourceFileSystem$a, reason: from kotlin metadata */
    /* loaded from: classes11.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: b */
        public final Path m65073b() {
            return ResourceFileSystem.f104138e;
        }

        /* renamed from: c */
        public final boolean m65074c(Path path) {
            boolean endsWith;
            endsWith = StringsKt__StringsJVMKt.endsWith(path.name(), ClassPath.f35080d, true);
            return !endsWith;
        }

        @NotNull
        /* renamed from: d */
        public final Path m65075d(@NotNull Path path, @NotNull Path base) {
            String removePrefix;
            String replace$default;
            Intrinsics.checkNotNullParameter(path, "<this>");
            Intrinsics.checkNotNullParameter(base, "base");
            String path2 = base.toString();
            Path m65073b = m65073b();
            removePrefix = StringsKt__StringsKt.removePrefix(path.toString(), (CharSequence) path2);
            replace$default = StringsKt__StringsJVMKt.replace$default(removePrefix, '\\', '/', false, 4, (Object) null);
            return m65073b.resolve(replace$default);
        }

        public Companion() {
        }
    }

    public /* synthetic */ ResourceFileSystem(ClassLoader classLoader, boolean z, FileSystem fileSystem, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(classLoader, z, (i & 4) != 0 ? FileSystem.SYSTEM : fileSystem);
    }

    /* renamed from: a */
    public final Path m65066a(Path path) {
        return f104138e.resolve(path, true);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    /* renamed from: b */
    public final List<Pair<FileSystem, Path>> m65067b() {
        return (List) this.roots.getValue();
    }

    /* renamed from: c */
    public final List<Pair<FileSystem, Path>> m65068c(ClassLoader classLoader) {
        List<Pair<FileSystem, Path>> plus;
        Enumeration<URL> resources = classLoader.getResources("");
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        ArrayList<URL> list = Collections.list(resources);
        Intrinsics.checkNotNullExpressionValue(list, "list(this)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            Intrinsics.checkNotNull(url);
            Pair<FileSystem, Path> m65069d = m65069d(url);
            if (m65069d != null) {
                arrayList.add(m65069d);
            }
        }
        Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
        Intrinsics.checkNotNullExpressionValue(resources2, "getResources(...)");
        ArrayList<URL> list2 = Collections.list(resources2);
        Intrinsics.checkNotNullExpressionValue(list2, "list(this)");
        ArrayList arrayList2 = new ArrayList();
        for (URL url2 : list2) {
            Intrinsics.checkNotNull(url2);
            Pair<FileSystem, Path> m65070e = m65070e(url2);
            if (m65070e != null) {
                arrayList2.add(m65070e);
            }
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
        return plus;
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return m65066a(path);
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean mustCreate) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    /* renamed from: d */
    public final Pair<FileSystem, Path> m65069d(URL url) {
        if (Intrinsics.areEqual(url.getProtocol(), "file")) {
            return TuplesKt.m61535to(this.systemFileSystem, Path.Companion.get$default(Path.INSTANCE, new File(url.toURI()), false, 1, (Object) null));
        }
        return null;
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean mustExist) {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException(this + " is read-only");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
    
        r0 = kotlin.text.StringsKt__StringsKt.lastIndexOf$default((java.lang.CharSequence) r9, "!", 0, false, 6, (java.lang.Object) null);
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.Pair<okio.FileSystem, okio.Path> m65070e(java.net.URL r9) {
        /*
            r8 = this;
            java.lang.String r9 = r9.toString()
            java.lang.String r0 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r0)
            java.lang.String r0 = "jar:file:"
            r6 = 0
            r1 = 2
            r7 = 0
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r9, r0, r6, r1, r7)
            if (r0 != 0) goto L15
            return r7
        L15:
            java.lang.String r1 = "!"
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            r0 = r9
            int r0 = kotlin.text.StringsKt.lastIndexOf$default(r0, r1, r2, r3, r4, r5)
            r1 = -1
            if (r0 != r1) goto L24
            return r7
        L24:
            okio.Path$Companion r1 = okio.Path.INSTANCE
            java.io.File r2 = new java.io.File
            r3 = 4
            java.lang.String r9 = r9.substring(r3, r0)
            java.lang.String r0 = "this as java.lang.String…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r0)
            java.net.URI r9 = java.net.URI.create(r9)
            r2.<init>(r9)
            r9 = 1
            okio.Path r9 = okio.Path.Companion.get$default(r1, r2, r6, r9, r7)
            okio.FileSystem r8 = r8.systemFileSystem
            okio.internal.ResourceFileSystem$toJarRoot$zip$1 r0 = new kotlin.jvm.functions.Function1<okio.internal.ZipEntry, java.lang.Boolean>() { // from class: okio.internal.ResourceFileSystem$toJarRoot$zip$1
                static {
                    /*
                        okio.internal.ResourceFileSystem$toJarRoot$zip$1 r0 = new okio.internal.ResourceFileSystem$toJarRoot$zip$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:okio.internal.ResourceFileSystem$toJarRoot$zip$1) okio.internal.ResourceFileSystem$toJarRoot$zip$1.INSTANCE okio.internal.ResourceFileSystem$toJarRoot$zip$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$toJarRoot$zip$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$toJarRoot$zip$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ java.lang.Boolean invoke(okio.internal.ZipEntry r1) {
                    /*
                        r0 = this;
                        okio.internal.ZipEntry r1 = (okio.internal.ZipEntry) r1
                        java.lang.Boolean r0 = r0.invoke(r1)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$toJarRoot$zip$1.invoke(java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function1
                @org.jetbrains.annotations.NotNull
                public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull okio.internal.ZipEntry r1) {
                    /*
                        r0 = this;
                        java.lang.String r0 = "entry"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                        okio.internal.ResourceFileSystem$a r0 = okio.internal.ResourceFileSystem.access$getCompanion$p()
                        okio.Path r1 = r1.getCanonicalPath()
                        boolean r0 = okio.internal.ResourceFileSystem.Companion.m65072a(r0, r1)
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem$toJarRoot$zip$1.invoke(okio.internal.ZipEntry):java.lang.Boolean");
                }
            }
            okio.ZipFileSystem r8 = okio.internal.ZipFilesKt.openZip(r9, r8, r0)
            okio.Path r9 = okio.internal.ResourceFileSystem.f104138e
            kotlin.Pair r8 = kotlin.TuplesKt.m61535to(r8, r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ResourceFileSystem.m65070e(java.net.URL):kotlin.Pair");
    }

    /* renamed from: f */
    public final String m65071f(Path path) {
        return m65066a(path).relativeTo(f104138e).toString();
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        List<Path> list;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(dir, "dir");
        String m65071f = m65071f(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair<FileSystem, Path> pair : m65067b()) {
            FileSystem component1 = pair.component1();
            Path component2 = pair.component2();
            try {
                List<Path> list2 = component1.list(component2.resolve(m65071f));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list2) {
                    if (INSTANCE.m65074c((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(INSTANCE.m65075d((Path) it2.next(), component2));
                }
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
            return list;
        }
        throw new FileNotFoundException("file not found: " + dir);
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        List<Path> list;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(dir, "dir");
        String m65071f = m65071f(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Pair<FileSystem, Path>> it2 = m65067b().iterator();
        boolean z = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it2.hasNext()) {
                break;
            }
            Pair<FileSystem, Path> next = it2.next();
            FileSystem component1 = next.component1();
            Path component2 = next.component2();
            List<Path> listOrNull = component1.listOrNull(component2.resolve(m65071f));
            if (listOrNull != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listOrNull) {
                    if (INSTANCE.m65074c((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(INSTANCE.m65075d((Path) it3.next(), component2));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, arrayList);
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashSet);
        return list;
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (!INSTANCE.m65074c(path)) {
            return null;
        }
        String m65071f = m65071f(path);
        for (Pair<FileSystem, Path> pair : m65067b()) {
            FileMetadata metadataOrNull = pair.component1().metadataOrNull(pair.component2().resolve(m65071f));
            if (metadataOrNull != null) {
                return metadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!INSTANCE.m65074c(file)) {
            throw new FileNotFoundException("file not found: " + file);
        }
        String m65071f = m65071f(file);
        Iterator<Pair<FileSystem, Path>> it2 = m65067b().iterator();
        while (it2.hasNext()) {
            Pair<FileSystem, Path> next = it2.next();
            try {
                return next.component1().openReadOnly(next.component2().resolve(m65071f));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean mustCreate, boolean mustExist) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean mustCreate) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) {
        Source source;
        Intrinsics.checkNotNullParameter(file, "file");
        if (!INSTANCE.m65074c(file)) {
            throw new FileNotFoundException("file not found: " + file);
        }
        Path path = f104138e;
        InputStream resourceAsStream = this.classLoader.getResourceAsStream(Path.resolve$default(path, file, false, 2, (Object) null).relativeTo(path).toString());
        if (resourceAsStream != null && (source = Okio.source(resourceAsStream)) != null) {
            return source;
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    public ResourceFileSystem(@NotNull ClassLoader classLoader, boolean z, @NotNull FileSystem systemFileSystem) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(systemFileSystem, "systemFileSystem");
        this.classLoader = classLoader;
        this.systemFileSystem = systemFileSystem;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends Pair<? extends FileSystem, ? extends Path>>>() { // from class: okio.internal.ResourceFileSystem$roots$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends Pair<? extends FileSystem, ? extends Path>> invoke() {
                ClassLoader classLoader2;
                List<? extends Pair<? extends FileSystem, ? extends Path>> m65068c;
                ResourceFileSystem resourceFileSystem = ResourceFileSystem.this;
                classLoader2 = resourceFileSystem.classLoader;
                m65068c = resourceFileSystem.m65068c(classLoader2);
                return m65068c;
            }
        });
        this.roots = lazy;
        if (z) {
            m65067b().size();
        }
    }
}
