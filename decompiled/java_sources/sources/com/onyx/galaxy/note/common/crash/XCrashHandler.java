package com.onyx.galaxy.note.common.crash;

import android.content.Context;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import xcrash.XCrash;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R\u0014\u0010\t\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/crash/XCrashHandler;", "", "Landroid/content/Context;", "appContext", "", "init", "Ljava/io/File;", "getXCrashDirFile", "", "DELAY_INIT_XCRASH", "J", "", "a", Constants.STRING_SIG, "XCRASH_DIR_NAME", "", "b", "I", "KEEP_MAX_LOG_FILE", "", "c", Constants.HASIDCALL_INDEX_SIG, "initialized", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class XCrashHandler {
    public static final long DELAY_INIT_XCRASH = 3000;

    @NotNull
    public static final XCrashHandler INSTANCE = new XCrashHandler();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String XCRASH_DIR_NAME = "xcrash";

    /* renamed from: b, reason: from kotlin metadata */
    public static final int KEEP_MAX_LOG_FILE = 50;

    /* renamed from: c, reason: from kotlin metadata */
    public static boolean initialized;

    @NotNull
    public final File getXCrashDirFile() {
        File externalFilesDir = ResManager.INSTANCE.getAppContext().getExternalFilesDir("xcrash");
        Intrinsics.checkNotNull(externalFilesDir);
        return externalFilesDir;
    }

    public final void init(@NotNull Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        if (initialized) {
            return;
        }
        XCrash.InitParameters initParameters = new XCrash.InitParameters();
        initParameters.setJavaLogCountMax(50);
        initParameters.setNativeLogCountMax(50);
        initParameters.setAnrLogCountMax(50);
        initParameters.setPlaceholderSizeKb(0);
        initParameters.setAnrCheckProcessState(false);
        initParameters.setLogDir(String.valueOf(appContext.getExternalFilesDir("xcrash")));
        XCrash.init(appContext, initParameters);
        initialized = true;
    }
}
