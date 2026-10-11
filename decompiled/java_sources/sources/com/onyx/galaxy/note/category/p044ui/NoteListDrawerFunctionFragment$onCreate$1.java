package com.onyx.galaxy.note.category.p044ui;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.settings.data.SettingsBundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/galaxy/note/category/ui/NoteListDrawerFunctionFragment$onCreate$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onCreate", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onDestroy", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListDrawerFunctionFragment$onCreate$1 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ NoteListDrawerFunctionFragment f54696e;

    public NoteListDrawerFunctionFragment$onCreate$1(NoteListDrawerFunctionFragment noteListDrawerFunctionFragment) {
        this.f54696e = noteListDrawerFunctionFragment;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        AccountDataBundle.INSTANCE.getEventBusHolder().register(this.f54696e);
        KSyncBundle.INSTANCE.getEventBusHolder().register(this.f54696e);
        DocCollectionBundle.INSTANCE.ensureRegister(this.f54696e);
        SettingsBundle.INSTANCE.ensureRegister(this.f54696e);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this.f54696e);
        KSyncBundle.INSTANCE.getEventBusHolder().unRegister(this.f54696e);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this.f54696e);
        SettingsBundle.INSTANCE.ensureUnRegister(this.f54696e);
    }
}
