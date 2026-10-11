package com.sunia.HTREnginev2;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes6.dex */
public class tum extends LinearLayoutManager {

    /* renamed from: C0 */
    public static final float f85785C0 = 100.0f;

    /* renamed from: com.sunia.HTREnginev2.tum$a */
    /* loaded from: classes6.dex */
    public class C14474a extends LinearSmoothScroller {
        public C14474a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public tum(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        C14474a c14474a = new C14474a(recyclerView.getContext());
        c14474a.setTargetPosition(i);
        startSmoothScroll(c14474a);
    }
}
