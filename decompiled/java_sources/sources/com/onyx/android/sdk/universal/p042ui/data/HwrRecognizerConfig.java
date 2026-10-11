package com.onyx.android.sdk.universal.p042ui.data;

import com.onyx.android.sdk.hwr.data.constant.HWRActivateServer;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;", "Ljava/io/Serializable;", "()V", "activateServerList", "", "Lcom/onyx/android/sdk/hwr/data/constant/HWRActivateServer;", "getActivateServerList", "()Ljava/util/List;", "setActivateServerList", "(Ljava/util/List;)V", "engineEntryList", "Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;", "getEngineEntryList", "setEngineEntryList", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class HwrRecognizerConfig implements Serializable {

    @NotNull
    private List<HWRActivateServer> activateServerList;

    @NotNull
    private List<HwrEngineEntry> engineEntryList;

    public HwrRecognizerConfig() {
        List<HWRActivateServer> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.activateServerList = emptyList;
        this.engineEntryList = new ArrayList();
    }

    @NotNull
    public final List<HWRActivateServer> getActivateServerList() {
        return this.activateServerList;
    }

    @NotNull
    public final List<HwrEngineEntry> getEngineEntryList() {
        return this.engineEntryList;
    }

    public final void setActivateServerList(@NotNull List<HWRActivateServer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.activateServerList = list;
    }

    public final void setEngineEntryList(@NotNull List<HwrEngineEntry> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.engineEntryList = list;
    }
}
