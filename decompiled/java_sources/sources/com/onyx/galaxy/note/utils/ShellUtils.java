package com.onyx.galaxy.note.utils;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J;\u0010\b\u001a\u00020\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\b\u0010\rJ\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0013¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/ShellUtils;", "", "", "checkRootPermission", "", "command", "isRoot", "Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;", "execCommand", "isNeedResultMsg", "", "commands", "destroy", "([Ljava/lang/String;ZZZ)Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;", "Ljava/lang/Process;", "process", "", "a", "COMMAND_SU", Constants.STRING_SIG, "COMMAND_SH", "COMMAND_EXIT", "COMMAND_LINE_END", "COMMAND_NEW_LINE", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "CommandResult", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShellUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShellUtils.kt\ncom/onyx/galaxy/note/utils/ShellUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"})
/* loaded from: classes9.dex */
public final class ShellUtils {

    @NotNull
    public static final String COMMAND_EXIT = "exit\n";

    @NotNull
    public static final String COMMAND_LINE_END = "\n";

    @NotNull
    public static final String COMMAND_NEW_LINE = "\r\n";

    @NotNull
    public static final String COMMAND_SH = "sh";

    @NotNull
    public static final String COMMAND_SU = "su";

    @NotNull
    public static final ShellUtils INSTANCE = new ShellUtils();

    public static /* synthetic */ CommandResult execCommand$default(ShellUtils shellUtils, String[] strArr, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = true;
        }
        if ((i & 8) != 0) {
            z3 = true;
        }
        return shellUtils.execCommand(strArr, z, z2, z3);
    }

    /* renamed from: a */
    public final void m52015a(Process process) {
        try {
            process.exitValue();
        } catch (IllegalThreadStateException unused) {
            process.destroy();
        }
    }

    public final boolean checkRootPermission() {
        return execCommand("echo root", true, false).getResult() == 0;
    }

    @JvmOverloads
    @NotNull
    public final CommandResult execCommand(@Nullable String[] strArr, boolean z) {
        return execCommand$default(this, strArr, z, false, false, 12, null);
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\bB%\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/ShellUtils$CommandResult;", "", "", "a", "I", "getResult", "()I", "setResult", "(I)V", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "b", Constants.STRING_SIG, "getSuccessMsg", "()Ljava/lang/String;", "setSuccessMsg", "(Ljava/lang/String;)V", "successMsg", "c", "getErrorMsg", "setErrorMsg", "errorMsg", "", "isSuccessful", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILjava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class CommandResult {

        /* renamed from: a, reason: from kotlin metadata */
        public int result;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public String successMsg;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public String errorMsg;

        public CommandResult(int i) {
            this.result = i;
        }

        @Nullable
        public final String getErrorMsg() {
            return this.errorMsg;
        }

        public final int getResult() {
            return this.result;
        }

        @Nullable
        public final String getSuccessMsg() {
            return this.successMsg;
        }

        public final boolean isSuccessful() {
            return this.result == 0;
        }

        public final void setErrorMsg(@Nullable String str) {
            this.errorMsg = str;
        }

        public final void setResult(int i) {
            this.result = i;
        }

        public final void setSuccessMsg(@Nullable String str) {
            this.successMsg = str;
        }

        public CommandResult(int i, @Nullable String str, @Nullable String str2) {
            this.result = i;
            this.successMsg = str;
            this.errorMsg = str2;
        }
    }

    @JvmOverloads
    @NotNull
    public final CommandResult execCommand(@Nullable String[] strArr, boolean z, boolean z2) {
        return execCommand$default(this, strArr, z, z2, false, 8, null);
    }

    @NotNull
    public final CommandResult execCommand(@NotNull String command, boolean isRoot) {
        Intrinsics.checkNotNullParameter(command, "command");
        return execCommand(new String[]{command}, isRoot, true, true);
    }

    @NotNull
    public final CommandResult execCommand(@NotNull String command, boolean isRoot, boolean isNeedResultMsg) {
        Intrinsics.checkNotNullParameter(command, "command");
        return execCommand(new String[]{command}, isRoot, isNeedResultMsg, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0150, code lost:
    
        if (r12 != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0175, code lost:
    
        if (r12 != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0177, code lost:
    
        m52015a(r11);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0142 A[Catch: IOException -> 0x013e, TryCatch #22 {IOException -> 0x013e, blocks: (B:112:0x013a, B:102:0x0142, B:104:0x0147), top: B:111:0x013a }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0147 A[Catch: IOException -> 0x013e, TRY_LEAVE, TryCatch #22 {IOException -> 0x013e, blocks: (B:112:0x013a, B:102:0x0142, B:104:0x0147), top: B:111:0x013a }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x013a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x019f A[Catch: IOException -> 0x019b, TryCatch #23 {IOException -> 0x019b, blocks: (B:131:0x0197, B:117:0x019f, B:119:0x01a4), top: B:130:0x0197 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01a4 A[Catch: IOException -> 0x019b, TRY_LEAVE, TryCatch #23 {IOException -> 0x019b, blocks: (B:131:0x0197, B:117:0x019f, B:119:0x01a4), top: B:130:0x0197 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:129:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0197 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0167 A[Catch: IOException -> 0x0163, TryCatch #14 {IOException -> 0x0163, blocks: (B:93:0x015f, B:79:0x0167, B:81:0x016c), top: B:92:0x015f }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016c A[Catch: IOException -> 0x0163, TRY_LEAVE, TryCatch #14 {IOException -> 0x0163, blocks: (B:93:0x015f, B:79:0x0167, B:81:0x016c), top: B:92:0x015f }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x015f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v28, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @kotlin.jvm.JvmOverloads
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.galaxy.note.utils.ShellUtils.CommandResult execCommand(@org.jetbrains.annotations.Nullable java.lang.String[] r9, boolean r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.utils.ShellUtils.execCommand(java.lang.String[], boolean, boolean, boolean):com.onyx.galaxy.note.utils.ShellUtils$CommandResult");
    }
}
