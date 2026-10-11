package com.onyx.android.sdk.data.sync.bean;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/data/sync/bean/ChannelResponseBean;", "", "()V", "channels", "", "", "getChannels", "()Ljava/util/List;", "setChannels", "(Ljava/util/List;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ChannelResponseBean {

    @Nullable
    private List<String> channels;

    @Nullable
    public final List<String> getChannels() {
        return this.channels;
    }

    public final void setChannels(@Nullable List<String> list) {
        this.channels = list;
    }
}
