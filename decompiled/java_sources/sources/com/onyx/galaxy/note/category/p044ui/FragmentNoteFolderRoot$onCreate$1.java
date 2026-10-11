package com.onyx.galaxy.note.category.p044ui;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.FragmentNoteFolderRootBinding;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onCreate$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onCreate", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onDestroy", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FragmentNoteFolderRoot$onCreate$1 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ FragmentNoteFolderRoot f54603e;

    public FragmentNoteFolderRoot$onCreate$1(FragmentNoteFolderRoot fragmentNoteFolderRoot) {
        this.f54603e = fragmentNoteFolderRoot;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        DocCollectionBundle.INSTANCE.ensureRegister(this.f54603e);
        KSyncBundle.INSTANCE.getEventBusHolder().register(this.f54603e);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        CompositeDisposable compositeDisposable;
        FragmentNoteFolderRootBinding m43122z0;
        Runnable m43094D0;
        Intrinsics.checkNotNullParameter(owner, "owner");
        DocCollectionBundle.INSTANCE.ensureUnRegister(this.f54603e);
        KSyncBundle.INSTANCE.getEventBusHolder().unRegister(this.f54603e);
        compositeDisposable = this.f54603e.compositeDisposable;
        compositeDisposable.clear();
        m43122z0 = this.f54603e.m43122z0();
        RecyclerView recyclerView = m43122z0.f56746rv;
        m43094D0 = this.f54603e.m43094D0();
        recyclerView.removeCallbacks(m43094D0);
    }
}
