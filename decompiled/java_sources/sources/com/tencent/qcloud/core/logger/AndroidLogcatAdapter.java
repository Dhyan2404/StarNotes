package com.tencent.qcloud.core.logger;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes10.dex */
public final class AndroidLogcatAdapter implements LogAdapter {
    /* renamed from: d */
    private int m59777d(String str, String str2, @Nullable Throwable th) {
        return th == null ? Log.d(str, str2) : Log.d(str, str2, th);
    }

    /* renamed from: e */
    private int m59778e(String str, String str2, @Nullable Throwable th) {
        return th == null ? Log.e(str, str2) : Log.e(str, str2, th);
    }

    /* renamed from: i */
    private int m59779i(String str, String str2, @Nullable Throwable th) {
        return th == null ? Log.i(str, str2) : Log.i(str, str2, th);
    }

    /* renamed from: v */
    private int m59780v(String str, String str2, @Nullable Throwable th) {
        return th == null ? Log.v(str, str2) : Log.v(str, str2, th);
    }

    /* renamed from: w */
    private int m59781w(String str, String str2, @Nullable Throwable th) {
        return th == null ? Log.w(str, str2) : Log.w(str, str2, th);
    }

    @Override // com.tencent.qcloud.core.logger.LogAdapter
    public boolean isLoggable(int i, @Nullable String str) {
        if (TextUtils.isEmpty(str) || str.length() >= 23) {
            return false;
        }
        return Log.isLoggable(str, i);
    }

    @Override // com.tencent.qcloud.core.logger.LogAdapter
    public void log(int i, @NonNull String str, @NonNull String str2, @Nullable Throwable th) {
        if (i == 2) {
            m59780v(str, str2, th);
            return;
        }
        if (i == 3) {
            m59777d(str, str2, th);
            return;
        }
        if (i == 4) {
            m59779i(str, str2, th);
        } else if (i == 5) {
            m59781w(str, str2, th);
        } else {
            if (i != 6) {
                return;
            }
            m59778e(str, str2, th);
        }
    }
}
