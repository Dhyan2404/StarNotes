package androidx.sqlite.util;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.RestrictTo;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import onyx.org.apache.commons.io.output.LockableFileWriter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u001b"}, m61528d2 = {"Landroidx/sqlite/util/ProcessLock;", "", "", "processLock", "", DevicePushAction.LOCK_DEVICE, DevicePushAction.UNLOCK_DEVICE, "a", Constants.HASIDCALL_INDEX_SIG, "Ljava/io/File;", "b", "Ljava/io/File;", "lockFile", "Ljava/util/concurrent/locks/Lock;", "c", "Ljava/util/concurrent/locks/Lock;", "threadLock", "Ljava/nio/channels/FileChannel;", "d", "Ljava/nio/channels/FileChannel;", "lockChannel", "", "name", "lockDir", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/io/File;Z)V", "Companion", "sqlite-framework_release"}, m61529k = 1, m61530mv = {1, 7, 1})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class ProcessLock {

    /* renamed from: e */
    @NotNull
    public static final String f10337e = "SupportSQLiteLock";

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean processLock;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final File lockFile;

    /* renamed from: c, reason: from kotlin metadata */
    @SuppressLint({"SyntheticAccessor"})
    @NotNull
    public final Lock threadLock;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public FileChannel lockChannel;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: f */
    @NotNull
    public static final Map<String, Lock> f10338f = new HashMap();

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, m61528d2 = {"Landroidx/sqlite/util/ProcessLock$Companion;", "", "", "key", "Ljava/util/concurrent/locks/Lock;", "a", "TAG", Constants.STRING_SIG, "", "threadLocksMap", "Ljava/util/Map;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sqlite-framework_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final Lock m6429a(String key) {
            Lock lock;
            synchronized (ProcessLock.f10338f) {
                Map map = ProcessLock.f10338f;
                Object obj = map.get(key);
                if (obj == null) {
                    obj = new ReentrantLock();
                    map.put(key, obj);
                }
                lock = (Lock) obj;
            }
            return lock;
        }

        public Companion() {
        }
    }

    public ProcessLock(@NotNull String name, @NotNull File lockDir, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(lockDir, "lockDir");
        this.processLock = z;
        File file = new File(lockDir, name + LockableFileWriter.f104508g);
        this.lockFile = file;
        Companion companion = INSTANCE;
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "lockFile.absolutePath");
        this.threadLock = companion.m6429a(absolutePath);
    }

    public static /* synthetic */ void lock$default(ProcessLock processLock, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = processLock.processLock;
        }
        processLock.lock(z);
    }

    public final void lock(boolean processLock) {
        this.threadLock.lock();
        if (processLock) {
            try {
                File parentFile = this.lockFile.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(this.lockFile).getChannel();
                channel.lock();
                this.lockChannel = channel;
            } catch (IOException e) {
                this.lockChannel = null;
                Log.w(f10337e, "Unable to grab file lock.", e);
            }
        }
    }

    public final void unlock() {
        try {
            FileChannel fileChannel = this.lockChannel;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.threadLock.unlock();
    }
}
