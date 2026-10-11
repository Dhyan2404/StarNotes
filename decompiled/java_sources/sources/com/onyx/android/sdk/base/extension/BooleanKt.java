package com.onyx.android.sdk.base.extension;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u001a5\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\u0010\u0007\u001a)\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u0006\u0010\b\u001a\u0002H\u00012\u0006\u0010\t\u001a\u0002H\u0001¢\u0006\u0002\u0010\n\u001a\u001f\u0010\u000b\u001a\u00020\f*\u0004\u0018\u00010\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\u0002\u0010\u000e\u001a.\u0010\u000f\u001a\u00020\f\"\u0006\b\u0000\u0010\u0001\u0018\u0001*\u0004\u0018\u00010\u00022\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\f0\u0010H\u0086\bø\u0001\u0000\u001a\u001f\u0010\u0011\u001a\u00020\f*\u0004\u0018\u00010\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\u0002\u0010\u000e\u001a\u0011\u0010\u0012\u001a\u00020\u0013*\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0014\u001a\u0011\u0010\u0015\u001a\u00020\u0013*\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0014\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, m61528d2 = {"mapByTrueFalse", "T", "", "", "trueMapper", "Lkotlin/Function0;", "falseMapper", "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "trueValue", "falseValue", "(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "takeIfFalse", "", "action", "(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V", "takeIfInstanceOf", "Lkotlin/Function1;", "takeIfTrue", "toInteger", "", "(Ljava/lang/Boolean;)I", "toSignInteger", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nBoolean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Boolean.kt\ncom/onyx/android/sdk/base/extension/BooleanKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"})
/* loaded from: classes7.dex */
public final class BooleanKt {
    @NotNull
    public static final <T> T mapByTrueFalse(boolean z, @NotNull Function0<? extends T> trueMapper, @NotNull Function0<? extends T> falseMapper) {
        Intrinsics.checkNotNullParameter(trueMapper, "trueMapper");
        Intrinsics.checkNotNullParameter(falseMapper, "falseMapper");
        return z ? trueMapper.invoke() : falseMapper.invoke();
    }

    public static final void takeIfFalse(@Nullable Boolean bool, @NotNull Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (!Intrinsics.areEqual(bool, Boolean.FALSE)) {
            bool = null;
        }
        if (bool != null) {
            bool.booleanValue();
            action.invoke();
        }
    }

    public static final /* synthetic */ <T> void takeIfInstanceOf(Object obj, Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.reifiedOperationMarker(2, "T");
        if (obj == null) {
            return;
        }
        action.invoke(obj);
    }

    public static final void takeIfTrue(@Nullable Boolean bool, @NotNull Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (!Intrinsics.areEqual(bool, Boolean.TRUE)) {
            bool = null;
        }
        if (bool != null) {
            bool.booleanValue();
            action.invoke();
        }
    }

    public static final int toInteger(@Nullable Boolean bool) {
        return Intrinsics.areEqual(bool, Boolean.TRUE) ? 1 : 0;
    }

    public static final int toSignInteger(@Nullable Boolean bool) {
        return Intrinsics.areEqual(bool, Boolean.TRUE) ? 1 : -1;
    }

    @NotNull
    public static final <T> T mapByTrueFalse(boolean z, @NotNull final T trueValue, @NotNull final T falseValue) {
        Intrinsics.checkNotNullParameter(trueValue, "trueValue");
        Intrinsics.checkNotNullParameter(falseValue, "falseValue");
        return (T) mapByTrueFalse(z, (Function0) new Function0<T>() { // from class: com.onyx.android.sdk.base.extension.BooleanKt$mapByTrueFalse$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final T invoke() {
                return trueValue;
            }
        }, (Function0) new Function0<T>() { // from class: com.onyx.android.sdk.base.extension.BooleanKt$mapByTrueFalse$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final T invoke() {
                return falseValue;
            }
        });
    }
}
