package com.sunia.HTREnginev2;

import android.widget.SearchView;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class wwl {

    /* renamed from: com.sunia.HTREnginev2.wwl$a */
    /* loaded from: classes4.dex */
    public static final class C14625a<T> implements Consumer<CharSequence> {

        /* renamed from: e */
        public final /* synthetic */ SearchView f89055e;

        /* renamed from: f */
        public final /* synthetic */ boolean f89056f;

        public C14625a(SearchView searchView, boolean z) {
            this.f89055e = searchView;
            this.f89056f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(CharSequence charSequence) {
            this.f89055e.setQuery(charSequence, this.f89056f);
        }
    }

    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Consumer<? super CharSequence> m58140a(@NotNull SearchView query, boolean z) {
        Intrinsics.checkParameterIsNotNull(query, "$this$query");
        return new C14625a(query, z);
    }
}
