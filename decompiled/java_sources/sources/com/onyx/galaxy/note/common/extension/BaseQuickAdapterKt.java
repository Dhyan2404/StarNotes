package com.onyx.galaxy.note.common.extension;

import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u001aD\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\b\b\u0000\u0010\u0003*\u00020\u0004\"\b\b\u0001\u0010\u0005*\u00020\u0006*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0002\u001aD\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\b\b\u0000\u0010\u0003*\u00020\u0004\"\b\b\u0001\u0010\u0005*\u00020\u0006*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0002\u001a-\u0010\n\u001a\u0004\u0018\u0001H\u0003\"\b\b\u0000\u0010\u0003*\u00020\u0004*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u000b2\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000e\u001a\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u000b\u001a&\u0010\u0011\u001a\u00020\u0012\"\b\b\u0000\u0010\u0003*\u00020\u0004*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u000b2\u0006\u0010\f\u001a\u00020\r\u001a\u0012\u0010\u0013\u001a\u00020\u0012*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u000b\u001a2\u0010\u0014\u001a\u00020\u0012\"\b\b\u0000\u0010\u0003*\u00020\u0004*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u000b2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00170\u0016¨\u0006\u0018"}, m61528d2 = {"createAddListObservable", "Lio/reactivex/rxjava3/core/Observable;", "", "T", "", "VH", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/chad/library/adapter4/BaseDifferAdapter;", "list", "createSubmitListObservable", "getItemSafely", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "pos", "", "(Lcom/chad/library/adapter4/BaseQuickAdapter;I)Ljava/lang/Object;", "getRecyclerViewSafely", "Landroidx/recyclerview/widget/RecyclerView;", "notifyItemChangedSafety", "", "postNotifyDataSetChanged", "removeIf", "predicate", "Lkotlin/Function1;", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nBaseQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseQuickAdapter.kt\ncom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n350#2,7:68\n*S KotlinDebug\n*F\n+ 1 BaseQuickAdapter.kt\ncom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt\n*L\n17#1:68,7\n*E\n"})
/* loaded from: classes9.dex */
public final class BaseQuickAdapterKt {
    /* renamed from: c */
    public static final void m44995c(BaseDifferAdapter this_createSubmitListObservable, final List list, final ObservableEmitter it2) {
        Intrinsics.checkNotNullParameter(this_createSubmitListObservable, "$this_createSubmitListObservable");
        Intrinsics.checkNotNullParameter(list, "$list");
        Intrinsics.checkNotNullParameter(it2, "it");
        this_createSubmitListObservable.submitList(list, new Runnable() { // from class: com.sunia.HTREnginev2.eo
            @Override // java.lang.Runnable
            public final void run() {
                BaseQuickAdapterKt.m44996d(ObservableEmitter.this, list);
            }
        });
    }

    @NotNull
    public static final <T, VH extends RecyclerView.ViewHolder> Observable<List<T>> createAddListObservable(@NotNull BaseDifferAdapter<T, VH> baseDifferAdapter, @NotNull List<? extends T> list) {
        List mutableList;
        Intrinsics.checkNotNullParameter(baseDifferAdapter, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) baseDifferAdapter.getItems());
        mutableList.addAll(list);
        return createSubmitListObservable(baseDifferAdapter, mutableList);
    }

    @NotNull
    public static final <T, VH extends RecyclerView.ViewHolder> Observable<List<T>> createSubmitListObservable(@NotNull final BaseDifferAdapter<T, VH> baseDifferAdapter, @NotNull final List<? extends T> list) {
        Intrinsics.checkNotNullParameter(baseDifferAdapter, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Observable<List<T>> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.do
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                BaseQuickAdapterKt.m44995c(BaseDifferAdapter.this, list, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: d */
    public static final void m44996d(ObservableEmitter it2, List list) {
        Intrinsics.checkNotNullParameter(it2, "$it");
        Intrinsics.checkNotNullParameter(list, "$list");
        it2.onNext(list);
        it2.onComplete();
    }

    @Nullable
    public static final <T> T getItemSafely(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, int i) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<this>");
        if (i < 0 || i >= baseQuickAdapter.getItemCount()) {
            return null;
        }
        return baseQuickAdapter.getItems().get(i);
    }

    @Nullable
    public static final RecyclerView getRecyclerViewSafely(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<this>");
        try {
            return baseQuickAdapter.getRecyclerView();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final <T> void notifyItemChangedSafety(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, int i) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<this>");
        if (baseQuickAdapter.getRecyclerView().isComputingLayout()) {
            return;
        }
        baseQuickAdapter.notifyItemChanged(i);
    }

    public static final void postNotifyDataSetChanged(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<this>");
        if (getRecyclerViewSafely(baseQuickAdapter) != null) {
            baseQuickAdapter.notifyDataSetChanged();
        }
    }

    public static final <T> void removeIf(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Iterator<T> it2 = baseQuickAdapter.getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else if (predicate.invoke(it2.next()).booleanValue()) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        baseQuickAdapter.removeAt(i);
    }
}
