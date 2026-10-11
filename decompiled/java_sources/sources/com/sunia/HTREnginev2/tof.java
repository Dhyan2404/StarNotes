package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public class tof {

    @RequiresApi(34)
    /* renamed from: com.sunia.HTREnginev2.tof$a */
    /* loaded from: classes3.dex */
    public static class C14465a {
        @NonNull
        @DoNotInline
        /* renamed from: a */
        public static Set<int[]> m57418a() {
            return C14466b.m57419a();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.tof$b */
    /* loaded from: classes3.dex */
    public static class C14466b {
        @NonNull
        @SuppressLint({"BanUncheckedReflection"})
        /* renamed from: a */
        public static Set<int[]> m57419a() {
            try {
                Object invoke = Class.forName("android.text.EmojiConsistency").getMethod("getEmojiConsistencySet", new Class[0]).invoke(null, new Object[0]);
                if (invoke == null) {
                    return Collections.emptySet();
                }
                Set<int[]> set = (Set) invoke;
                Iterator<int[]> it2 = set.iterator();
                while (it2.hasNext()) {
                    if (!(it2.next() instanceof int[])) {
                        return Collections.emptySet();
                    }
                }
                return set;
            } catch (Throwable unused) {
                return Collections.emptySet();
            }
        }
    }

    @NonNull
    /* renamed from: a */
    public static Set<int[]> m57417a() {
        return Build.VERSION.SDK_INT >= 34 ? C14465a.m57418a() : C14466b.m57419a();
    }
}
