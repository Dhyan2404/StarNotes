package com.liulishuo.okdownload.core.breakpoint;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.Util;
import com.liulishuo.okdownload.core.download.DownloadStrategy;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class BreakpointInfo {

    /* renamed from: a */
    public final int f39263a;

    /* renamed from: b */
    public final String f39264b;

    /* renamed from: c */
    public String f39265c;

    /* renamed from: d */
    @NonNull
    public final File f39266d;

    /* renamed from: e */
    @Nullable
    public File f39267e;

    /* renamed from: f */
    public final DownloadStrategy.FilenameHolder f39268f;

    /* renamed from: g */
    public final List<BlockInfo> f39269g = new ArrayList();

    /* renamed from: h */
    public final boolean f39270h;

    /* renamed from: i */
    public boolean f39271i;

    public BreakpointInfo(int i, @NonNull String str, @NonNull File file, @Nullable String str2) {
        this.f39263a = i;
        this.f39264b = str;
        this.f39266d = file;
        if (Util.isEmpty(str2)) {
            this.f39268f = new DownloadStrategy.FilenameHolder();
            this.f39270h = true;
        } else {
            this.f39268f = new DownloadStrategy.FilenameHolder(str2);
            this.f39270h = false;
            this.f39267e = new File(file, str2);
        }
    }

    /* renamed from: a */
    public boolean m30991a() {
        return this.f39270h;
    }

    public void addBlock(BlockInfo blockInfo) {
        this.f39269g.add(blockInfo);
    }

    public BreakpointInfo copy() {
        BreakpointInfo breakpointInfo = new BreakpointInfo(this.f39263a, this.f39264b, this.f39266d, this.f39268f.get(), this.f39270h);
        breakpointInfo.f39271i = this.f39271i;
        Iterator<BlockInfo> it2 = this.f39269g.iterator();
        while (it2.hasNext()) {
            breakpointInfo.f39269g.add(it2.next().copy());
        }
        return breakpointInfo;
    }

    public BreakpointInfo copyWithReplaceId(int i) {
        BreakpointInfo breakpointInfo = new BreakpointInfo(i, this.f39264b, this.f39266d, this.f39268f.get(), this.f39270h);
        breakpointInfo.f39271i = this.f39271i;
        Iterator<BlockInfo> it2 = this.f39269g.iterator();
        while (it2.hasNext()) {
            breakpointInfo.f39269g.add(it2.next().copy());
        }
        return breakpointInfo;
    }

    public BreakpointInfo copyWithReplaceIdAndUrl(int i, String str) {
        BreakpointInfo breakpointInfo = new BreakpointInfo(i, str, this.f39266d, this.f39268f.get(), this.f39270h);
        breakpointInfo.f39271i = this.f39271i;
        Iterator<BlockInfo> it2 = this.f39269g.iterator();
        while (it2.hasNext()) {
            breakpointInfo.f39269g.add(it2.next().copy());
        }
        return breakpointInfo;
    }

    public BlockInfo getBlock(int i) {
        return this.f39269g.get(i);
    }

    public int getBlockCount() {
        return this.f39269g.size();
    }

    @Nullable
    public String getEtag() {
        return this.f39265c;
    }

    @Nullable
    public File getFile() {
        String str = this.f39268f.get();
        if (str == null) {
            return null;
        }
        if (this.f39267e == null) {
            this.f39267e = new File(this.f39266d, str);
        }
        return this.f39267e;
    }

    @Nullable
    public String getFilename() {
        return this.f39268f.get();
    }

    public DownloadStrategy.FilenameHolder getFilenameHolder() {
        return this.f39268f;
    }

    public int getId() {
        return this.f39263a;
    }

    public long getTotalLength() {
        if (isChunked()) {
            return getTotalOffset();
        }
        Object[] array = this.f39269g.toArray();
        long j = 0;
        if (array != null) {
            for (Object obj : array) {
                if (obj instanceof BlockInfo) {
                    j += ((BlockInfo) obj).getContentLength();
                }
            }
        }
        return j;
    }

    public long getTotalOffset() {
        Object[] array = this.f39269g.toArray();
        long j = 0;
        if (array != null) {
            for (Object obj : array) {
                if (obj instanceof BlockInfo) {
                    j += ((BlockInfo) obj).getCurrentOffset();
                }
            }
        }
        return j;
    }

    public String getUrl() {
        return this.f39264b;
    }

    public boolean isChunked() {
        return this.f39271i;
    }

    public boolean isLastBlock(int i) {
        return i == this.f39269g.size() - 1;
    }

    public boolean isSameFrom(DownloadTask downloadTask) {
        if (!this.f39266d.equals(downloadTask.getParentFile()) || !this.f39264b.equals(downloadTask.getUrl())) {
            return false;
        }
        String filename = downloadTask.getFilename();
        if (filename != null && filename.equals(this.f39268f.get())) {
            return true;
        }
        if (this.f39270h && downloadTask.isFilenameFromResponse()) {
            return filename == null || filename.equals(this.f39268f.get());
        }
        return false;
    }

    public boolean isSingleBlock() {
        return this.f39269g.size() == 1;
    }

    public void resetBlockInfos() {
        this.f39269g.clear();
    }

    public void resetInfo() {
        this.f39269g.clear();
        this.f39265c = null;
    }

    public void reuseBlocks(BreakpointInfo breakpointInfo) {
        this.f39269g.clear();
        this.f39269g.addAll(breakpointInfo.f39269g);
    }

    public void setChunked(boolean z) {
        this.f39271i = z;
    }

    public void setEtag(String str) {
        this.f39265c = str;
    }

    public String toString() {
        return "id[" + this.f39263a + "] url[" + this.f39264b + "] etag[" + this.f39265c + "] taskOnlyProvidedParentPath[" + this.f39270h + "] parent path[" + this.f39266d + "] filename[" + this.f39268f.get() + "] block(s):" + this.f39269g.toString();
    }

    public BreakpointInfo(int i, @NonNull String str, @NonNull File file, @Nullable String str2, boolean z) {
        this.f39263a = i;
        this.f39264b = str;
        this.f39266d = file;
        if (Util.isEmpty(str2)) {
            this.f39268f = new DownloadStrategy.FilenameHolder();
        } else {
            this.f39268f = new DownloadStrategy.FilenameHolder(str2);
        }
        this.f39270h = z;
    }
}
