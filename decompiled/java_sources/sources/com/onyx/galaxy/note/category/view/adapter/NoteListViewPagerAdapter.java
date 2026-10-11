package com.onyx.galaxy.note.category.view.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.category.p044ui.NoteListFragment;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "getItemCount", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "", "Lcom/onyx/galaxy/note/category/ui/NoteListFragment;", C4921e.f26528e, "Ljava/util/List;", "fragments", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Landroidx/lifecycle/Lifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteListViewPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewPagerAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n1549#2:34\n1620#2,3:35\n*S KotlinDebug\n*F\n+ 1 NoteListViewPagerAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListViewPagerAdapter\n*L\n22#1:34\n22#1:35,3\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteListViewPagerAdapter extends FragmentStateAdapter {

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final List<NoteListFragment> fragments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListViewPagerAdapter(@NotNull FragmentManager fragmentManager, @NotNull Lifecycle lifecycle) {
        super(fragmentManager, lifecycle);
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        EnumEntries<NoteSelectType> entries = NoteSelectType.getEntries();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entries, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<E> it2 = entries.iterator();
        while (it2.hasNext()) {
            arrayList.add(NoteListFragment.INSTANCE.newInstance((NoteSelectType) it2.next()));
        }
        this.fragments = arrayList;
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @NotNull
    public Fragment createFragment(int position) {
        return this.fragments.get(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.fragments.size();
    }
}
