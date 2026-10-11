package com.onyx.android.sdk.base.extension;

import androidx.lifecycle.Lifecycle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B#\u0012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0001`\u0005¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/LifecycleDestroyObserver;", "Lcom/onyx/android/sdk/base/extension/LifecyclePointObserver;", Constants.TRANSLET_OUTPUT_PNAME, "Lkotlin/Function1;", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", "(Lkotlin/jvm/functions/Function1;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LifecycleDestroyObserver extends LifecyclePointObserver {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LifecycleDestroyObserver(@NotNull Function1<? super LifecyclePointObserver, Unit> handler) {
        super(Lifecycle.Event.ON_DESTROY, handler);
        Intrinsics.checkNotNullParameter(handler, "handler");
    }
}
