package com.onyx.galaxy.note.usercenter.data;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b*\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b*\u0010+R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\"\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0004\u001a\u0004\b'\u0010\u0006\"\u0004\b(\u0010\b¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/data/FileDownloadArgs;", "", "", "a", Constants.STRING_SIG, "getTaskId", "()Ljava/lang/String;", "setTaskId", "(Ljava/lang/String;)V", JavascriptArgs.KEY_TASK_ID, "b", "getUrl", "setUrl", "url", "c", "getName", "setName", "name", "d", "getExt", "setExt", "ext", "e", "getSaveDir", "setSaveDir", "saveDir", C6997f.f39671c, "getFunctionName", "setFunctionName", "functionName", C6998g.f39679a, "getIntentName", "setIntentName", "intentName", C6999h.f39688c, "getSuccessMessage", "setSuccessMessage", "successMessage", "i", "getErrorMessage", "setErrorMessage", "errorMessage", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FileDownloadArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String taskId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String url = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String name = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String ext = "";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String saveDir = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String functionName = "";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String intentName = "";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String successMessage = "";

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public String errorMessage = "";

    @NotNull
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    @NotNull
    public final String getExt() {
        return this.ext;
    }

    @NotNull
    public final String getFunctionName() {
        return this.functionName;
    }

    @NotNull
    public final String getIntentName() {
        return this.intentName;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getSaveDir() {
        return this.saveDir;
    }

    @NotNull
    public final String getSuccessMessage() {
        return this.successMessage;
    }

    @NotNull
    public final String getTaskId() {
        return this.taskId;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public final void setErrorMessage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.errorMessage = str;
    }

    public final void setExt(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ext = str;
    }

    public final void setFunctionName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.functionName = str;
    }

    public final void setIntentName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.intentName = str;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setSaveDir(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.saveDir = str;
    }

    public final void setSuccessMessage(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.successMessage = str;
    }

    public final void setTaskId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.taskId = str;
    }

    public final void setUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }
}
