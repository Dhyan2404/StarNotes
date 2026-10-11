package com.onyx.android.sdk.base.data.config;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\b¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;", "Ljava/io/Serializable;", "()V", "filterByDocTypes", "", "getFilterByDocTypes", Constants.BOOLEAN_VALUE_SIG, "setFilterByDocTypes", "(Z)V", "internalRecognizerLangList", "", "", "getInternalRecognizerLangList", "()Ljava/util/List;", "setInternalRecognizerLangList", "(Ljava/util/List;)V", "shareResourceEnable", "getShareResourceEnable", "setShareResourceEnable", "storageManagerEnable", "getStorageManagerEnable", "setStorageManagerEnable", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GlobalConfigBean implements Serializable {
    private boolean filterByDocTypes;

    @NotNull
    private List<String> internalRecognizerLangList = new ArrayList();
    private boolean shareResourceEnable;
    private boolean storageManagerEnable;

    public final boolean getFilterByDocTypes() {
        return this.filterByDocTypes;
    }

    @NotNull
    public final List<String> getInternalRecognizerLangList() {
        return this.internalRecognizerLangList;
    }

    public final boolean getShareResourceEnable() {
        return this.shareResourceEnable;
    }

    public final boolean getStorageManagerEnable() {
        return this.storageManagerEnable;
    }

    public final void setFilterByDocTypes(boolean z) {
        this.filterByDocTypes = z;
    }

    public final void setInternalRecognizerLangList(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.internalRecognizerLangList = list;
    }

    public final void setShareResourceEnable(boolean z) {
        this.shareResourceEnable = z;
    }

    public final void setStorageManagerEnable(boolean z) {
        this.storageManagerEnable = z;
    }
}
