package com.onyx.android.sdk.base.extension;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u001c\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u000bj\b\u0012\u0004\u0012\u00020\u0000`\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR*\u0010\u000f\u001a\u0018\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u000bj\b\u0012\u0004\u0012\u00020\u0000`\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/LifecyclePointObserver;", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroidx/lifecycle/LifecycleOwner;", "source", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "", "onStateChanged", "e", "Landroidx/lifecycle/Lifecycle$Event;", "point", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", C6997f.f39671c, "Lkotlin/jvm/functions/Function1;", Constants.TRANSLET_OUTPUT_PNAME, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/lifecycle/Lifecycle$Event;Lkotlin/jvm/functions/Function1;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class LifecyclePointObserver implements LifecycleEventObserver {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lifecycle.Event point;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function1<LifecyclePointObserver, Unit> handler;

    /* JADX WARN: Multi-variable type inference failed */
    public LifecyclePointObserver(@NotNull Lifecycle.Event point, @NotNull Function1<? super LifecyclePointObserver, Unit> handler) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.point = point;
        this.handler = handler;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == this.point) {
            this.handler.invoke(this);
        }
    }
}
