package com.onyx.android.sdk.data.sync.bean;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\r\u001a\u00020\u00002\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/sync/bean/UpdateSyncChannelBody;", "", "()V", "action", "", "getAction", "()Ljava/lang/String;", "setAction", "(Ljava/lang/String;)V", "channels", "", "getChannels", "()Ljava/util/List;", "setChannels", "(Ljava/util/List;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UpdateSyncChannelBody {

    @Nullable
    private String action;

    @Nullable
    private List<String> channels;

    @Nullable
    public final String getAction() {
        return this.action;
    }

    @Nullable
    public final List<String> getChannels() {
        return this.channels;
    }

    /* renamed from: setAction, reason: collision with other method in class */
    public final void m72266setAction(@Nullable String str) {
        this.action = str;
    }

    /* renamed from: setChannels, reason: collision with other method in class */
    public final void m72267setChannels(@Nullable List<String> list) {
        this.channels = list;
    }

    @NotNull
    public final UpdateSyncChannelBody setAction(@Nullable String action) {
        this.action = action;
        return this;
    }

    @NotNull
    public final UpdateSyncChannelBody setChannels(@Nullable List<String> channels) {
        this.channels = channels;
        return this;
    }
}
