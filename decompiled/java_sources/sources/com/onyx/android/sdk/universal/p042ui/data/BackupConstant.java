package com.onyx.android.sdk.universal.p042ui.data;

import android.os.Environment;
import com.onyx.android.sdk.base.extension.Paths;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0004\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0005R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0005\u001a\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\u00020\u000b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/BackupConstant;", "", "", "a", "BACKUP_FOLDER_NAME", Constants.STRING_SIG, "BACKUP_RELATIVE_PATH", "INTERNAL_ROOT_PATH", "getBACKUP_ABSOLUTE_PATH", "()Ljava/lang/String;", "BACKUP_ABSOLUTE_PATH", "", "LOCAL_BACKUP_KEEP_INTERVAL_TIME_MILLIS", "I", "", "AUT0_BACKUP_RETRY_TIME_SECOND", "J", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class BackupConstant {
    public static final long AUT0_BACKUP_RETRY_TIME_SECOND = 30;

    @NotNull
    public static final String BACKUP_FOLDER_NAME = "StarNote";

    @NotNull
    public static final String BACKUP_RELATIVE_PATH = "StarNote/backup";

    @NotNull
    public static final BackupConstant INSTANCE;

    @NotNull
    public static final String INTERNAL_ROOT_PATH = "/storage/emulated/";
    public static final int LOCAL_BACKUP_KEEP_INTERVAL_TIME_MILLIS = 86400000;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String BACKUP_ABSOLUTE_PATH;

    static {
        BackupConstant backupConstant = new BackupConstant();
        INSTANCE = backupConstant;
        BACKUP_ABSOLUTE_PATH = backupConstant.m41593a();
    }

    /* renamed from: a */
    public final String m41593a() {
        String absolutePath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).getAbsolutePath();
        Paths paths = Paths.INSTANCE;
        Intrinsics.checkNotNull(absolutePath);
        Path path = java.nio.file.Paths.get(absolutePath, new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(path)");
        return paths.append(path, BACKUP_RELATIVE_PATH).toAbsolutePath().toString();
    }

    @NotNull
    public final String getBACKUP_ABSOLUTE_PATH() {
        return BACKUP_ABSOLUTE_PATH;
    }
}
