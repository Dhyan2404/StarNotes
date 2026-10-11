package com.tencent.qcloud.core.logger;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes10.dex */
public interface LogAdapter {
    boolean isLoggable(int i, @Nullable String str);

    void log(int i, @NonNull String str, @NonNull String str2, @Nullable Throwable th);
}
