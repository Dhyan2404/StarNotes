package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.view.RxView;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class byl {

    /* renamed from: com.sunia.HTREnginev2.byl$a */
    /* loaded from: classes4.dex */
    public static final class C13543a<T> implements Consumer<Boolean> {

        /* renamed from: e */
        public final /* synthetic */ View f66268e;

        /* renamed from: f */
        public final /* synthetic */ int f66269f;

        public C13543a(View view, int i) {
            this.f66268e = view;
            this.f66269f = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Boolean value) {
            View view = this.f66268e;
            Intrinsics.checkExpressionValueIsNotNull(value, "value");
            view.setVisibility(value.booleanValue() ? 0 : this.f66269f);
        }
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Consumer<? super Boolean> m53356a(@NotNull View view) {
        return RxView.visibility$default(view, 0, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Consumer<? super Boolean> m53357b(@NotNull View visibility, int i) {
        Intrinsics.checkParameterIsNotNull(visibility, "$this$visibility");
        boolean z = true;
        if (!(i != 0)) {
            throw new IllegalArgumentException("Setting visibility to VISIBLE when false would have no effect.".toString());
        }
        if (i != 4 && i != 8) {
            z = false;
        }
        if (z) {
            return new C13543a(visibility, i);
        }
        throw new IllegalArgumentException("Must set visibility to INVISIBLE or GONE when false.".toString());
    }

    /* renamed from: c */
    public static /* synthetic */ Consumer m53358c(View view, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8;
        }
        return RxView.visibility(view, i);
    }
}
