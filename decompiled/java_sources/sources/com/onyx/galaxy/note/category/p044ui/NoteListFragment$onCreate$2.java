package com.onyx.galaxy.note.category.p044ui;

import android.content.Intent;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.p039ui.CommonDialog;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/galaxy/note/category/ui/NoteListFragment$onCreate$2", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onCreate", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onDestroy", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListFragment$onCreate$2 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ NoteListFragment f54756e;

    /* renamed from: com.onyx.galaxy.note.category.ui.NoteListFragment$onCreate$2$a */
    /* loaded from: classes9.dex */
    public /* synthetic */ class C11297a implements ActivityResultCallback, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ NoteListFragment f54757a;

        public C11297a(NoteListFragment noteListFragment) {
            this.f54757a = noteListFragment;
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void onActivityResult(@NotNull Intent p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            this.f54757a.m43351l1(p0);
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
            return new FunctionReferenceImpl(1, this.f54757a, NoteListFragment.class, "handleImageTakeResult", "handleImageTakeResult(Landroid/content/Intent;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    public NoteListFragment$onCreate$2(NoteListFragment noteListFragment) {
        this.f54756e = noteListFragment;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        GlobalBundle.INSTANCE.register(this.f54756e);
        DocCollectionBundle.INSTANCE.ensureRegister(this.f54756e);
        KSyncBundle.INSTANCE.getEventBusHolder().register(this.f54756e);
        SyncProgressBundle.INSTANCE.register(this.f54756e);
        AccountDataBundle.INSTANCE.getEventBusHolder().register(this.f54756e);
        NoteListFragment noteListFragment = this.f54756e;
        noteListFragment.takePictureLauncher = FragmentKt.takePicture(noteListFragment, new C11297a(noteListFragment));
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        ActivityResultLauncher activityResultLauncher;
        Runnable m43332S0;
        Runnable m43334T0;
        Runnable m43320M0;
        Runnable m43335U0;
        CommonDialog commonDialog;
        Intrinsics.checkNotNullParameter(owner, "owner");
        DocCollectionBundle.INSTANCE.ensureUnRegister(this.f54756e);
        KSyncBundle.INSTANCE.getEventBusHolder().unRegister(this.f54756e);
        GlobalBundle.INSTANCE.unregister(this.f54756e);
        SyncProgressBundle.INSTANCE.unregister(this.f54756e);
        AccountDataBundle.INSTANCE.getEventBusHolder().unRegister(this.f54756e);
        activityResultLauncher = this.f54756e.takePictureLauncher;
        if (activityResultLauncher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("takePictureLauncher");
            activityResultLauncher = null;
        }
        activityResultLauncher.unregister();
        RecyclerView recyclerView = this.f54756e.m43313I0().f56750rv;
        NoteListFragment noteListFragment = this.f54756e;
        m43332S0 = noteListFragment.m43332S0();
        recyclerView.removeCallbacks(m43332S0);
        m43334T0 = noteListFragment.m43334T0();
        recyclerView.removeCallbacks(m43334T0);
        m43320M0 = noteListFragment.m43320M0();
        recyclerView.removeCallbacks(m43320M0);
        m43335U0 = noteListFragment.m43335U0();
        recyclerView.removeCallbacks(m43335U0);
        commonDialog = this.f54756e.noteEncryptionLoginDialog;
        if (commonDialog != null) {
            commonDialog.dismiss();
        }
    }
}
