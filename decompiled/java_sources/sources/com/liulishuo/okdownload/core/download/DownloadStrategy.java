package com.liulishuo.okdownload.core.download;

import android.net.ConnectivityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.breakpoint.BlockInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.breakpoint.BreakpointStore;
import com.liulishuo.okdownload.core.breakpoint.DownloadStore;
import com.liulishuo.okdownload.core.cause.ResumeFailedCause;
import com.liulishuo.okdownload.core.connection.DownloadConnection;
import com.liulishuo.okdownload.core.exception.NetworkPolicyException;
import com.liulishuo.okdownload.core.exception.ResumeFailedException;
import com.liulishuo.okdownload.core.exception.ServerCanceledException;
import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class DownloadStrategy {

    /* renamed from: c */
    public static final String f39449c = "DownloadStrategy";

    /* renamed from: d */
    public static final long f39450d = 1048576;

    /* renamed from: e */
    public static final long f39451e = 5242880;

    /* renamed from: f */
    public static final long f39452f = 52428800;

    /* renamed from: g */
    public static final long f39453g = 104857600;

    /* renamed from: h */
    public static final Pattern f39454h = Pattern.compile(".*\\\\|/([^\\\\|/|?]*)\\??");

    /* renamed from: a */
    public Boolean f39455a = null;

    /* renamed from: b */
    public ConnectivityManager f39456b = null;

    /* loaded from: classes4.dex */
    public static class ResumeAvailableResponseCheck {

        /* renamed from: a */
        @NonNull
        public DownloadConnection.Connected f39459a;

        /* renamed from: b */
        @NonNull
        public BreakpointInfo f39460b;

        /* renamed from: c */
        public int f39461c;

        public ResumeAvailableResponseCheck(@NonNull DownloadConnection.Connected connected, int i, @NonNull BreakpointInfo breakpointInfo) {
            this.f39459a = connected;
            this.f39460b = breakpointInfo;
            this.f39461c = i;
        }

        public void inspect() throws IOException {
            BlockInfo block = this.f39460b.getBlock(this.f39461c);
            int responseCode = this.f39459a.getResponseCode();
            ResumeFailedCause preconditionFailedCause = OkDownload.with().downloadStrategy().getPreconditionFailedCause(responseCode, block.getCurrentOffset() != 0, this.f39460b, this.f39459a.getResponseHeaderField(Util.ETAG));
            if (preconditionFailedCause != null) {
                throw new ResumeFailedException(preconditionFailedCause);
            }
            if (OkDownload.with().downloadStrategy().isServerCanceled(responseCode, block.getCurrentOffset() != 0)) {
                throw new ServerCanceledException(responseCode, block.getCurrentOffset());
            }
        }
    }

    public int determineBlockCount(@NonNull DownloadTask downloadTask, long j) {
        if (downloadTask.getSetConnectionCount() != null) {
            return downloadTask.getSetConnectionCount().intValue();
        }
        if (j < 1048576) {
            return 1;
        }
        if (j < 5242880) {
            return 2;
        }
        if (j < f39452f) {
            return 3;
        }
        return j < f39453g ? 4 : 5;
    }

    public String determineFilename(@Nullable String str, @NonNull DownloadTask downloadTask) throws IOException {
        if (!Util.isEmpty(str)) {
            return str;
        }
        String url = downloadTask.getUrl();
        Matcher matcher = f39454h.matcher(url);
        String str2 = null;
        while (matcher.find()) {
            str2 = matcher.group(1);
        }
        if (Util.isEmpty(str2)) {
            str2 = Util.md5(url);
        }
        if (str2 != null) {
            return str2;
        }
        throw new IOException("Can't find valid filename.");
    }

    @Nullable
    public ResumeFailedCause getPreconditionFailedCause(int i, boolean z, @NonNull BreakpointInfo breakpointInfo, @Nullable String str) {
        String etag = breakpointInfo.getEtag();
        if (i == 412) {
            return ResumeFailedCause.RESPONSE_PRECONDITION_FAILED;
        }
        if (!Util.isEmpty(etag) && !Util.isEmpty(str) && !str.equals(etag)) {
            return ResumeFailedCause.RESPONSE_ETAG_CHANGED;
        }
        if (i == 201 && z) {
            return ResumeFailedCause.RESPONSE_CREATED_RANGE_NOT_FROM_0;
        }
        if (i == 205 && z) {
            return ResumeFailedCause.RESPONSE_RESET_RANGE_NOT_FROM_0;
        }
        return null;
    }

    public boolean inspectAnotherSameInfo(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo, long j) {
        BreakpointStore breakpointStore;
        BreakpointInfo findAnotherInfoFromCompare;
        if (!downloadTask.isFilenameFromResponse() || (findAnotherInfoFromCompare = (breakpointStore = OkDownload.with().breakpointStore()).findAnotherInfoFromCompare(downloadTask, breakpointInfo)) == null) {
            return false;
        }
        breakpointStore.remove(findAnotherInfoFromCompare.getId());
        if (findAnotherInfoFromCompare.getTotalOffset() <= OkDownload.with().downloadStrategy().reuseIdledSameInfoThresholdBytes()) {
            return false;
        }
        if ((findAnotherInfoFromCompare.getEtag() != null && !findAnotherInfoFromCompare.getEtag().equals(breakpointInfo.getEtag())) || findAnotherInfoFromCompare.getTotalLength() != j || findAnotherInfoFromCompare.getFile() == null || !findAnotherInfoFromCompare.getFile().exists()) {
            return false;
        }
        breakpointInfo.reuseBlocks(findAnotherInfoFromCompare);
        Util.m30983d(f39449c, "Reuse another same info: " + breakpointInfo);
        return true;
    }

    public void inspectFilenameFromResume(@NonNull String str, @NonNull DownloadTask downloadTask) {
        if (Util.isEmpty(downloadTask.getFilename())) {
            downloadTask.getFilenameHolder().m31068a(str);
        }
    }

    public void inspectNetworkAvailable() throws UnknownHostException {
        if (this.f39455a == null) {
            this.f39455a = Boolean.valueOf(Util.checkPermission(DefaultConnectivityMonitorFactory.f15198b));
        }
        if (this.f39455a.booleanValue()) {
            if (this.f39456b == null) {
                this.f39456b = (ConnectivityManager) OkDownload.with().context().getSystemService("connectivity");
            }
            if (!Util.isNetworkAvailable(this.f39456b)) {
                throw new UnknownHostException("network is not available!");
            }
        }
    }

    public void inspectNetworkOnWifi(@NonNull DownloadTask downloadTask) throws IOException {
        if (this.f39455a == null) {
            this.f39455a = Boolean.valueOf(Util.checkPermission(DefaultConnectivityMonitorFactory.f15198b));
        }
        if (downloadTask.isWifiRequired()) {
            if (!this.f39455a.booleanValue()) {
                throw new IOException("required for access network state but don't have the permission of Manifest.permission.ACCESS_NETWORK_STATE, please declare this permission first on your AndroidManifest, so we can handle the case of downloading required wifi state.");
            }
            if (this.f39456b == null) {
                this.f39456b = (ConnectivityManager) OkDownload.with().context().getSystemService("connectivity");
            }
            if (Util.isNetworkNotOnWifiType(this.f39456b)) {
                throw new NetworkPolicyException();
            }
        }
    }

    public boolean isServerCanceled(int i, boolean z) {
        if (i == 206 || i == 200) {
            return i == 200 && z;
        }
        return true;
    }

    public boolean isUseMultiBlock(boolean z) {
        if (OkDownload.with().outputStreamFactory().supportSeek()) {
            return z;
        }
        return false;
    }

    public ResumeAvailableResponseCheck resumeAvailableResponseCheck(DownloadConnection.Connected connected, int i, BreakpointInfo breakpointInfo) {
        return new ResumeAvailableResponseCheck(connected, i, breakpointInfo);
    }

    public long reuseIdledSameInfoThresholdBytes() {
        return 10240L;
    }

    public void validFilenameFromResponse(@Nullable String str, @NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) throws IOException {
        if (Util.isEmpty(downloadTask.getFilename())) {
            String determineFilename = determineFilename(str, downloadTask);
            if (Util.isEmpty(downloadTask.getFilename())) {
                synchronized (downloadTask) {
                    if (Util.isEmpty(downloadTask.getFilename())) {
                        downloadTask.getFilenameHolder().m31068a(determineFilename);
                        breakpointInfo.getFilenameHolder().m31068a(determineFilename);
                    }
                }
            }
        }
    }

    public boolean validFilenameFromStore(@NonNull DownloadTask downloadTask) {
        String responseFilename = OkDownload.with().breakpointStore().getResponseFilename(downloadTask.getUrl());
        if (responseFilename == null) {
            return false;
        }
        downloadTask.getFilenameHolder().m31068a(responseFilename);
        return true;
    }

    public void validInfoOnCompleted(@NonNull DownloadTask downloadTask, @NonNull DownloadStore downloadStore) {
        long length;
        BreakpointInfo afterCompleted = downloadStore.getAfterCompleted(downloadTask.getId());
        if (afterCompleted == null) {
            afterCompleted = new BreakpointInfo(downloadTask.getId(), downloadTask.getUrl(), downloadTask.getParentFile(), downloadTask.getFilename());
            if (Util.isUriContentScheme(downloadTask.getUri())) {
                length = Util.getSizeFromContentUri(downloadTask.getUri());
            } else {
                File file = downloadTask.getFile();
                if (file == null) {
                    Util.m30986w(f39449c, "file is not ready on valid info for task on complete state " + downloadTask);
                    length = 0;
                } else {
                    length = file.length();
                }
            }
            long j = length;
            afterCompleted.addBlock(new BlockInfo(0L, j, j));
        }
        DownloadTask.TaskHideWrapper.setBreakpointInfo(downloadTask, afterCompleted);
    }

    /* loaded from: classes4.dex */
    public static class FilenameHolder {

        /* renamed from: a */
        public volatile String f39457a;

        /* renamed from: b */
        public final boolean f39458b = false;

        public FilenameHolder() {
        }

        /* renamed from: a */
        public void m31068a(@NonNull String str) {
            this.f39457a = str;
        }

        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return true;
            }
            if (obj instanceof FilenameHolder) {
                return this.f39457a == null ? ((FilenameHolder) obj).f39457a == null : this.f39457a.equals(((FilenameHolder) obj).f39457a);
            }
            return false;
        }

        @Nullable
        public String get() {
            return this.f39457a;
        }

        public int hashCode() {
            if (this.f39457a == null) {
                return 0;
            }
            return this.f39457a.hashCode();
        }

        public boolean isFilenameProvidedByConstruct() {
            return this.f39458b;
        }

        public FilenameHolder(@NonNull String str) {
            this.f39457a = str;
        }
    }
}
