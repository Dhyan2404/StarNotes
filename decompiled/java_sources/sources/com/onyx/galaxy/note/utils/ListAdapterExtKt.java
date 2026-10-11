package com.onyx.galaxy.note.utils;

import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\b\u001a:\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0005*\u00020\u0004*\f\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\b\u00030\u00022\u0014\b\u0004\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\b0\u0007H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, m61528d2 = {"notifyItemChangedSafely", "", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "item", "", "T", "predicate", "Lkotlin/Function1;", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nListAdapterExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,25:1\n1855#2,2:26\n*S KotlinDebug\n*F\n+ 1 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n*L\n21#1:26,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ListAdapterExtKt {
    public static final void notifyItemChangedSafely(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter, @NotNull Object item) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        try {
            int indexOf = baseQuickAdapter.getItems().indexOf(item);
            if (indexOf >= 0) {
                baseQuickAdapter.notifyItemChanged(indexOf);
            }
        } catch (Throwable unused) {
            Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
        }
    }

    public static final <T> void notifyItemChangedSafely(@NotNull BaseQuickAdapter<T, ?> baseQuickAdapter, @NotNull final Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        try {
            Iterator<T> it2 = CollectionKt.indexesOf(baseQuickAdapter.getItems(), new Function1<T, Boolean>() { // from class: com.onyx.galaxy.note.utils.ListAdapterExtKt$notifyItemChangedSafely$indexes$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull T it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return predicate.invoke(it3);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                    return invoke((ListAdapterExtKt$notifyItemChangedSafely$indexes$1<T>) obj);
                }
            }).iterator();
            while (it2.hasNext()) {
                baseQuickAdapter.notifyItemChanged(((Number) it2.next()).intValue());
            }
        } catch (Throwable unused) {
            Debug.INSTANCE.m32037d("BaseQuickAdapter is detached");
        }
    }
}
