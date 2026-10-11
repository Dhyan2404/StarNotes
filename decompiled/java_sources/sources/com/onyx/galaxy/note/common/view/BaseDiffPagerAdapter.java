package com.onyx.galaxy.note.common.view;

import android.annotation.SuppressLint;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.DiffUtil;
import androidx.transition.Transition;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\u0004\b\u0001\u0010\u00032\u00020\u0004B\u0011\b\u0016\u0012\u0006\u00101\u001a\u000200¢\u0006\u0004\b2\u00103B\u0011\b\u0016\u0012\u0006\u00105\u001a\u000204¢\u0006\u0004\b2\u00106J\u001c\u0010\b\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J'\u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00028\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\b\u0010\u0018\u001a\u00020\u000eH\u0016J\u0014\u0010\u001b\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019J \u0010\u001d\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00192\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u000eH\u0016J\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0019J\u000e\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000!H\u0016J\u000e\u0010$\u001a\u00020#2\u0006\u0010\u0017\u001a\u00020\u000eJ\u0014\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H\u0002R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010'R0\u0010/\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter;", "", "T", "L", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "Lkotlin/Function1;", "", "l", "setFragmentListener", "", Transition.f10629M0, "", "containsItem", "addFragmentTab", "", "insertPos", "Ljava/lang/Runnable;", "commitCallback", "addFragment", "(Ljava/lang/Object;ILjava/lang/Runnable;)V", "removeFragmentTab", "removeFragment", "(Ljava/lang/Object;Ljava/lang/Runnable;)V", "pos", "getItemCount", "", "list", "setNewData", "mNewList", "mergeList", "position", "getItemId", "getMutablePageList", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "genDiffItemCall", "", "fragmentTag", C4921e.f26528e, "Landroidx/recyclerview/widget/AsyncListDiffer;", "Landroidx/recyclerview/widget/AsyncListDiffer;", "mDiffer", "p", "Lkotlin/jvm/functions/Function1;", "getListener", "()Lkotlin/jvm/functions/Function1;", "setListener", "(Lkotlin/jvm/functions/Function1;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroidx/fragment/app/Fragment;", "fragment", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;)V", "Landroidx/fragment/app/FragmentActivity;", "fragmentActivity", "(Landroidx/fragment/app/FragmentActivity;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseDiffPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDiffPagerAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1855#2,2:123\n*S KotlinDebug\n*F\n+ 1 BaseDiffPagerAdapter.kt\ncom/onyx/galaxy/note/common/view/BaseDiffPagerAdapter\n*L\n34#1:123,2\n*E\n"})
/* loaded from: classes9.dex */
public abstract class BaseDiffPagerAdapter<T, L> extends FragmentStateAdapter {

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public AsyncListDiffer<T> mDiffer;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public Function1<? super L, Unit> listener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDiffPagerAdapter(@NotNull Fragment fragment) {
        super(fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.mDiffer = new AsyncListDiffer<>(m45120o(), genDiffItemCall());
    }

    public static /* synthetic */ void mergeList$default(BaseDiffPagerAdapter baseDiffPagerAdapter, List list, Runnable runnable, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: mergeList");
        }
        if ((i & 2) != 0) {
            runnable = null;
        }
        baseDiffPagerAdapter.mergeList(list, runnable);
    }

    public final void addFragment(@NotNull T addFragmentTab, int insertPos, @Nullable Runnable commitCallback) {
        Intrinsics.checkNotNullParameter(addFragmentTab, "addFragmentTab");
        List<T> mutablePageList = getMutablePageList();
        if (mutablePageList.contains(addFragmentTab)) {
            return;
        }
        if (insertPos == -1 || insertPos > getItemCount()) {
            insertPos = getItemCount();
        }
        mutablePageList.add(insertPos, addFragmentTab);
        mergeList(mutablePageList, commitCallback);
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    public boolean containsItem(long itemId) {
        List<T> currentList;
        AsyncListDiffer<T> asyncListDiffer = this.mDiffer;
        if (asyncListDiffer == null || (currentList = asyncListDiffer.getCurrentList()) == null) {
            return false;
        }
        Iterator<T> it2 = currentList.iterator();
        while (it2.hasNext()) {
            if (it2.next().hashCode() == itemId) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final String fragmentTag(int pos) {
        return FragmentStateAdapter.f11108l + getItemId(pos);
    }

    @NotNull
    public DiffUtil.ItemCallback<T> genDiffItemCall() {
        return new DiffUtil.ItemCallback<T>() { // from class: com.onyx.galaxy.note.common.view.BaseDiffPagerAdapter$genDiffItemCall$1
            @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
            @SuppressLint({"DiffUtilEquals"})
            public boolean areContentsTheSame(@NotNull T oldItem, @NotNull T newItem) {
                Intrinsics.checkNotNullParameter(oldItem, "oldItem");
                Intrinsics.checkNotNullParameter(newItem, "newItem");
                return Intrinsics.areEqual(oldItem, newItem);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
            public boolean areItemsTheSame(@NotNull T oldItem, @NotNull T newItem) {
                Intrinsics.checkNotNullParameter(oldItem, "oldItem");
                Intrinsics.checkNotNullParameter(newItem, "newItem");
                return oldItem.hashCode() == newItem.hashCode();
            }
        };
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<T> currentList;
        AsyncListDiffer<T> asyncListDiffer = this.mDiffer;
        if (asyncListDiffer == null || (currentList = asyncListDiffer.getCurrentList()) == null) {
            return 0;
        }
        return currentList.size();
    }

    @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        AsyncListDiffer<T> asyncListDiffer = this.mDiffer;
        if (asyncListDiffer != null && asyncListDiffer.getCurrentList().size() >= position) {
            return asyncListDiffer.getCurrentList().get(position).hashCode();
        }
        return 0L;
    }

    @Nullable
    public final Function1<L, Unit> getListener() {
        return this.listener;
    }

    @NotNull
    public final List<T> getMutablePageList() {
        List<T> currentList;
        AsyncListDiffer<T> asyncListDiffer = this.mDiffer;
        return new ArrayList((asyncListDiffer == null || (currentList = asyncListDiffer.getCurrentList()) == null) ? new ArrayList() : currentList);
    }

    public final void mergeList(@NotNull List<T> mNewList, @Nullable Runnable commitCallback) {
        AsyncListDiffer<T> asyncListDiffer;
        Intrinsics.checkNotNullParameter(mNewList, "mNewList");
        List<T> mutablePageList = getMutablePageList();
        if ((mutablePageList.containsAll(mNewList) && mutablePageList.size() == mNewList.size()) || (asyncListDiffer = this.mDiffer) == null) {
            return;
        }
        asyncListDiffer.submitList(mNewList, commitCallback);
    }

    /* renamed from: o */
    public final BaseDiffPagerAdapter<T, L> m45120o() {
        return this;
    }

    public final void removeFragment(@NotNull T removeFragmentTab, @Nullable Runnable commitCallback) {
        Intrinsics.checkNotNullParameter(removeFragmentTab, "removeFragmentTab");
        List<T> mutablePageList = getMutablePageList();
        if (mutablePageList.indexOf(removeFragmentTab) != -1) {
            mutablePageList.remove(removeFragmentTab);
            mergeList(mutablePageList, commitCallback);
        }
    }

    public final void setFragmentListener(@Nullable Function1<? super L, Unit> l) {
        this.listener = l;
    }

    public final void setListener(@Nullable Function1<? super L, Unit> function1) {
        this.listener = function1;
    }

    public final void setNewData(@NotNull List<T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        mergeList$default(this, list, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDiffPagerAdapter(@NotNull FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        Intrinsics.checkNotNullParameter(fragmentActivity, "fragmentActivity");
        this.mDiffer = new AsyncListDiffer<>(m45120o(), genDiffItemCall());
    }

    public final void removeFragment(int pos, @Nullable Runnable commitCallback) {
        List<T> mutablePageList = getMutablePageList();
        if (pos < mutablePageList.size()) {
            removeFragment((BaseDiffPagerAdapter<T, L>) mutablePageList.get(pos), commitCallback);
        }
    }
}
