package com.onyx.galaxy.note.settings.data;

import androidx.annotation.StringRes;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B#\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/BackupErrorType;", "", "errorCode", "", "errorDescription", "", "canRetry", "", "(Ljava/lang/String;ILjava/lang/String;IZ)V", "getCanRetry", Constants.BOOLEAN_VALUE_SIG, "setCanRetry", "(Z)V", "getErrorCode", "()Ljava/lang/String;", "setErrorCode", "(Ljava/lang/String;)V", "getErrorDescription", "()I", "setErrorDescription", "(I)V", "NET_WORK_ERROR", "PARSE_FAILED", "NO_SPACE", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class BackupErrorType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BackupErrorType[] $VALUES;
    private boolean canRetry;

    @NotNull
    private String errorCode;
    private int errorDescription;
    public static final BackupErrorType NET_WORK_ERROR = new BackupErrorType("NET_WORK_ERROR", 0, ErrorCodeConst.ERROR_NETWORK, C10651R.string.error_tips_network, true);
    public static final BackupErrorType PARSE_FAILED = new BackupErrorType("PARSE_FAILED", 1, ErrorCodeConst.ERROR_PARSE_FAILED, C10651R.string.error_tips_parse_failed, false, 4, null);
    public static final BackupErrorType NO_SPACE = new BackupErrorType("NO_SPACE", 2, ErrorCodeConst.ERROR_NO_SPACE, C10651R.string.error_tips_no_space, false, 4, null);

    private static final /* synthetic */ BackupErrorType[] $values() {
        return new BackupErrorType[]{NET_WORK_ERROR, PARSE_FAILED, NO_SPACE};
    }

    static {
        BackupErrorType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    private BackupErrorType(String str, @StringRes int i, String str2, int i2, boolean z) {
        this.errorCode = str2;
        this.errorDescription = i2;
        this.canRetry = z;
    }

    @NotNull
    public static EnumEntries<BackupErrorType> getEntries() {
        return $ENTRIES;
    }

    public static BackupErrorType valueOf(String str) {
        return (BackupErrorType) Enum.valueOf(BackupErrorType.class, str);
    }

    public static BackupErrorType[] values() {
        return (BackupErrorType[]) $VALUES.clone();
    }

    public final boolean getCanRetry() {
        return this.canRetry;
    }

    @NotNull
    public final String getErrorCode() {
        return this.errorCode;
    }

    public final int getErrorDescription() {
        return this.errorDescription;
    }

    public final void setCanRetry(boolean z) {
        this.canRetry = z;
    }

    public final void setErrorCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.errorCode = str;
    }

    public final void setErrorDescription(int i) {
        this.errorDescription = i;
    }

    public /* synthetic */ BackupErrorType(String str, int i, String str2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, i2, (i3 & 4) != 0 ? false : z);
    }
}
