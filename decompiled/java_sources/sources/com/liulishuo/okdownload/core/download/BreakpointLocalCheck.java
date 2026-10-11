package com.liulishuo.okdownload.core.download;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import java.io.File;

/* loaded from: classes4.dex */
public class BreakpointLocalCheck {

    /* renamed from: a */
    public boolean f39389a;

    /* renamed from: b */
    public boolean f39390b;

    /* renamed from: c */
    public boolean f39391c;

    /* renamed from: d */
    public boolean f39392d;

    /* renamed from: e */
    public final DownloadTask f39393e;

    /* renamed from: f */
    public final BreakpointInfo f39394f;

    /* renamed from: g */
    public final long f39395g;

    public BreakpointLocalCheck(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, long j) {
        this.f39393e = downloadTask;
        this.f39394f = breakpointInfo;
        this.f39395g = j;
    }

    public void check() {
        this.f39390b = isFileExistToResume();
        this.f39391c = isInfoRightToResume();
        boolean isOutputStreamSupportResume = isOutputStreamSupportResume();
        this.f39392d = isOutputStreamSupportResume;
        this.f39389a = (this.f39391c && this.f39390b && isOutputStreamSupportResume) ? false : true;
    }

    @NonNull
    public ResumeFailedCause getCauseOrThrow() {
        if (!this.f39391c) {
            return ResumeFailedCause.INFO_DIRTY;
        }
        if (!this.f39390b) {
            return ResumeFailedCause.FILE_NOT_EXIST;
        }
        if (!this.f39392d) {
            return ResumeFailedCause.OUTPUT_STREAM_NOT_SUPPORT;
        }
        throw new IllegalStateException("No cause find with dirty: " + this.f39389a);
    }

    public boolean isDirty() {
        return this.f39389a;
    }

    public boolean isFileExistToResume() {
        Uri uri = this.f39393e.getUri();
        if (Util.isUriContentScheme(uri)) {
            return Util.getSizeFromContentUri(uri) > 0;
        }
        File file = this.f39393e.getFile();
        return file != null && file.exists();
    }

    public boolean isInfoRightToResume() {
        int blockCount = this.f39394f.getBlockCount();
        if (blockCount <= 0 || this.f39394f.isChunked() || this.f39394f.getFile() == null) {
            return false;
        }
        if (!this.f39394f.getFile().equals(this.f39393e.getFile()) || this.f39394f.getFile().length() > this.f39394f.getTotalLength()) {
            return false;
        }
        if (this.f39395g > 0 && this.f39394f.getTotalLength() != this.f39395g) {
            return false;
        }
        for (int i = 0; i < blockCount; i++) {
            if (this.f39394f.getBlock(i).getContentLength() <= 0) {
                return false;
            }
        }
        return true;
    }

    public boolean isOutputStreamSupportResume() {
        if (OkDownload.with().outputStreamFactory().supportSeek()) {
            return true;
        }
        return this.f39394f.getBlockCount() == 1 && !OkDownload.with().processFileStrategy().isPreAllocateLength(this.f39393e);
    }

    public String toString() {
        return "fileExist[" + this.f39390b + "] infoRight[" + this.f39391c + "] outputStreamSupport[" + this.f39392d + "] " + super.toString();
    }
}
