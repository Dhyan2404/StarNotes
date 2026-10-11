package com.sunia.HTREnginev2;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* renamed from: com.sunia.HTREnginev2.xa */
/* loaded from: classes3.dex */
public final class C14645xa {

    /* renamed from: b */
    public static final ViewGroup.MarginLayoutParams f89420b;

    /* renamed from: a */
    public LinearLayoutManager f89421a;

    /* renamed from: com.sunia.HTREnginev2.xa$a */
    /* loaded from: classes3.dex */
    public class a implements Comparator<int[]> {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(int[] iArr, int[] iArr2) {
            return iArr[0] - iArr2[0];
        }
    }

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f89420b = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    public C14645xa(@NonNull LinearLayoutManager linearLayoutManager) {
        this.f89421a = linearLayoutManager;
    }

    /* renamed from: c */
    public static boolean m58164c(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (m58164c(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m58165a() {
        int top;
        int i;
        int bottom;
        int i2;
        int childCount = this.f89421a.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z = this.f89421a.getOrientation() == 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, childCount, 2);
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.f89421a.getChildAt(i3);
            if (childAt == null) {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : f89420b;
            int[] iArr2 = iArr[i3];
            if (z) {
                top = childAt.getLeft();
                i = marginLayoutParams.leftMargin;
            } else {
                top = childAt.getTop();
                i = marginLayoutParams.topMargin;
            }
            iArr2[0] = top - i;
            int[] iArr3 = iArr[i3];
            if (z) {
                bottom = childAt.getRight();
                i2 = marginLayoutParams.rightMargin;
            } else {
                bottom = childAt.getBottom();
                i2 = marginLayoutParams.bottomMargin;
            }
            iArr3[1] = bottom + i2;
        }
        Arrays.sort(iArr, new a());
        for (int i4 = 1; i4 < childCount; i4++) {
            if (iArr[i4 - 1][1] != iArr[i4][0]) {
                return false;
            }
        }
        int[] iArr4 = iArr[0];
        int i5 = iArr4[1];
        int i6 = iArr4[0];
        return i6 <= 0 && iArr[childCount - 1][1] >= i5 - i6;
    }

    /* renamed from: b */
    public final boolean m58166b() {
        int childCount = this.f89421a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m58164c(this.f89421a.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public boolean m58167d() {
        return (!m58165a() || this.f89421a.getChildCount() <= 1) && m58166b();
    }
}
