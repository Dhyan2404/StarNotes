package com.liulishuo.okdownload.core.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.assist.Listener1Assist;

/* loaded from: classes4.dex */
public abstract class DownloadListener3 extends DownloadListener1 {

    /* renamed from: com.liulishuo.okdownload.core.listener.DownloadListener3$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C6975a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f39511a;

        static {
            int[] iArr = new int[EndCause.values().length];
            f39511a = iArr;
            try {
                iArr[EndCause.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39511a[EndCause.CANCELED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39511a[EndCause.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39511a[EndCause.PRE_ALLOCATE_FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39511a[EndCause.FILE_BUSY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39511a[EndCause.SAME_TASK_BUSY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public abstract void canceled(@NonNull DownloadTask downloadTask);

    public abstract void completed(@NonNull DownloadTask downloadTask);

    public abstract void error(@NonNull DownloadTask downloadTask, @NonNull Exception exc);

    public abstract void started(@NonNull DownloadTask downloadTask);

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener1Assist.Listener1Callback
    public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc, @NonNull Listener1Assist.Listener1Model listener1Model) {
        switch (C6975a.f39511a[endCause.ordinal()]) {
            case 1:
                completed(downloadTask);
                return;
            case 2:
                canceled(downloadTask);
                return;
            case 3:
            case 4:
                error(downloadTask, exc);
                return;
            case 5:
            case 6:
                warn(downloadTask);
                return;
            default:
                Util.m30986w("DownloadListener3", "Don't support " + endCause);
                return;
        }
    }

    @Override // com.liulishuo.okdownload.core.listener.assist.Listener1Assist.Listener1Callback
    public final void taskStart(@NonNull DownloadTask downloadTask, @NonNull Listener1Assist.Listener1Model listener1Model) {
        started(downloadTask);
    }

    public abstract void warn(@NonNull DownloadTask downloadTask);
}
