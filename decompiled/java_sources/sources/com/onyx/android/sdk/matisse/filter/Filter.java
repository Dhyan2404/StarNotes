package com.onyx.android.sdk.matisse.filter;

import android.content.Context;
import com.onyx.android.sdk.matisse.MimeType;
import com.onyx.android.sdk.matisse.internal.entity.IncapableCause;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes7.dex */
public abstract class Filter {

    /* renamed from: K */
    public static final int f42699K = 1024;
    public static final int MAX = Integer.MAX_VALUE;
    public static final int MIN = 0;

    public abstract Set<MimeType> constraintTypes();

    public abstract IncapableCause filter(Context context, Item item);

    public boolean needFiltering(Context context, Item item) {
        Iterator<MimeType> it2 = constraintTypes().iterator();
        while (it2.hasNext()) {
            if (it2.next().checkType(context.getContentResolver(), item.getContentUri())) {
                return true;
            }
        }
        return false;
    }
}
