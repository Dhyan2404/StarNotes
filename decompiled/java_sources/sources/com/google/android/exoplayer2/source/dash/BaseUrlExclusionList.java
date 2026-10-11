package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.source.dash.BaseUrlExclusionList;
import com.google.android.exoplayer2.source.dash.manifest.BaseUrl;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.Iterables;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes5.dex */
public final class BaseUrlExclusionList {

    /* renamed from: a */
    public final Map<String, Long> f25685a;

    /* renamed from: b */
    public final Map<Integer, Long> f25686b;

    /* renamed from: c */
    public final Map<List<Pair<String, Integer>>, BaseUrl> f25687c;

    /* renamed from: d */
    public final Random f25688d;

    public BaseUrlExclusionList() {
        this(new Random());
    }

    /* renamed from: b */
    public static <T> void m19921b(T t, long j, Map<T, Long> map) {
        if (map.containsKey(t)) {
            j = Math.max(j, ((Long) Util.castNonNull(map.get(t))).longValue());
        }
        map.put(t, Long.valueOf(j));
    }

    /* renamed from: d */
    public static int m19922d(BaseUrl baseUrl, BaseUrl baseUrl2) {
        int compare = Integer.compare(baseUrl.priority, baseUrl2.priority);
        return compare != 0 ? compare : baseUrl.serviceLocation.compareTo(baseUrl2.serviceLocation);
    }

    /* renamed from: e */
    public static <T> void m19923e(long j, Map<T, Long> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<T, Long> entry : map.entrySet()) {
            if (entry.getValue().longValue() <= j) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            map.remove(arrayList.get(i));
        }
    }

    public static int getPriorityCount(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            hashSet.add(Integer.valueOf(list.get(i).priority));
        }
        return hashSet.size();
    }

    /* renamed from: c */
    public final List<BaseUrl> m19924c(List<BaseUrl> list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        m19923e(elapsedRealtime, this.f25685a);
        m19923e(elapsedRealtime, this.f25686b);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            BaseUrl baseUrl = list.get(i);
            if (!this.f25685a.containsKey(baseUrl.serviceLocation) && !this.f25686b.containsKey(Integer.valueOf(baseUrl.priority))) {
                arrayList.add(baseUrl);
            }
        }
        return arrayList;
    }

    public void exclude(BaseUrl baseUrl, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        m19921b(baseUrl.serviceLocation, elapsedRealtime, this.f25685a);
        int i = baseUrl.priority;
        if (i != Integer.MIN_VALUE) {
            m19921b(Integer.valueOf(i), elapsedRealtime, this.f25686b);
        }
    }

    /* renamed from: f */
    public final BaseUrl m19925f(List<BaseUrl> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            i += list.get(i2).weight;
        }
        int nextInt = this.f25688d.nextInt(i);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            BaseUrl baseUrl = list.get(i4);
            i3 += baseUrl.weight;
            if (nextInt < i3) {
                return baseUrl;
            }
        }
        return (BaseUrl) Iterables.getLast(list);
    }

    public int getPriorityCountAfterExclusion(List<BaseUrl> list) {
        HashSet hashSet = new HashSet();
        List<BaseUrl> m19924c = m19924c(list);
        for (int i = 0; i < m19924c.size(); i++) {
            hashSet.add(Integer.valueOf(m19924c.get(i).priority));
        }
        return hashSet.size();
    }

    public void reset() {
        this.f25685a.clear();
        this.f25686b.clear();
        this.f25687c.clear();
    }

    @Nullable
    public BaseUrl selectBaseUrl(List<BaseUrl> list) {
        List<BaseUrl> m19924c = m19924c(list);
        if (m19924c.size() < 2) {
            return (BaseUrl) Iterables.getFirst(m19924c, null);
        }
        Collections.sort(m19924c, new Comparator() { // from class: com.sunia.HTREnginev2.ko
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m19922d;
                m19922d = BaseUrlExclusionList.m19922d((BaseUrl) obj, (BaseUrl) obj2);
                return m19922d;
            }
        });
        ArrayList arrayList = new ArrayList();
        int i = m19924c.get(0).priority;
        int i2 = 0;
        while (true) {
            if (i2 >= m19924c.size()) {
                break;
            }
            BaseUrl baseUrl = m19924c.get(i2);
            if (i == baseUrl.priority) {
                arrayList.add(new Pair(baseUrl.serviceLocation, Integer.valueOf(baseUrl.weight)));
                i2++;
            } else if (arrayList.size() == 1) {
                return m19924c.get(0);
            }
        }
        BaseUrl baseUrl2 = this.f25687c.get(arrayList);
        if (baseUrl2 != null) {
            return baseUrl2;
        }
        BaseUrl m19925f = m19925f(m19924c.subList(0, arrayList.size()));
        this.f25687c.put(arrayList, m19925f);
        return m19925f;
    }

    @VisibleForTesting
    public BaseUrlExclusionList(Random random) {
        this.f25687c = new HashMap();
        this.f25688d = random;
        this.f25685a = new HashMap();
        this.f25686b = new HashMap();
    }
}
