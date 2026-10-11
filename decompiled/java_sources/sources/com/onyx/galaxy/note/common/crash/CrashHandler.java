package com.onyx.galaxy.note.common.crash;

import android.content.Context;
import android.os.Process;
import com.blankj.utilcode.util.FileIOUtils;
import com.blankj.utilcode.util.ProcessUtils;
import com.blankj.utilcode.util.ThrowableUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.common.crash.CrashHandler;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.lang.Thread;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b$\u0010%J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0016R\u001c\u0010\u001b\u001a\n \u0019*\u0004\u0018\u00010\r0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u000fR\u001c\u0010\u001f\u001a\n \u0019*\u0004\u0018\u00010\u001c0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001b\u0010#\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u0011\u0010\"¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/crash/CrashHandler;", "", "Landroid/content/Context;", "appContext", "", "init", "Ljava/io/File;", "getCrashDir", "Ljava/lang/Thread;", "t", "", "e", "d", "", "a", Constants.STRING_SIG, "CRASH_DIR", "b", "CRASH_BEGINNING_STR", "c", "CRASH_FILE_PREFIX", "Ljava/text/SimpleDateFormat;", "Ljava/text/SimpleDateFormat;", "crashDateFormat", "crashFileDateFormat", "kotlin.jvm.PlatformType", C6997f.f39671c, "LINE_SEP", "Ljava/lang/Thread$UncaughtExceptionHandler;", C6998g.f39679a, "Ljava/lang/Thread$UncaughtExceptionHandler;", "DEFAULT_UNCAUGHT_EXCEPTION_HANDLER", C6999h.f39688c, "Lkotlin/Lazy;", "()Ljava/io/File;", "crashDirFile", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCrashHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashHandler.kt\ncom/onyx/galaxy/note/common/crash/CrashHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n766#2:76\n857#2,2:77\n1864#2,3:79\n*S KotlinDebug\n*F\n+ 1 CrashHandler.kt\ncom/onyx/galaxy/note/common/crash/CrashHandler\n*L\n64#1:76\n64#1:77,2\n64#1:79,3\n*E\n"})
/* loaded from: classes9.dex */
public final class CrashHandler {

    @NotNull
    public static final CrashHandler INSTANCE = new CrashHandler();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String CRASH_DIR = "crash";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String CRASH_BEGINNING_STR = "--------- beginning of crash";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String CRASH_FILE_PREFIX = "crash_";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat crashDateFormat;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final SimpleDateFormat crashFileDateFormat;

    /* renamed from: f, reason: from kotlin metadata */
    public static final String LINE_SEP;

    /* renamed from: g, reason: from kotlin metadata */
    public static final Thread.UncaughtExceptionHandler DEFAULT_UNCAUGHT_EXCEPTION_HANDLER;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final Lazy crashDirFile;

    static {
        Lazy lazy;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        crashDateFormat = dateTimeUtil.getDATE_FORMAT_MMDD_HHMMSS_SSS();
        crashFileDateFormat = dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HHMMSS_3();
        LINE_SEP = System.getProperty("line.separator");
        DEFAULT_UNCAUGHT_EXCEPTION_HANDLER = Thread.getDefaultUncaughtExceptionHandler();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<File>() { // from class: com.onyx.galaxy.note.common.crash.CrashHandler$crashDirFile$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final File invoke() {
                File externalFilesDir = ResManager.INSTANCE.getAppContext().getExternalFilesDir("crash");
                Intrinsics.checkNotNull(externalFilesDir);
                return externalFilesDir;
            }
        });
        crashDirFile = lazy;
    }

    /* renamed from: c */
    public static final void m44989c(Thread thread, Throwable th) {
        CrashHandler crashHandler = INSTANCE;
        Intrinsics.checkNotNull(thread);
        Intrinsics.checkNotNull(th);
        crashHandler.m44991d(thread, th);
    }

    /* renamed from: b */
    public final File m44990b() {
        return (File) crashDirFile.getValue();
    }

    /* renamed from: d */
    public final void m44991d(Thread t, Throwable e) {
        List split$default;
        int lastIndex;
        boolean isBlank;
        String name = t.getName();
        String currentProcessName = ProcessUtils.getCurrentProcessName();
        int myPid = Process.myPid();
        String str = crashDateFormat.format(new Date()) + " E/AndroidRuntime( " + myPid + "): ";
        String str2 = str + "Process: " + currentProcessName + ", PID: " + myPid;
        File file = new File(m44990b(), CRASH_FILE_PREFIX + crashFileDateFormat.format(new Date()) + LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION);
        StringBuilder sb = new StringBuilder();
        String fullStackTrace = ThrowableUtils.getFullStackTrace(e);
        Intrinsics.checkNotNullExpressionValue(fullStackTrace, "getFullStackTrace(...)");
        String LINE_SEP2 = LINE_SEP;
        Intrinsics.checkNotNullExpressionValue(LINE_SEP2, "LINE_SEP");
        split$default = StringsKt__StringsKt.split$default((CharSequence) fullStackTrace, new String[]{LINE_SEP2}, false, 0, 6, (Object) null);
        sb.append(CRASH_BEGINNING_STR);
        sb.append(LINE_SEP2);
        sb.append(str + "FATAL EXCEPTION: " + name);
        sb.append(LINE_SEP2);
        sb.append(str2);
        sb.append(LINE_SEP2);
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            isBlank = StringsKt__StringsJVMKt.isBlank((String) obj);
            if (true ^ isBlank) {
                arrayList.add(obj);
            }
        }
        int i = 0;
        for (Object obj2 : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            sb.append(str + ((String) obj2));
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(split$default);
            if (i != lastIndex) {
                sb.append(LINE_SEP);
            }
            i = i2;
        }
        FileIOUtils.writeFileFromString(file.getAbsolutePath(), sb.toString(), true);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = DEFAULT_UNCAUGHT_EXCEPTION_HANDLER;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(t, e);
        }
    }

    @NotNull
    public final File getCrashDir() {
        File m44990b = m44990b();
        Intrinsics.checkNotNullExpressionValue(m44990b, "<get-crashDirFile>(...)");
        return m44990b;
    }

    public final void init(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.sunia.HTREnginev2.cge
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                CrashHandler.m44989c(thread, th);
            }
        });
    }
}
