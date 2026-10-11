package com.sunia.HTREnginev2;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes12.dex */
public final class kee {
    /* renamed from: a */
    public static Map<CharSequence, Integer> m55206a(CharSequence[] charSequenceArr) {
        HashMap hashMap = new HashMap();
        for (CharSequence charSequence : charSequenceArr) {
            if (hashMap.containsKey(charSequence)) {
                hashMap.put(charSequence, Integer.valueOf(((Integer) hashMap.get(charSequence)).intValue() + 1));
            } else {
                hashMap.put(charSequence, 1);
            }
        }
        return hashMap;
    }
}
