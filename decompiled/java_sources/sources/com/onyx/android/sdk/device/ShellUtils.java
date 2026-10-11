package com.onyx.android.sdk.device;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__IndentKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0019B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J/\u0010\u0007\u001a\u00020\u00062\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\u000bJK\u0010\u0007\u001a\u00020\u00062\u0010\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\b2\u0010\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0007\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0016\u001a\n \u0013*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/device/ShellUtils;", "", "", "command", "", "isRooted", "Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;", "execCmd", "", "commands", "isNeedResultMsg", "([Ljava/lang/String;ZZ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;", "envp", "", "timeOut", "([Ljava/lang/String;[Ljava/lang/String;ZZJ)Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;", "a", "J", "PROCESS_WAIT_FOR_TIMEOUT", "kotlin.jvm.PlatformType", "b", Constants.STRING_SIG, "LINE_SEP", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "CommandResult", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShellUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShellUtils.kt\ncom/onyx/android/sdk/device/ShellUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
/* loaded from: classes7.dex */
public final class ShellUtils {

    /* renamed from: a, reason: from kotlin metadata */
    public static final long PROCESS_WAIT_FOR_TIMEOUT = 5000;

    @NotNull
    public static final ShellUtils INSTANCE = new ShellUtils();

    /* renamed from: b, reason: from kotlin metadata */
    public static final String LINE_SEP = System.getProperty("line.separator");

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\r\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/device/ShellUtils$CommandResult;", "", "", "toString", "", "a", Constants.HASIDCALL_INDEX_SIG, "getResult", Constants.BOOLEAN_VALUE_SIG, "setResult", "(Z)V", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "b", Constants.STRING_SIG, "getSuccessMsg", "()Ljava/lang/String;", "setSuccessMsg", "(Ljava/lang/String;)V", "successMsg", "c", "getErrorMsg", "setErrorMsg", "errorMsg", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZLjava/lang/String;Ljava/lang/String;)V", "sdk-device_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class CommandResult {

        /* renamed from: a, reason: from kotlin metadata */
        public boolean result;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public String successMsg;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public String errorMsg;

        public CommandResult(boolean z, @Nullable String str, @Nullable String str2) {
            this.result = z;
            this.successMsg = str;
            this.errorMsg = str2;
        }

        @Nullable
        public final String getErrorMsg() {
            return this.errorMsg;
        }

        public final boolean getResult() {
            return this.result;
        }

        @Nullable
        public final String getSuccessMsg() {
            return this.successMsg;
        }

        public final void setErrorMsg(@Nullable String str) {
            this.errorMsg = str;
        }

        public final void setResult(boolean z) {
            this.result = z;
        }

        public final void setSuccessMsg(@Nullable String str) {
            this.successMsg = str;
        }

        @NotNull
        public String toString() {
            String trimIndent;
            trimIndent = StringsKt__IndentKt.trimIndent("\n                   result: " + this.result + "\n                   successMsg: " + this.successMsg + "\n                   errorMsg: " + this.errorMsg + "\n                   ");
            return trimIndent;
        }
    }

    public static /* synthetic */ CommandResult execCmd$default(ShellUtils shellUtils, String[] strArr, String[] strArr2, boolean z, boolean z2, long j, int i, Object obj) {
        if ((i & 16) != 0) {
            j = 5000;
        }
        return shellUtils.execCmd(strArr, strArr2, z, z2, j);
    }

    @NotNull
    public final CommandResult execCmd(@NotNull String command, boolean isRooted) {
        Intrinsics.checkNotNullParameter(command, "command");
        return execCmd(new String[]{command}, isRooted, true);
    }

    @NotNull
    public final CommandResult execCmd(@Nullable String[] commands, boolean isRooted, boolean isNeedResultMsg) {
        return execCmd$default(this, commands, null, isRooted, isNeedResultMsg, 0L, 16, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x0149, code lost:
    
        if (r7 != null) goto L75;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:122:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x017c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0172 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0168 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v14, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.device.ShellUtils.CommandResult execCmd(@org.jetbrains.annotations.Nullable java.lang.String[] r6, @org.jetbrains.annotations.Nullable java.lang.String[] r7, boolean r8, boolean r9, long r10) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.device.ShellUtils.execCmd(java.lang.String[], java.lang.String[], boolean, boolean, long):com.onyx.android.sdk.device.ShellUtils$CommandResult");
    }
}
