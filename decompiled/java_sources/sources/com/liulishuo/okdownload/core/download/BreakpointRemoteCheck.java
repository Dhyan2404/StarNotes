package com.liulishuo.okdownload.core.download;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.exception.FileBusyAfterRunException;
import com.liulishuo.okdownload.core.exception.ServerCanceledException;
import java.io.IOException;

/* loaded from: classes4.dex */
public class BreakpointRemoteCheck {

    /* renamed from: a */
    public boolean f39396a;

    /* renamed from: b */
    public boolean f39397b;

    /* renamed from: c */
    public ResumeFailedCause f39398c;

    /* renamed from: d */
    public long f39399d;

    /* renamed from: e */
    @NonNull
    public final DownloadTask f39400e;

    /* renamed from: f */
    @NonNull
    public final BreakpointInfo f39401f;

    public BreakpointRemoteCheck(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
        this.f39400e = downloadTask;
        this.f39401f = breakpointInfo;
    }

    /* renamed from: a */
    public ConnectTrial m31032a() {
        return new ConnectTrial(this.f39400e, this.f39401f);
    }

    /* renamed from: b */
    public boolean m31033b(int i, long j, boolean z) {
        return i == 416 && j >= 0 && z;
    }

    public void check() throws IOException {
        DownloadStrategy downloadStrategy = OkDownload.with().downloadStrategy();
        ConnectTrial m31032a = m31032a();
        m31032a.executeTrial();
        boolean isAcceptRange = m31032a.isAcceptRange();
        boolean isChunked = m31032a.isChunked();
        long instanceLength = m31032a.getInstanceLength();
        String responseEtag = m31032a.getResponseEtag();
        String responseFilename = m31032a.getResponseFilename();
        int responseCode = m31032a.getResponseCode();
        downloadStrategy.validFilenameFromResponse(responseFilename, this.f39400e, this.f39401f);
        this.f39401f.setChunked(isChunked);
        this.f39401f.setEtag(responseEtag);
        if (OkDownload.with().downloadDispatcher().isFileConflictAfterRun(this.f39400e)) {
            throw FileBusyAfterRunException.SIGNAL;
        }
        ResumeFailedCause preconditionFailedCause = downloadStrategy.getPreconditionFailedCause(responseCode, this.f39401f.getTotalOffset() != 0, this.f39401f, responseEtag);
        boolean z = preconditionFailedCause == null;
        this.f39397b = z;
        this.f39398c = preconditionFailedCause;
        this.f39399d = instanceLength;
        this.f39396a = isAcceptRange;
        if (m31033b(responseCode, instanceLength, z)) {
            return;
        }
        if (downloadStrategy.isServerCanceled(responseCode, this.f39401f.getTotalOffset() != 0)) {
            throw new ServerCanceledException(responseCode, this.f39401f.getTotalOffset());
        }
    }

    @Nullable
    public ResumeFailedCause getCause() {
        return this.f39398c;
    }

    @NonNull
    public ResumeFailedCause getCauseOrThrow() {
        ResumeFailedCause resumeFailedCause = this.f39398c;
        if (resumeFailedCause != null) {
            return resumeFailedCause;
        }
        throw new IllegalStateException("No cause find with resumable: " + this.f39397b);
    }

    public long getInstanceLength() {
        return this.f39399d;
    }

    public boolean isAcceptRange() {
        return this.f39396a;
    }

    public boolean isResumable() {
        return this.f39397b;
    }

    public String toString() {
        return "acceptRange[" + this.f39396a + "] resumable[" + this.f39397b + "] failedCause[" + this.f39398c + "] instanceLength[" + this.f39399d + "] " + super.toString();
    }
}
