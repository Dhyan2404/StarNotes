package com.sunia.HTREnginev2;

import android.widget.RadioGroup;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class pwl {

    /* renamed from: com.sunia.HTREnginev2.pwl$a */
    /* loaded from: classes4.dex */
    public static final class C14266a<T> implements Consumer<Integer> {

        /* renamed from: e */
        public final /* synthetic */ RadioGroup f81339e;

        public C14266a(RadioGroup radioGroup) {
            this.f81339e = radioGroup;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Integer num) {
            if (num != null && num.intValue() == -1) {
                this.f81339e.clearCheck();
                return;
            }
            RadioGroup radioGroup = this.f81339e;
            if (num == null) {
                Intrinsics.throwNpe();
            }
            radioGroup.check(num.intValue());
        }
    }

    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Consumer<? super Integer> m56450a(@NotNull RadioGroup checked) {
        Intrinsics.checkParameterIsNotNull(checked, "$this$checked");
        return new C14266a(checked);
    }
}
