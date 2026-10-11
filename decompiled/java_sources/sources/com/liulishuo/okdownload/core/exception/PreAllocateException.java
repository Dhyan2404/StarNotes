package com.liulishuo.okdownload.core.exception;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;

/* loaded from: classes4.dex */
public class PreAllocateException extends IOException {
    private final long freeSpace;
    private final long requireSpace;

    public PreAllocateException(long j, long j2) {
        super("There is Free space less than Require space: " + j2 + CloudStorageConstants.OPERATION_LESS + j);
        this.requireSpace = j;
        this.freeSpace = j2;
    }

    public long getFreeSpace() {
        return this.freeSpace;
    }

    public long getRequireSpace() {
        return this.requireSpace;
    }
}
