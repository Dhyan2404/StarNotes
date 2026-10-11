package com.onyx.galaxy.note.category.p044ui;

import android.view.Window;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.blankj.utilcode.util.KeyboardUtils;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.galaxy.note.account.action.FetchAccountConfigurationsAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.p044ui.SearchNoteFragment;
import com.onyx.galaxy.note.category.p044ui.SearchNoteFragment$onCreate$1;
import com.onyx.galaxy.note.databinding.FragmentSearchNoteBinding;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\b"}, m61528d2 = {"com/onyx/galaxy/note/category/ui/SearchNoteFragment$onCreate$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onCreate", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onDestroy", "onStop", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SearchNoteFragment$onCreate$1 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ SearchNoteFragment f54944e;

    public SearchNoteFragment$onCreate$1(SearchNoteFragment searchNoteFragment) {
        this.f54944e = searchNoteFragment;
    }

    /* renamed from: b */
    public static final void m43857b(SearchNoteFragment this$0, int i) {
        FragmentSearchNoteBinding m43823D0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == 0) {
            m43823D0 = this$0.m43823D0();
            m43823D0.textInputEditTextViewName.clearFocus();
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onCreate(owner);
        Window window = this.f54944e.requireActivity().getWindow();
        final SearchNoteFragment searchNoteFragment = this.f54944e;
        KeyboardUtils.registerSoftInputChangedListener(window, new KeyboardUtils.OnSoftInputChangedListener() { // from class: com.sunia.HTREnginev2.q7m
            @Override // com.blankj.utilcode.util.KeyboardUtils.OnSoftInputChangedListener
            public final void onSoftInputChanged(int i) {
                SearchNoteFragment$onCreate$1.m43857b(SearchNoteFragment.this, i);
            }
        });
        AccountDataBundle.INSTANCE.register(this.f54944e);
        DocCollectionBundle.INSTANCE.ensureRegister(this.f54944e);
        FetchAccountConfigurationsAction.INSTANCE.debounceFetch();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        Disposable disposable;
        CompositeDisposable compositeDisposable;
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onDestroy(owner);
        disposable = this.f54944e.searchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        compositeDisposable = this.f54944e.compositeDisposable;
        compositeDisposable.clear();
        KeyboardUtils.unregisterSoftInputChangedListener(this.f54944e.requireActivity().getWindow());
        AccountDataBundle.INSTANCE.unregister(this.f54944e);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this.f54944e);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner owner) {
        FragmentSearchNoteBinding m43823D0;
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStop(owner);
        m43823D0 = this.f54944e.m43823D0();
        ViewKt.hideInputKeyboard(m43823D0.textInputEditTextViewName);
    }
}
