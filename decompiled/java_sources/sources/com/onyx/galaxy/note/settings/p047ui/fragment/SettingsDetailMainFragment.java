package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C1126e;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.databinding.FragmentSettingsDetailMainBinding;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J$\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsDetailMainFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "()V", "binding", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsDetailMainBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsDetailMainBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/FragmentSettingsDetailMainBinding;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", gon.f71270W, "Landroid/view/ViewGroup;", C1126e.f7693h, "Landroid/os/Bundle;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsDetailMainFragment extends BaseFragment {
    public FragmentSettingsDetailMainBinding binding;

    @NotNull
    public final FragmentSettingsDetailMainBinding getBinding() {
        FragmentSettingsDetailMainBinding fragmentSettingsDetailMainBinding = this.binding;
        if (fragmentSettingsDetailMainBinding != null) {
            return fragmentSettingsDetailMainBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingsDetailMainBinding inflate = FragmentSettingsDetailMainBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    public final void setBinding(@NotNull FragmentSettingsDetailMainBinding fragmentSettingsDetailMainBinding) {
        Intrinsics.checkNotNullParameter(fragmentSettingsDetailMainBinding, "<set-?>");
        this.binding = fragmentSettingsDetailMainBinding;
    }
}
