package com.liulishuo.okdownload.core.download;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.exception.FileBusyAfterRunException;
import com.liulishuo.okdownload.core.exception.InterruptException;
import com.liulishuo.okdownload.core.exception.PreAllocateException;
import com.liulishuo.okdownload.core.exception.ResumeFailedException;
import com.liulishuo.okdownload.core.exception.ServerCanceledException;
import com.liulishuo.okdownload.core.file.MultiPointOutputStream;
import java.io.IOException;
import java.net.SocketException;

/* loaded from: classes4.dex */
public class DownloadCache {

    /* renamed from: a */
    public String f39412a;

    /* renamed from: b */
    public final MultiPointOutputStream f39413b;

    /* renamed from: c */
    public volatile boolean f39414c;

    /* renamed from: d */
    public volatile boolean f39415d;

    /* renamed from: e */
    public volatile boolean f39416e;

    /* renamed from: f */
    public volatile boolean f39417f;

    /* renamed from: g */
    public volatile boolean f39418g;

    /* renamed from: h */
    public volatile boolean f39419h;

    /* renamed from: i */
    public volatile IOException f39420i;

    /* renamed from: com.liulishuo.okdownload.core.download.DownloadCache$a */
    /* loaded from: classes4.dex */
    public static class C6968a extends DownloadCache {
        public C6968a(IOException iOException) {
            super(null);
            setUnknownError(iOException);
        }
    }

    public DownloadCache(@NonNull MultiPointOutputStream multiPointOutputStream) {
        this.f39413b = multiPointOutputStream;
    }

    @NonNull
    /* renamed from: a */
    public MultiPointOutputStream m31043a() {
        MultiPointOutputStream multiPointOutputStream = this.f39413b;
        if (multiPointOutputStream != null) {
            return multiPointOutputStream;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public IOException m31044b() {
        return this.f39420i;
    }

    /* renamed from: c */
    public String m31045c() {
        return this.f39412a;
    }

    public void catchException(IOException iOException) {
        if (isUserCanceled()) {
            return;
        }
        if (iOException instanceof ResumeFailedException) {
            setPreconditionFailed(iOException);
            return;
        }
        if (iOException instanceof ServerCanceledException) {
            setServerCanceled(iOException);
            return;
        }
        if (iOException == FileBusyAfterRunException.SIGNAL) {
            setFileBusyAfterRun();
            return;
        }
        if (iOException instanceof PreAllocateException) {
            setPreAllocateFailed(iOException);
            return;
        }
        if (iOException != InterruptException.SIGNAL) {
            setUnknownError(iOException);
            if (iOException instanceof SocketException) {
                return;
            }
            Util.m30983d("DownloadCache", "catch unknown error " + iOException);
        }
    }

    /* renamed from: d */
    public ResumeFailedCause m31046d() {
        return ((ResumeFailedException) this.f39420i).getResumeFailedCause();
    }

    /* renamed from: e */
    public boolean m31047e() {
        return this.f39418g;
    }

    /* renamed from: f */
    public boolean m31048f() {
        return this.f39414c;
    }

    /* renamed from: g */
    public boolean m31049g() {
        return this.f39416e;
    }

    /* renamed from: h */
    public boolean m31050h() {
        return this.f39417f;
    }

    /* renamed from: i */
    public void m31051i(String str) {
        this.f39412a = str;
    }

    public boolean isInterrupt() {
        return this.f39414c || this.f39415d || this.f39416e || this.f39417f || this.f39418g || this.f39419h;
    }

    public boolean isPreAllocateFailed() {
        return this.f39419h;
    }

    public boolean isUserCanceled() {
        return this.f39415d;
    }

    /* renamed from: j */
    public void m31052j() {
        this.f39415d = true;
    }

    public void setFileBusyAfterRun() {
        this.f39418g = true;
    }

    public void setPreAllocateFailed(IOException iOException) {
        this.f39419h = true;
        this.f39420i = iOException;
    }

    public void setPreconditionFailed(IOException iOException) {
        this.f39414c = true;
        this.f39420i = iOException;
    }

    public void setServerCanceled(IOException iOException) {
        this.f39416e = true;
        this.f39420i = iOException;
    }

    public void setUnknownError(IOException iOException) {
        this.f39417f = true;
        this.f39420i = iOException;
    }

    public DownloadCache() {
        this.f39413b = null;
    }
}
