package com.onyx.android.sdk.extension;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.divider.MaterialDividerItemDecoration;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.p039ui.ItemMarginDecoration;
import com.onyx.android.sdk.uicommon.C8044R;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u001a,\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\r\u001a4\u0010\u000e\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\r\u001a\n\u0010\u0014\u001a\u00020\b*\u00020\u0002\u001a\u001e\u0010\u0015\u001a\u00020\b*\u00020\u00022\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\r0\u0017\u001a\u0012\u0010\u0019\u001a\u00020\b*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0004\u001a\u0012\u0010\u001b\u001a\u00020\b*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0004\u001a\u0012\u0010\u001c\u001a\u00020\b*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004\u001a\u001c\u0010\u001e\u001a\u00020\b*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00042\b\b\u0002\u0010\u001f\u001a\u00020\u0004¨\u0006 "}, m61528d2 = {"addLineDividerDecoration", "Lcom/google/android/material/divider/MaterialDividerItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView;", "orientation", "", "color", "thickness", "addMaterialItemDecoration", "", "context", "Landroid/content/Context;", "dividerThickness", "isLastItemDecorated", "", "autoSetGridMargin", "parentWidth", "minItemWidth", "minMarginX", "marginY", "fixedMargin", "removeAllMarginDecorations", "removeDecorations", "predication", "Lkotlin/Function1;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "scrollToPositionIfCompletelyInVisible", "pos", "scrollToPositionIfInVisible", "scrollToPositionSafely", "position", "scrollToPositionWithOffset", TypedValues.CycleType.S_WAVE_OFFSET, "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nRecyclerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerView.kt\ncom/onyx/android/sdk/extension/RecyclerViewKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1855#2,2:146\n*S KotlinDebug\n*F\n+ 1 RecyclerView.kt\ncom/onyx/android/sdk/extension/RecyclerViewKt\n*L\n98#1:146,2\n*E\n"})
/* loaded from: classes7.dex */
public final class RecyclerViewKt {
    @NotNull
    public static final MaterialDividerItemDecoration addLineDividerDecoration(@NotNull RecyclerView recyclerView, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(recyclerView.getContext(), i);
        materialDividerItemDecoration.setDividerColor(i2);
        materialDividerItemDecoration.setDividerThickness(i3);
        recyclerView.addItemDecoration(materialDividerItemDecoration);
        return materialDividerItemDecoration;
    }

    public static /* synthetic */ MaterialDividerItemDecoration addLineDividerDecoration$default(RecyclerView recyclerView, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = 1;
        }
        if ((i4 & 2) != 0) {
            i2 = ResManager.INSTANCE.getColor(C8044R.color.divider_line);
        }
        if ((i4 & 4) != 0) {
            i3 = ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_1);
        }
        return addLineDividerDecoration(recyclerView, i, i2, i3);
    }

    public static final void addMaterialItemDecoration(@NotNull RecyclerView recyclerView, @NotNull Context context, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        MaterialDividerItemDecoration materialDividerItemDecoration = new MaterialDividerItemDecoration(context, i);
        materialDividerItemDecoration.setDividerColor(0);
        materialDividerItemDecoration.setDividerThickness(i2);
        materialDividerItemDecoration.setLastItemDecorated(z);
        recyclerView.addItemDecoration(materialDividerItemDecoration);
    }

    public static /* synthetic */ void addMaterialItemDecoration$default(RecyclerView recyclerView, Context context, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            z = true;
        }
        addMaterialItemDecoration(recyclerView, context, i, i2, z);
    }

    public static final int autoSetGridMargin(@NotNull final RecyclerView recyclerView, int i, int i2, int i3, final int i4, boolean z) {
        int i5;
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        int i6 = (i - i3) / (i2 + i3);
        if (i6 == 0) {
            removeAllMarginDecorations(recyclerView);
            recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), 1));
            return i;
        }
        int i7 = i6 + 1;
        int i8 = (i - (i2 * i6)) - (i3 * i7);
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i3;
        if (z) {
            i5 = i2 + (i8 / i6);
        } else {
            intRef.element = i3 + (i8 / i7);
            i5 = i2;
        }
        recyclerView.setPadding(intRef.element, 0, 0, 0);
        removeAllMarginDecorations(recyclerView);
        recyclerView.addItemDecoration(new ItemMarginDecoration(null, null, null, null, new Function4<Rect, View, RecyclerView, RecyclerView.State, Unit>() { // from class: com.onyx.android.sdk.extension.RecyclerViewKt$autoSetGridMargin$decoration$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(Rect rect, View view, RecyclerView recyclerView2, RecyclerView.State state) {
                invoke2(rect, view, recyclerView2, state);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Rect margins, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(margins, "margins");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                margins.right = Ref.IntRef.this.element;
                margins.bottom = i4;
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                RecyclerView.ViewHolder findContainingViewHolder = parent.findContainingViewHolder(view);
                if (findContainingViewHolder != null && gridLayoutManager.getSpanCount() > findContainingViewHolder.getAdapterPosition()) {
                    margins.top = i4;
                }
            }
        }, 15, null));
        recyclerView.setLayoutManager(new GridLayoutManager(recyclerView.getContext(), i6));
        return i5;
    }

    public static /* synthetic */ int autoSetGridMargin$default(RecyclerView recyclerView, int i, int i2, int i3, int i4, boolean z, int i5, Object obj) {
        if ((i5 & 16) != 0) {
            z = false;
        }
        return autoSetGridMargin(recyclerView, i, i2, i3, i4, z);
    }

    public static final void removeAllMarginDecorations(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        removeDecorations(recyclerView, new Function1<RecyclerView.ItemDecoration, Boolean>() { // from class: com.onyx.android.sdk.extension.RecyclerViewKt$removeAllMarginDecorations$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RecyclerView.ItemDecoration it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2 instanceof ItemMarginDecoration);
            }
        });
    }

    public static final void removeDecorations(@NotNull RecyclerView recyclerView, @NotNull Function1<? super RecyclerView.ItemDecoration, Boolean> predication) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(predication, "predication");
        ArrayList arrayList = new ArrayList();
        int itemDecorationCount = recyclerView.getItemDecorationCount();
        for (int i = 0; i < itemDecorationCount; i++) {
            RecyclerView.ItemDecoration itemDecorationAt = recyclerView.getItemDecorationAt(i);
            Intrinsics.checkNotNullExpressionValue(itemDecorationAt, "getItemDecorationAt(...)");
            if (predication.invoke(itemDecorationAt).booleanValue()) {
                arrayList.add(itemDecorationAt);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            recyclerView.removeItemDecoration((RecyclerView.ItemDecoration) it2.next());
        }
    }

    public static final void scrollToPositionIfCompletelyInVisible(@NotNull final RecyclerView recyclerView, final int i) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        com.onyx.android.sdk.base.extension.ViewKt.postSelf(recyclerView, new Function1<RecyclerView, Unit>() { // from class: com.onyx.android.sdk.extension.RecyclerViewKt$scrollToPositionIfCompletelyInVisible$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView2) {
                invoke2(recyclerView2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull RecyclerView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RecyclerView.LayoutManager layoutManager = RecyclerView.this.getLayoutManager();
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if (linearLayoutManager != null) {
                    int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
                    int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                    int i2 = i;
                    boolean z = false;
                    if (findFirstVisibleItemPosition <= i2 && i2 <= findLastVisibleItemPosition) {
                        z = true;
                    }
                    if (z) {
                        return;
                    }
                }
                RecyclerView.this.scrollToPosition(i);
            }
        });
    }

    public static final void scrollToPositionIfInVisible(@NotNull final RecyclerView recyclerView, final int i) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        com.onyx.android.sdk.base.extension.ViewKt.postSelf(recyclerView, new Function1<RecyclerView, Unit>() { // from class: com.onyx.android.sdk.extension.RecyclerViewKt$scrollToPositionIfInVisible$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView2) {
                invoke2(recyclerView2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull RecyclerView it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                RecyclerView.LayoutManager layoutManager = RecyclerView.this.getLayoutManager();
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if (linearLayoutManager != null) {
                    int findFirstCompletelyVisibleItemPosition = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
                    int findLastCompletelyVisibleItemPosition = linearLayoutManager.findLastCompletelyVisibleItemPosition();
                    int i2 = i;
                    boolean z = false;
                    if (findFirstCompletelyVisibleItemPosition <= i2 && i2 <= findLastCompletelyVisibleItemPosition) {
                        z = true;
                    }
                    if (z) {
                        return;
                    }
                }
                RecyclerView.this.scrollToPosition(i);
            }
        });
    }

    public static final void scrollToPositionSafely(@NotNull RecyclerView recyclerView, int i) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null && i >= 0 && i < adapter.getItemCount()) {
            recyclerView.scrollToPosition(i);
        }
    }

    public static final void scrollToPositionWithOffset(@NotNull RecyclerView recyclerView, int i, int i2) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        if (i < 0) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager != null) {
            linearLayoutManager.scrollToPositionWithOffset(i, i2);
        }
    }

    public static /* synthetic */ void scrollToPositionWithOffset$default(RecyclerView recyclerView, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        scrollToPositionWithOffset(recyclerView, i, i2);
    }
}
