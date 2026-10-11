package com.onyx.android.sdk.replicator.note.utils;

import androidx.core.provider.DocumentsContractCompat;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.utils.TocListUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007J\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005J\"\u0010\u000f\u001a\u00020\r2\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00070\u00022\u0006\u0010\u000e\u001a\u00020\rJ6\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\u0004\b\u0000\u0010\u00102\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0011H\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/TocListUtils;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "queryModelList", "", "sortVirtualTocModelListToNatural", "Lcom/onyx/android/sdk/base/data/Tree;", DocumentsContractCompat.f5557a, "", "sortVirtualTocModelTreeToNatural", "list", "reorderIndex", "", "page", "findCurrentTocIndex", "T", "Lkotlin/Function1;", "getter", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TocListUtils {

    @NotNull
    public static final TocListUtils INSTANCE = new TocListUtils();

    /* renamed from: c */
    public static final int m35564c(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    /* renamed from: b */
    public final <T> List<T> m35565b(List<? extends T> list, final Function1<? super T, VirtualTocModel> getter) {
        List sortedWith;
        List<T> mutableList;
        final Function2<T, T, Integer> function2 = new Function2<T, T, Integer>() { // from class: com.onyx.android.sdk.replicator.note.utils.TocListUtils$sort$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(T t, T t2) {
                VirtualTocModel invoke = getter.invoke(t);
                VirtualTocModel invoke2 = getter.invoke(t2);
                if (invoke.getPageIndex() != invoke2.getPageIndex()) {
                    return Integer.valueOf(Intrinsics.compare(invoke.getPageIndex(), invoke2.getPageIndex()));
                }
                if (!(invoke.getOrderIndex() == -1.0f)) {
                    if (!(invoke2.getOrderIndex() == -1.0f)) {
                        if (!(invoke.getOrderIndex() == invoke2.getOrderIndex())) {
                            return Integer.valueOf(Float.compare(invoke.getOrderIndex(), invoke2.getOrderIndex()));
                        }
                    }
                }
                return Integer.valueOf(Intrinsics.compare(invoke.getCreatedAt(), invoke2.getCreatedAt()));
            }
        };
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.sunia.HTREnginev2.vin
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m35564c;
                m35564c = TocListUtils.m35564c(Function2.this, obj, obj2);
                return m35564c;
            }
        });
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
        return mutableList;
    }

    public final int findCurrentTocIndex(@NotNull List<Tree<VirtualTocModel>> list, int page) {
        Object orNull;
        VirtualTocModel virtualTocModel;
        Intrinsics.checkNotNullParameter(list, "list");
        int size = list.size();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < size; i3++) {
            orNull = CollectionsKt___CollectionsKt.getOrNull(list, i3);
            Tree tree = (Tree) orNull;
            if (tree != null && (virtualTocModel = (VirtualTocModel) tree.getItem()) != null) {
                if (virtualTocModel.getPageIndex() == page) {
                    return i3;
                }
                if (virtualTocModel.getPageIndex() > page && (i2 < 0 || virtualTocModel.getPageIndex() < i2)) {
                    i2 = virtualTocModel.getPageIndex();
                    i = i3;
                }
            }
        }
        if (i > 0) {
            return i - 1;
        }
        if (i == 0) {
            return 0;
        }
        return list.size() - 1;
    }

    @NotNull
    public final List<VirtualTocModel> reorderIndex(@NotNull List<VirtualTocModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return com.onyx.android.sdk.base.utils.OrderListUtils.INSTANCE.reorderIndexChecked(list, new Function1<VirtualTocModel, Float>() { // from class: com.onyx.android.sdk.replicator.note.utils.TocListUtils$reorderIndex$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Float invoke(@NotNull VirtualTocModel node) {
                Intrinsics.checkNotNullParameter(node, "node");
                return Float.valueOf(node.getOrderIndex());
            }
        }, new Function2<VirtualTocModel, Float, Unit>() { // from class: com.onyx.android.sdk.replicator.note.utils.TocListUtils$reorderIndex$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(VirtualTocModel virtualTocModel, Float f) {
                invoke(virtualTocModel, f.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(@NotNull VirtualTocModel node, float f) {
                Intrinsics.checkNotNullParameter(node, "node");
                node.setOrderIndex(f);
            }
        });
    }

    @NotNull
    public final List<VirtualTocModel> sortVirtualTocModelListToNatural(@NotNull List<VirtualTocModel> queryModelList) {
        Intrinsics.checkNotNullParameter(queryModelList, "queryModelList");
        return m35565b(queryModelList, new Function1<VirtualTocModel, VirtualTocModel>() { // from class: com.onyx.android.sdk.replicator.note.utils.TocListUtils$sortVirtualTocModelListToNatural$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualTocModel invoke(@NotNull VirtualTocModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
    }

    public final void sortVirtualTocModelTreeToNatural(@NotNull Tree<VirtualTocModel> tree) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        tree.setChildren(m35565b(tree.getChildren(), new Function1<Tree<VirtualTocModel>, VirtualTocModel>() { // from class: com.onyx.android.sdk.replicator.note.utils.TocListUtils$sortVirtualTocModelTreeToNatural$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualTocModel invoke(@NotNull Tree<VirtualTocModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                VirtualTocModel item = it2.getItem();
                Intrinsics.checkNotNull(item);
                return item;
            }
        }));
    }
}
