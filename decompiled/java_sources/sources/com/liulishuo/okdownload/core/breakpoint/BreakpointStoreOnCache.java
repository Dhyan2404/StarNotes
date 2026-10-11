package com.liulishuo.okdownload.core.breakpoint;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.IdentifiedTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes4.dex */
public class BreakpointStoreOnCache implements DownloadStore {
    public static final int FIRST_ID = 1;

    /* renamed from: a */
    public final SparseArray<BreakpointInfo> f39286a;

    /* renamed from: b */
    public final HashMap<String, String> f39287b;

    /* renamed from: c */
    @NonNull
    public final KeyToIdMap f39288c;

    /* renamed from: d */
    public final SparseArray<IdentifiedTask> f39289d;

    /* renamed from: e */
    public final List<Integer> f39290e;

    /* renamed from: f */
    public final List<Integer> f39291f;

    public BreakpointStoreOnCache() {
        this(new SparseArray(), new ArrayList(), new HashMap());
    }

    /* renamed from: a */
    public synchronized int m30994a() {
        int i;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 1;
            if (i3 >= this.f39290e.size()) {
                i3 = 0;
                break;
            }
            Integer num = this.f39290e.get(i3);
            if (num == null) {
                i2 = i4 + 1;
                break;
            }
            int intValue = num.intValue();
            if (i4 != 0) {
                int i5 = i4 + 1;
                if (intValue != i5) {
                    i2 = i5;
                    break;
                }
                i3++;
                i4 = intValue;
            } else {
                if (intValue != 1) {
                    i3 = 0;
                    i2 = 1;
                    break;
                }
                i3++;
                i4 = intValue;
            }
        }
        if (i2 != 0) {
            i = i2;
        } else if (!this.f39290e.isEmpty()) {
            List<Integer> list = this.f39290e;
            i = 1 + list.get(list.size() - 1).intValue();
            i3 = this.f39290e.size();
        }
        this.f39290e.add(i3, Integer.valueOf(i));
        return i;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    @NonNull
    public BreakpointInfo createAndInsert(@NonNull DownloadTask downloadTask) {
        int id = downloadTask.getId();
        BreakpointInfo breakpointInfo = new BreakpointInfo(id, downloadTask.getUrl(), downloadTask.getParentFile(), downloadTask.getFilename());
        synchronized (this) {
            this.f39286a.put(id, breakpointInfo);
            this.f39289d.remove(id);
        }
        return breakpointInfo;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public BreakpointInfo findAnotherInfoFromCompare(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
        SparseArray<BreakpointInfo> clone;
        synchronized (this) {
            clone = this.f39286a.clone();
        }
        int size = clone.size();
        for (int i = 0; i < size; i++) {
            BreakpointInfo valueAt = clone.valueAt(i);
            if (valueAt != breakpointInfo && valueAt.isSameFrom(downloadTask)) {
                return valueAt;
            }
        }
        return null;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public synchronized int findOrCreateId(@NonNull DownloadTask downloadTask) {
        Integer num = this.f39288c.get(downloadTask);
        if (num != null) {
            return num.intValue();
        }
        int size = this.f39286a.size();
        for (int i = 0; i < size; i++) {
            BreakpointInfo valueAt = this.f39286a.valueAt(i);
            if (valueAt != null && valueAt.isSameFrom(downloadTask)) {
                return valueAt.f39263a;
            }
        }
        int size2 = this.f39289d.size();
        for (int i2 = 0; i2 < size2; i2++) {
            IdentifiedTask valueAt2 = this.f39289d.valueAt(i2);
            if (valueAt2 != null && valueAt2.compareIgnoreId(downloadTask)) {
                return valueAt2.getId();
            }
        }
        int m30994a = m30994a();
        this.f39289d.put(m30994a, downloadTask.mock(m30994a));
        this.f39288c.add(downloadTask, m30994a);
        return m30994a;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public BreakpointInfo get(int i) {
        return this.f39286a.get(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    @Nullable
    public BreakpointInfo getAfterCompleted(int i) {
        return null;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    @Nullable
    public String getResponseFilename(String str) {
        return this.f39287b.get(str);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public boolean isFileDirty(int i) {
        return this.f39291f.contains(Integer.valueOf(i));
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public boolean isOnlyMemoryCache() {
        return true;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public boolean markFileClear(int i) {
        boolean remove;
        synchronized (this.f39291f) {
            remove = this.f39291f.remove(Integer.valueOf(i));
        }
        return remove;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public boolean markFileDirty(int i) {
        if (this.f39291f.contains(Integer.valueOf(i))) {
            return false;
        }
        synchronized (this.f39291f) {
            if (this.f39291f.contains(Integer.valueOf(i))) {
                return false;
            }
            this.f39291f.add(Integer.valueOf(i));
            return true;
        }
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public void onSyncToFilesystemSuccess(@NonNull BreakpointInfo breakpointInfo, int i, long j) throws IOException {
        BreakpointInfo breakpointInfo2 = this.f39286a.get(breakpointInfo.f39263a);
        if (breakpointInfo != breakpointInfo2) {
            throw new IOException("Info not on store!");
        }
        breakpointInfo2.getBlock(i).increaseCurrentOffset(j);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public void onTaskEnd(int i, @NonNull EndCause endCause, @Nullable Exception exc) {
        if (endCause == EndCause.COMPLETED) {
            remove(i);
        }
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public void onTaskStart(int i) {
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public synchronized void remove(int i) {
        this.f39286a.remove(i);
        if (this.f39289d.get(i) == null) {
            this.f39290e.remove(Integer.valueOf(i));
        }
        this.f39288c.remove(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public boolean update(@NonNull BreakpointInfo breakpointInfo) {
        String filename = breakpointInfo.getFilename();
        if (breakpointInfo.m30991a() && filename != null) {
            this.f39287b.put(breakpointInfo.getUrl(), filename);
        }
        BreakpointInfo breakpointInfo2 = this.f39286a.get(breakpointInfo.f39263a);
        if (breakpointInfo2 == null) {
            return false;
        }
        if (breakpointInfo2 == breakpointInfo) {
            return true;
        }
        synchronized (this) {
            this.f39286a.put(breakpointInfo.f39263a, breakpointInfo.copy());
        }
        return true;
    }

    public BreakpointStoreOnCache(SparseArray<BreakpointInfo> sparseArray, List<Integer> list, HashMap<String, String> hashMap, SparseArray<IdentifiedTask> sparseArray2, List<Integer> list2, KeyToIdMap keyToIdMap) {
        this.f39289d = sparseArray2;
        this.f39291f = list;
        this.f39286a = sparseArray;
        this.f39287b = hashMap;
        this.f39290e = list2;
        this.f39288c = keyToIdMap;
    }

    public BreakpointStoreOnCache(SparseArray<BreakpointInfo> sparseArray, List<Integer> list, HashMap<String, String> hashMap) {
        this.f39289d = new SparseArray<>();
        this.f39286a = sparseArray;
        this.f39291f = list;
        this.f39287b = hashMap;
        this.f39288c = new KeyToIdMap();
        int size = sparseArray.size();
        this.f39290e = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            this.f39290e.add(Integer.valueOf(sparseArray.valueAt(i).f39263a));
        }
        Collections.sort(this.f39290e);
    }
}
