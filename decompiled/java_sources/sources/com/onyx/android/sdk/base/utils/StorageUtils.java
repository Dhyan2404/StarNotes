package com.onyx.android.sdk.base.utils;

import android.os.Environment;
import android.os.StatFs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.mortbay.jetty.HttpHeaderValues;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/StorageUtils;", "", "()V", "convertBytesToMB", "", HttpHeaderValues.BYTES, "getAvailableInternalMemorySize", "getFreeSpace", "", "getTotalExternalMemorySize", "getTotalInternalMemorySize", "isSDCardEnable", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class StorageUtils {

    @NotNull
    public static final StorageUtils INSTANCE = new StorageUtils();

    public final long convertBytesToMB(long bytes) {
        return bytes / 1048576;
    }

    public final long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    @NotNull
    public final String getFreeSpace() {
        if (!isSDCardEnable()) {
            return "sdcard unable!";
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return String.valueOf((statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong()) / 1024);
    }

    public final long getTotalExternalMemorySize() {
        if (!isSDCardEnable()) {
            return -1L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    public final long getTotalInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    public final boolean isSDCardEnable() {
        return Intrinsics.areEqual("mounted", Environment.getExternalStorageState());
    }
}
