package com.onyx.android.sdk.universal.editor.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ImportErrorBean;", "", "name", "", "throwable", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "getName", "()Ljava/lang/String;", "getThrowable", "()Ljava/lang/Throwable;", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class ImportErrorBean {

    @NotNull
    private final String name;

    @Nullable
    private final Throwable throwable;

    public ImportErrorBean(@NotNull String name, @Nullable Throwable th) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.throwable = th;
    }

    public static /* synthetic */ ImportErrorBean copy$default(ImportErrorBean importErrorBean, String str, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            str = importErrorBean.name;
        }
        if ((i & 2) != 0) {
            th = importErrorBean.throwable;
        }
        return importErrorBean.copy(str, th);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Throwable getThrowable() {
        return this.throwable;
    }

    @NotNull
    public final ImportErrorBean copy(@NotNull String name, @Nullable Throwable throwable) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new ImportErrorBean(name, throwable);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ImportErrorBean)) {
            return false;
        }
        ImportErrorBean importErrorBean = (ImportErrorBean) other;
        return Intrinsics.areEqual(this.name, importErrorBean.name) && Intrinsics.areEqual(this.throwable, importErrorBean.throwable);
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        Throwable th = this.throwable;
        return hashCode + (th == null ? 0 : th.hashCode());
    }

    @NotNull
    public String toString() {
        return "ImportErrorBean(name=" + this.name + ", throwable=" + this.throwable + ')';
    }

    public /* synthetic */ ImportErrorBean(String str, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : th);
    }
}
