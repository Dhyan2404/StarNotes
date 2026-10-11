package com.onyx.android.sdk.reader.cbox.page;

import android.util.LruCache;
import com.jakewharton.disklrucache.DiskLruCache;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.reader.cbox.proto.ReaderCacheProto;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0002J\u0016\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002J\u0018\u0010\u000f\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0001H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0017\u001a\u00020\u0016H\u0002R \u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001dR\u0014\u0010!\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 ¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager;", "", "", "dirName", "", "init", "close", Constants.CLEAR_ATTRIBUTES, "key", "Lcom/onyx/android/sdk/reader/cbox/proto/ReaderCacheProto$ChapterCacheListProto;", "getCache", "value", "", "addCache", "removeCache", "a", "e", "b", "Ljava/io/OutputStream;", "fos", "object", C6997f.f39671c, "Ljava/io/InputStream;", "inputStream", "d", "Landroid/util/LruCache;", "Landroid/util/LruCache;", "memoryCache", "Lcom/jakewharton/disklrucache/DiskLruCache;", "Lcom/jakewharton/disklrucache/DiskLruCache;", "diskCache", "c", Constants.BOOLEAN_VALUE_SIG, "isClosed", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PagePositionCacheManager {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    public static final int f44704c = 2;

    /* renamed from: d */
    public static final int f44705d = 1048576;

    /* renamed from: e */
    public static final int f44706e = 5;

    /* renamed from: f */
    public static final int f44707f = 10;

    /* renamed from: g */
    @NotNull
    public static final String f44708g = "page_cache";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final LruCache<String, ReaderCacheProto.ChapterCacheListProto> memoryCache = new LruCache<>(10);

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public DiskLruCache diskCache;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/PagePositionCacheManager$Companion;", "", "()V", "CACHE_ROOT_DIR", "", "DEFAULT_DISK_CACHE_SIZE", "", "DISK_CACHE_VERSION", "MEMORY_CACHE_COUNT", "M_UNIT", "getDocumentPageCacheDir", "Ljava/io/File;", "dirName", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final File getDocumentPageCacheDir(@NotNull String dirName) {
            Intrinsics.checkNotNullParameter(dirName, "dirName");
            StringBuilder sb = new StringBuilder();
            sb.append(ResManager.INSTANCE.getAppContext().getExternalFilesDir(null));
            String str = File.separator;
            sb.append(str);
            sb.append(PagePositionCacheManager.f44708g);
            sb.append(str);
            sb.append(dirName);
            return new File(sb.toString());
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final boolean m34594a(String key, ReaderCacheProto.ChapterCacheListProto value) {
        if (m34596c()) {
            return false;
        }
        try {
            DiskLruCache diskLruCache = this.diskCache;
            DiskLruCache.Editor edit = diskLruCache != null ? diskLruCache.edit(key) : null;
            if (edit != null) {
                value.writeTo(edit.newOutputStream(0));
                edit.commit();
                DiskLruCache diskLruCache2 = this.diskCache;
                Intrinsics.checkNotNull(diskLruCache2);
                diskLruCache2.flush();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public final boolean addCache(@NotNull String key, @NotNull ReaderCacheProto.ChapterCacheListProto value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.memoryCache.put(key, value);
        return m34594a(key, value);
    }

    /* renamed from: b */
    public final ReaderCacheProto.ChapterCacheListProto m34595b(String key) {
        if (m34596c()) {
            return null;
        }
        try {
            DiskLruCache diskLruCache = this.diskCache;
            DiskLruCache.Snapshot snapshot = diskLruCache != null ? diskLruCache.get(key) : null;
            if (snapshot != null) {
                return ReaderCacheProto.ChapterCacheListProto.parseFrom(snapshot.getInputStream(0));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /* renamed from: c */
    public final boolean m34596c() {
        DiskLruCache diskLruCache = this.diskCache;
        if (diskLruCache != null) {
            Intrinsics.checkNotNull(diskLruCache);
            if (!diskLruCache.isClosed()) {
                return false;
            }
        }
        return true;
    }

    public final void clear() {
        this.memoryCache.evictAll();
        if (m34596c()) {
            return;
        }
        try {
            DiskLruCache diskLruCache = this.diskCache;
            if (diskLruCache != null) {
                diskLruCache.delete();
            }
            this.diskCache = null;
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public final void close() {
        try {
            this.memoryCache.evictAll();
            DiskLruCache diskLruCache = this.diskCache;
            if (diskLruCache != null) {
                diskLruCache.close();
            }
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
        }
    }

    /* renamed from: d */
    public final Object m34597d(InputStream inputStream) {
        ObjectInputStream objectInputStream;
        Throwable th;
        try {
            objectInputStream = new ObjectInputStream(inputStream);
            try {
                try {
                    Object readObject = objectInputStream.readObject();
                    FileUtils.INSTANCE.closeQuietly(objectInputStream);
                    return readObject;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    FileUtils.INSTANCE.closeQuietly(objectInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                FileUtils.INSTANCE.closeQuietly(objectInputStream);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            objectInputStream = null;
        } catch (Throwable th3) {
            objectInputStream = null;
            th = th3;
            FileUtils.INSTANCE.closeQuietly(objectInputStream);
            throw th;
        }
    }

    /* renamed from: e */
    public final void m34598e(String key) {
        if (m34596c()) {
            return;
        }
        try {
            DiskLruCache diskLruCache = this.diskCache;
            if (diskLruCache != null) {
                diskLruCache.remove(key);
            }
            DiskLruCache diskLruCache2 = this.diskCache;
            if (diskLruCache2 != null) {
                diskLruCache2.flush();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public final boolean m34599f(OutputStream fos, Object object) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        Exception e;
        boolean z;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(fos);
                try {
                    objectOutputStream.writeObject(object);
                    objectOutputStream.flush();
                    FileUtils.INSTANCE.closeQuietly(objectOutputStream);
                    z = true;
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    FileUtils.INSTANCE.closeQuietly(objectOutputStream);
                    z = false;
                    return z;
                }
            } catch (Throwable th2) {
                th = th2;
                FileUtils.INSTANCE.closeQuietly(objectOutputStream);
                throw th;
            }
        } catch (Exception e3) {
            objectOutputStream = null;
            e = e3;
        } catch (Throwable th3) {
            objectOutputStream = null;
            th = th3;
            FileUtils.INSTANCE.closeQuietly(objectOutputStream);
            throw th;
        }
        return z;
    }

    @Nullable
    public final ReaderCacheProto.ChapterCacheListProto getCache(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ReaderCacheProto.ChapterCacheListProto chapterCacheListProto = this.memoryCache.get(key);
        if (chapterCacheListProto == null && (chapterCacheListProto = m34595b(key)) != null) {
            Debug.INSTANCE.m32052i(PagePositionCacheManager.class, "hitDiskCache", new Object[0]);
            this.memoryCache.put(key, chapterCacheListProto);
        }
        return chapterCacheListProto;
    }

    public final void init(@NotNull String dirName) {
        Intrinsics.checkNotNullParameter(dirName, "dirName");
        try {
            File documentPageCacheDir = INSTANCE.getDocumentPageCacheDir(dirName);
            FileUtils.INSTANCE.mkdirs(documentPageCacheDir.getAbsolutePath());
            this.diskCache = DiskLruCache.open(documentPageCacheDir, 2, 1, 5242880L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void removeCache(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.memoryCache.remove(key);
        m34598e(key);
    }
}
