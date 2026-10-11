package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Comparator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzanv implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((String) ((Map.Entry) obj).getKey()).compareTo((String) ((Map.Entry) obj2).getKey());
    }
}
