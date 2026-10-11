package com.onyx.android.sdk.universal.editor.eventhandler;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.app.EditorCreatedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.observer.DebugLifecycleObserver;
import com.onyx.android.sdk.universal.editor.observer.InsertPageFromPdfObserver;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002R(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/eventhandler/ObserverEventHandler;", "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;", "Lcom/onyx/android/sdk/universal/editor/events/app/EditorCreatedEvent;", NotificationCompat.CATEGORY_EVENT, "", "onEditorCreatedEvent", "destroy", "a", "b", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroidx/lifecycle/Lifecycle;", C6997f.f39671c, "Ljava/util/concurrent/atomic/AtomicReference;", "getLifecycleReference", "()Ljava/util/concurrent/atomic/AtomicReference;", "setLifecycleReference", "(Ljava/util/concurrent/atomic/AtomicReference;)V", "lifecycleReference", "", "Landroidx/lifecycle/LifecycleObserver;", C6998g.f39679a, "Ljava/util/List;", "getObserverList", "()Ljava/util/List;", "setObserverList", "(Ljava/util/List;)V", "observerList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nObserverEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObserverEventHandler.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/ObserverEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1855#2,2:64\n1855#2,2:66\n*S KotlinDebug\n*F\n+ 1 ObserverEventHandler.kt\ncom/onyx/android/sdk/universal/editor/eventhandler/ObserverEventHandler\n*L\n40#1:64,2\n54#1:66,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ObserverEventHandler extends BaseEventHandler {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public AtomicReference<Lifecycle> lifecycleReference;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<LifecycleObserver> observerList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObserverEventHandler(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.lifecycleReference = new AtomicReference<>();
        this.observerList = new ArrayList();
    }

    /* renamed from: a */
    public final void m40872a(EditorCreatedEvent event) {
        this.lifecycleReference.set(event.getCom.alibaba.sdk.android.oss.common.RequestParameters.SUBRESOURCE_LIFECYCLE java.lang.String());
        Lifecycle lifecycle = this.lifecycleReference.get();
        if (lifecycle == null) {
            return;
        }
        this.observerList.add(new DebugLifecycleObserver());
        InsertPageFromPdfObserver insertPageFromPdfObserver = new InsertPageFromPdfObserver();
        insertPageFromPdfObserver.setEventBus(EditorBundleKt.appEventBus(getEditorBundle()));
        insertPageFromPdfObserver.setActivityResultLauncher(event.getActivityResultLauncher());
        this.observerList.add(insertPageFromPdfObserver);
        for (LifecycleObserver lifecycleObserver : this.observerList) {
            lifecycle.addObserver(lifecycleObserver);
            Debug.INSTANCE.m32042d(Reflection.getOrCreateKotlinClass(ObserverEventHandler.class), "addObserver " + lifecycleObserver.getClass().getSimpleName(), new Object[0]);
        }
    }

    /* renamed from: b */
    public final void m40873b() {
        Lifecycle lifecycle = this.lifecycleReference.get();
        if (lifecycle != null) {
            for (LifecycleObserver lifecycleObserver : this.observerList) {
                lifecycle.removeObserver(lifecycleObserver);
                Debug.INSTANCE.m32042d(Reflection.getOrCreateKotlinClass(ObserverEventHandler.class), "removeObserver " + lifecycleObserver.getClass().getSimpleName(), new Object[0]);
            }
        }
        this.observerList.clear();
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler, com.onyx.android.sdk.universal.editor.eventhandler.EventHandler
    public void destroy() {
        super.destroy();
        m40873b();
        this.lifecycleReference.set(null);
    }

    @NotNull
    public final AtomicReference<Lifecycle> getLifecycleReference() {
        return this.lifecycleReference;
    }

    @NotNull
    public final List<LifecycleObserver> getObserverList() {
        return this.observerList;
    }

    @Override // com.onyx.android.sdk.universal.editor.eventhandler.BaseEventHandler
    public void onEditorCreatedEvent(@NotNull EditorCreatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m40872a(event);
    }

    public final void setLifecycleReference(@NotNull AtomicReference<Lifecycle> atomicReference) {
        Intrinsics.checkNotNullParameter(atomicReference, "<set-?>");
        this.lifecycleReference = atomicReference;
    }

    public final void setObserverList(@NotNull List<LifecycleObserver> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.observerList = list;
    }
}
