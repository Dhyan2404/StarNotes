package com.google.android.material.sidesheet;

import androidx.annotation.RestrictTo;
import com.google.android.material.motion.MaterialBackHandler;
import com.sunia.HTREnginev2.tnm;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes6.dex */
public interface Sheet<C extends tnm> extends MaterialBackHandler {

    /* renamed from: a0 */
    public static final int f32335a0 = 1;

    /* renamed from: b0 */
    public static final int f32336b0 = 2;

    /* renamed from: c0 */
    public static final int f32337c0 = 3;

    /* renamed from: d0 */
    public static final int f32338d0 = 5;

    /* renamed from: e0 */
    public static final int f32339e0 = 0;

    /* renamed from: f0 */
    public static final int f32340f0 = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface SheetEdge {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface SheetState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface StableSheetState {
    }

    void addCallback(C c);

    int getState();

    void removeCallback(C c);

    void setState(int i);
}
