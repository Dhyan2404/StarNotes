package com.onyx.galaxy.note.editor.view.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.onyx.galaxy.note.common.view.BaseDiffPagerAdapter;
import com.onyx.galaxy.note.editor.view.fragment.EditMultipleCountDownTaskFragment;
import com.onyx.galaxy.note.editor.view.fragment.EditNormalCountDownTaskFragment;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CounterEditPagerAdapter;", "Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;", "", "", "", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "Landroid/os/Bundle;", "q", "Landroid/os/Bundle;", "dataArguments", "", "r", "Ljava/util/List;", "fragmentData", "fragment", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterEditPagerAdapter extends BaseDiffPagerAdapter<Object, Boolean> {

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public final Bundle dataArguments;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final List<Object> fragmentData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CounterEditPagerAdapter(@NotNull Fragment fragment, @Nullable Bundle bundle) {
        super(fragment);
        List<Object> mutableListOf;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.dataArguments = bundle;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new Object(), new Object());
        this.fragmentData = mutableListOf;
        setNewData(mutableListOf);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @NotNull
    public Fragment createFragment(int position) {
        Fragment editNormalCountDownTaskFragment = position == 0 ? new EditNormalCountDownTaskFragment() : new EditMultipleCountDownTaskFragment();
        editNormalCountDownTaskFragment.setArguments(this.dataArguments);
        return editNormalCountDownTaskFragment;
    }
}
