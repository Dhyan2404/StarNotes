package com.liulishuo.okdownload.core.breakpoint;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class KeyToIdMap {

    /* renamed from: a */
    @NonNull
    public final HashMap<String, Integer> f39293a;

    /* renamed from: b */
    @NonNull
    public final SparseArray<String> f39294b;

    public KeyToIdMap() {
        this(new HashMap(), new SparseArray());
    }

    /* renamed from: a */
    public String m30996a(@NonNull DownloadTask downloadTask) {
        return downloadTask.getUrl() + downloadTask.getUri() + downloadTask.getFilename();
    }

    public void add(@NonNull DownloadTask downloadTask, int i) {
        String m30996a = m30996a(downloadTask);
        this.f39293a.put(m30996a, Integer.valueOf(i));
        this.f39294b.put(i, m30996a);
    }

    @Nullable
    public Integer get(@NonNull DownloadTask downloadTask) {
        Integer num = this.f39293a.get(m30996a(downloadTask));
        if (num != null) {
            return num;
        }
        return null;
    }

    public void remove(int i) {
        String str = this.f39294b.get(i);
        if (str != null) {
            this.f39293a.remove(str);
            this.f39294b.remove(i);
        }
    }

    public KeyToIdMap(@NonNull HashMap<String, Integer> hashMap, @NonNull SparseArray<String> sparseArray) {
        this.f39293a = hashMap;
        this.f39294b = sparseArray;
    }
}
