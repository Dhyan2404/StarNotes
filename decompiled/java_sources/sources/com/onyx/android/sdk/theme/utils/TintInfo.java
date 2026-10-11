package com.onyx.android.sdk.theme.utils;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import androidx.annotation.RestrictTo;
import java.util.LinkedList;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes8.dex */
public class TintInfo {

    /* renamed from: a */
    public int[] f46859a;

    /* renamed from: b */
    public int[][] f46860b;
    public boolean mHasTintList;
    public boolean mHasTintMode;
    public ColorStateList mTintList;
    public PorterDuff.Mode mTintMode;

    public TintInfo() {
    }

    public boolean isInvalid() {
        int[][] iArr;
        int[] iArr2 = this.f46859a;
        return iArr2 == null || (iArr = this.f46860b) == null || iArr2.length != iArr.length;
    }

    public TintInfo(LinkedList<int[]> linkedList, LinkedList<Integer> linkedList2) {
        if (linkedList2 == null || linkedList == null) {
            return;
        }
        this.f46859a = new int[linkedList2.size()];
        for (int i = 0; i < linkedList2.size(); i++) {
            this.f46859a[i] = linkedList2.get(i).intValue();
        }
        this.f46860b = (int[][]) linkedList.toArray(new int[linkedList.size()]);
    }
}
