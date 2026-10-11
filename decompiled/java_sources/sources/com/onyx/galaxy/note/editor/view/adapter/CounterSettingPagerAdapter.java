package com.onyx.galaxy.note.editor.view.adapter;

import androidx.fragment.app.Fragment;
import com.onyx.galaxy.note.common.view.BaseDiffPagerAdapter;
import com.onyx.galaxy.note.editor.view.fragment.CountDownFragment;
import com.onyx.galaxy.note.editor.view.fragment.CountUpFragment;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/CounterSettingPagerAdapter;", "Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;", "", "", "", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "", "q", "Ljava/util/List;", "fragmentData", "fragment", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterSettingPagerAdapter extends BaseDiffPagerAdapter<Object, Boolean> {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final List<Object> fragmentData;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CounterSettingPagerAdapter(@NotNull Fragment fragment) {
        super(fragment);
        List<Object> mutableListOf;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new Object(), new Object());
        this.fragmentData = mutableListOf;
        setNewData(mutableListOf);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @NotNull
    public Fragment createFragment(int position) {
        return position == 0 ? new CountDownFragment() : new CountUpFragment();
    }
}
