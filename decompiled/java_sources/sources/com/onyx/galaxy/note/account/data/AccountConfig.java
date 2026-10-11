package com.onyx.galaxy.note.account.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR*\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0010j\b\u0012\u0004\u0012\u00020\n`\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/data/AccountConfig;", "Ljava/io/Serializable;", "()V", "enableSwitchCluster", "", "getEnableSwitchCluster", Constants.BOOLEAN_VALUE_SIG, "setEnableSwitchCluster", "(Z)V", "loginAuthType", "", "getLoginAuthType", "()Ljava/lang/String;", "setLoginAuthType", "(Ljava/lang/String;)V", "loginTypes", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getLoginTypes", "()Ljava/util/ArrayList;", "setLoginTypes", "(Ljava/util/ArrayList;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class AccountConfig implements Serializable {
    private boolean enableSwitchCluster;

    @NotNull
    private ArrayList<String> loginTypes = new ArrayList<>();

    @NotNull
    private String loginAuthType = "";

    public final boolean getEnableSwitchCluster() {
        return this.enableSwitchCluster;
    }

    @NotNull
    public final String getLoginAuthType() {
        return this.loginAuthType;
    }

    @NotNull
    public final ArrayList<String> getLoginTypes() {
        return this.loginTypes;
    }

    public final void setEnableSwitchCluster(boolean z) {
        this.enableSwitchCluster = z;
    }

    public final void setLoginAuthType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.loginAuthType = str;
    }

    public final void setLoginTypes(@NotNull ArrayList<String> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.loginTypes = arrayList;
    }
}
