package com.google.android.datatransport.runtime.util;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

/* loaded from: classes4.dex */
public final class PriorityMapping {

    /* renamed from: a */
    public static SparseArray<Priority> f22169a = new SparseArray<>();

    /* renamed from: b */
    public static HashMap<Priority, Integer> f22170b;

    static {
        HashMap<Priority, Integer> hashMap = new HashMap<>();
        f22170b = hashMap;
        hashMap.put(Priority.DEFAULT, 0);
        f22170b.put(Priority.VERY_LOW, 1);
        f22170b.put(Priority.HIGHEST, 2);
        for (Priority priority : f22170b.keySet()) {
            f22169a.append(f22170b.get(priority).intValue(), priority);
        }
    }

    public static int toInt(@NonNull Priority priority) {
        Integer num = f22170b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    @NonNull
    public static Priority valueOf(int i) {
        Priority priority = f22169a.get(i);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
