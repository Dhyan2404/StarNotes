package com.onyx.galaxy.note.category.p044ui;

import androidx.lifecycle.Observer;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000*\n\u0010\u0000\"\u00020\u00012\u00020\u0001¨\u0006\u0002"}, m61528d2 = {"DataIntRes", "Lcom/onyx/android/sdk/data/R$integer;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteTemplateFragmentKt {

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteTemplateFragmentKt$a */
    /* loaded from: classes9.dex */
    public static final class C11339a implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f54886a;

        public C11339a(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f54886a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f54886a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f54886a.invoke(obj);
        }
    }
}
