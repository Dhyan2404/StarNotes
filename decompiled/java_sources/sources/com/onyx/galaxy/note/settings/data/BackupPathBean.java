package com.onyx.galaxy.note.settings.data;

import com.onyx.android.sdk.universal.p042ui.data.BackupConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0006\u001a\u00020\u0002HÖ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0012\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/BackupPathBean;", "", "", "component1", "path", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isInternal", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class BackupPathBean {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String path;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean isInternal;

    public BackupPathBean(@NotNull String path) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(path, BackupConstant.INTERNAL_ROOT_PATH, false, 2, null);
        this.isInternal = startsWith$default;
    }

    public static /* synthetic */ BackupPathBean copy$default(BackupPathBean backupPathBean, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = backupPathBean.path;
        }
        return backupPathBean.copy(str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final BackupPathBean copy(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return new BackupPathBean(path);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof BackupPathBean) && Intrinsics.areEqual(this.path, ((BackupPathBean) other).path);
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public int hashCode() {
        return this.path.hashCode();
    }

    /* renamed from: isInternal, reason: from getter */
    public final boolean getIsInternal() {
        return this.isInternal;
    }

    @NotNull
    public String toString() {
        return "BackupPathBean(path=" + this.path + ')';
    }
}
