package com.onyx.android.sdk.universal.editor.observer;

import android.net.Uri;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.universal.editor.data.InsertPageArgs;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageEvent;
import com.onyx.android.sdk.universal.editor.events.app.InsertPageFromPdfEvent;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0007\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002R$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001e\u0010$\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R$\u0010,\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/lifecycle/LifecycleOwner;", "owner", "", "onCreate", "onDestroy", "performFileSearch", "Lcom/onyx/android/sdk/universal/editor/events/app/InsertPageFromPdfEvent;", NotificationCompat.CATEGORY_EVENT, "onInsertPageFromPdfEvent", "c", "b", "Landroid/net/Uri;", "uri", "a", "Lorg/greenrobot/eventbus/EventBus;", "e", "Lorg/greenrobot/eventbus/EventBus;", "getEventBus", "()Lorg/greenrobot/eventbus/EventBus;", "setEventBus", "(Lorg/greenrobot/eventbus/EventBus;)V", "eventBus", "Landroidx/activity/result/ActivityResultCaller;", C6997f.f39671c, "Landroidx/activity/result/ActivityResultCaller;", "getActivityResultLauncher", "()Landroidx/activity/result/ActivityResultCaller;", "setActivityResultLauncher", "(Landroidx/activity/result/ActivityResultCaller;)V", "activityResultLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "", C6998g.f39679a, "Landroidx/activity/result/ActivityResultLauncher;", "getContent", "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "getInsertPageArgs", "()Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;", "setInsertPageArgs", "(Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;)V", "insertPageArgs", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class InsertPageFromPdfObserver implements DefaultLifecycleObserver {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public EventBus eventBus;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ActivityResultCaller activityResultLauncher;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ActivityResultLauncher<String> getContent;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public InsertPageArgs insertPageArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.observer.InsertPageFromPdfObserver$a */
    /* loaded from: classes8.dex */
    public /* synthetic */ class C10568a implements ActivityResultCallback, FunctionAdapter {
        public C10568a() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@Nullable Uri uri) {
            InsertPageFromPdfObserver.this.m41360a(uri);
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof ActivityResultCallback) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return new FunctionReferenceImpl(1, InsertPageFromPdfObserver.this, InsertPageFromPdfObserver.class, "insertPageFromPdf", "insertPageFromPdf(Landroid/net/Uri;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: a */
    public final void m41360a(Uri uri) {
        if (uri == null) {
            return;
        }
        InsertPageArgs insertPageArgs = this.insertPageArgs;
        if (insertPageArgs == null) {
            insertPageArgs = new InsertPageArgs();
        }
        insertPageArgs.setTemplateUri(uri);
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            eventBus.post(new InsertPageEvent(insertPageArgs));
        }
    }

    /* renamed from: b */
    public final void m41361b() {
        ActivityResultCaller activityResultCaller = this.activityResultLauncher;
        this.getContent = activityResultCaller != null ? activityResultCaller.registerForActivityResult(new ActivityResultContracts.GetContent(), new C10568a()) : null;
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            EventBusHolderKt.ensureRegister(eventBus, this);
        }
    }

    /* renamed from: c */
    public final void m41362c() {
        EventBus eventBus = this.eventBus;
        if (eventBus != null) {
            EventBusHolderKt.ensureRegister(eventBus, this);
        }
        this.activityResultLauncher = null;
        this.eventBus = null;
        ActivityResultLauncher<String> activityResultLauncher = this.getContent;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
        }
        this.getContent = null;
    }

    @Nullable
    public final ActivityResultCaller getActivityResultLauncher() {
        return this.activityResultLauncher;
    }

    @Nullable
    public final EventBus getEventBus() {
        return this.eventBus;
    }

    @Nullable
    public final InsertPageArgs getInsertPageArgs() {
        return this.insertPageArgs;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onCreate(owner);
        m41361b();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onDestroy(owner);
        m41362c();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onInsertPageFromPdfEvent(@NotNull InsertPageFromPdfEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.insertPageArgs = event.getInsertPageArgs();
        performFileSearch();
    }

    public final void performFileSearch() {
        ActivityResultLauncher<String> activityResultLauncher = this.getContent;
        if (activityResultLauncher != null) {
            activityResultLauncher.launch("application/pdf");
        }
    }

    public final void setActivityResultLauncher(@Nullable ActivityResultCaller activityResultCaller) {
        this.activityResultLauncher = activityResultCaller;
    }

    public final void setEventBus(@Nullable EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public final void setInsertPageArgs(@Nullable InsertPageArgs insertPageArgs) {
        this.insertPageArgs = insertPageArgs;
    }
}
