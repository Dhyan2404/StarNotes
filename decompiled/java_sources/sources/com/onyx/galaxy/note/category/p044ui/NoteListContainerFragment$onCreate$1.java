package com.onyx.galaxy.note.category.p044ui;

import android.net.Uri;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.settings.data.SettingsBundle;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/galaxy/note/category/ui/NoteListContainerFragment$onCreate$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onCreate", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onDestroy", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListContainerFragment$onCreate$1 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ NoteListContainerFragment f54681e;

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$onCreate$1$a */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11274a implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ NoteListContainerFragment f54682a;

        public C11274a(NoteListContainerFragment noteListContainerFragment) {
            this.f54682a = noteListContainerFragment;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f54682a.m43227w0(p0);
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
            return new FunctionReferenceImpl(1, this.f54682a, NoteListContainerFragment.class, "handleFileSelectResult", "handleFileSelectResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$onCreate$1$b */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11275b implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ NoteListContainerFragment f54683a;

        public C11275b(NoteListContainerFragment noteListContainerFragment) {
            this.f54683a = noteListContainerFragment;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f54683a.m43228x0(p0);
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
            return new FunctionReferenceImpl(1, this.f54683a, NoteListContainerFragment.class, "handleImageSelectResult", "handleImageSelectResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$onCreate$1$c */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11276c implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ NoteListContainerFragment f54684a;

        public C11276c(NoteListContainerFragment noteListContainerFragment) {
            this.f54684a = noteListContainerFragment;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f54684a.m43229y0(p0);
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
            return new FunctionReferenceImpl(1, this.f54684a, NoteListContainerFragment.class, "handleTemplateImageFileSelectResult", "handleTemplateImageFileSelectResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$onCreate$1$d */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11277d implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ NoteListContainerFragment f54685a;

        public C11277d(NoteListContainerFragment noteListContainerFragment) {
            this.f54685a = noteListContainerFragment;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f54685a.m43226v0(p0);
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
            return new FunctionReferenceImpl(1, this.f54685a, NoteListContainerFragment.class, "handleCoverImageFileSelectResult", "handleCoverImageFileSelectResult(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$onCreate$1$e */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11278e implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ NoteListContainerFragment f54686a;

        public C11278e(NoteListContainerFragment noteListContainerFragment) {
            this.f54686a = noteListContainerFragment;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f54686a.m43230z0(p0);
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
            return new FunctionReferenceImpl(1, this.f54686a, NoteListContainerFragment.class, "handlerCoverDocuments", "handlerCoverDocuments(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListContainerFragment$onCreate$1$f */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11279f implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ NoteListContainerFragment f54687a;

        public C11279f(NoteListContainerFragment noteListContainerFragment) {
            this.f54687a = noteListContainerFragment;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull List<? extends Uri> p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f54687a.m43213A0(p0);
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
            return new FunctionReferenceImpl(1, this.f54687a, NoteListContainerFragment.class, "handlerPaperDocuments", "handlerPaperDocuments(Ljava/util/List;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    public NoteListContainerFragment$onCreate$1(NoteListContainerFragment noteListContainerFragment) {
        this.f54681e = noteListContainerFragment;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        AccountDataBundle.INSTANCE.getEventBusHolder().register(this.f54681e);
        KSyncBundle.INSTANCE.getEventBusHolder().register(this.f54681e);
        EventBus eventBus = EventBus.getDefault();
        Intrinsics.checkNotNullExpressionValue(eventBus, "getDefault(...)");
        EventBusHolderKt.ensureRegister(eventBus, this.f54681e);
        DocCollectionBundle.INSTANCE.ensureRegister(this.f54681e);
        SettingsBundle.INSTANCE.ensureRegister(this.f54681e);
        GlobalBundle.INSTANCE.register(this.f54681e);
        NoteListContainerFragment noteListContainerFragment = this.f54681e;
        noteListContainerFragment.getBookContentLauncher = FragmentKt.getMultipleDocuments(noteListContainerFragment, new C11274a(noteListContainerFragment));
        NoteListContainerFragment noteListContainerFragment2 = this.f54681e;
        noteListContainerFragment2.getImageContentLauncher = FragmentKt.getMultipleContents(noteListContainerFragment2, new C11275b(noteListContainerFragment2));
        NoteListContainerFragment noteListContainerFragment3 = this.f54681e;
        noteListContainerFragment3.getPaperImageContentLauncher = FragmentKt.getMultipleContents(noteListContainerFragment3, new C11276c(noteListContainerFragment3));
        NoteListContainerFragment noteListContainerFragment4 = this.f54681e;
        noteListContainerFragment4.getCoverImageContentLauncher = FragmentKt.getMultipleContents(noteListContainerFragment4, new C11277d(noteListContainerFragment4));
        NoteListContainerFragment noteListContainerFragment5 = this.f54681e;
        noteListContainerFragment5.getCoverDocumentsLauncher = FragmentKt.getSingleDocuments(noteListContainerFragment5, new C11278e(noteListContainerFragment5));
        NoteListContainerFragment noteListContainerFragment6 = this.f54681e;
        noteListContainerFragment6.getPaperDocumentsLauncher = FragmentKt.getSingleDocuments(noteListContainerFragment6, new C11279f(noteListContainerFragment6));
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        CompositeDisposable compositeDisposable;
        ActivityResultLauncher activityResultLauncher;
        ActivityResultLauncher activityResultLauncher2;
        ActivityResultLauncher activityResultLauncher3;
        ActivityResultLauncher activityResultLauncher4;
        Intrinsics.checkNotNullParameter(owner, "owner");
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this.f54681e);
        KSyncBundle.INSTANCE.getEventBusHolder().unRegister(this.f54681e);
        EventBus eventBus = EventBus.getDefault();
        Intrinsics.checkNotNullExpressionValue(eventBus, "getDefault(...)");
        EventBusHolderKt.ensureUnRegister(eventBus, this.f54681e);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this.f54681e);
        SettingsBundle.INSTANCE.ensureUnRegister(this.f54681e);
        GlobalBundle.INSTANCE.unregister(this.f54681e);
        compositeDisposable = this.f54681e.compositeDisposable;
        compositeDisposable.clear();
        activityResultLauncher = this.f54681e.getBookContentLauncher;
        ActivityResultLauncher activityResultLauncher5 = null;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getBookContentLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.unregister();
        activityResultLauncher2 = this.f54681e.getImageContentLauncher;
        if (activityResultLauncher2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getImageContentLauncher");
            activityResultLauncher2 = null;
        }
        activityResultLauncher2.unregister();
        activityResultLauncher3 = this.f54681e.getCoverDocumentsLauncher;
        if (activityResultLauncher3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getCoverDocumentsLauncher");
            activityResultLauncher3 = null;
        }
        activityResultLauncher3.unregister();
        activityResultLauncher4 = this.f54681e.getPaperDocumentsLauncher;
        if (activityResultLauncher4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("getPaperDocumentsLauncher");
        } else {
            activityResultLauncher5 = activityResultLauncher4;
        }
        activityResultLauncher5.unregister();
    }
}
