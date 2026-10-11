package com.onyx.android.sdk.p039ui;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B¡\u0001\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\f\u0012h\u0010\u001c\u001ad\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0016j\u0004\u0018\u0001`\u0019¢\u0006\u0004\b\u001d\u0010\u001eJ(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000eR\u0016\u0010\u0015\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u000eRv\u0010\u001c\u001ad\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0016j\u0004\u0018\u0001`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/ItemMarginDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "margins", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", "state", "", "getItemOffsets", "", "a", "Ljava/lang/Number;", "leftMargin", "b", "rightMargin", "c", "topMargin", "d", "bottomMargin", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "Lcom/onyx/android/sdk/ui/MarginSetter;", "e", "Lkotlin/jvm/functions/Function4;", "overrideMarginSetter", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Lkotlin/jvm/functions/Function4;)V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ItemMarginDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final Number leftMargin;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final Number rightMargin;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final Number topMargin;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final Number bottomMargin;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public final Function4<Rect, View, RecyclerView, RecyclerView.State, Unit> overrideMarginSetter;

    public /* synthetic */ ItemMarginDecoration(Number number, Number number2, Number number3, Number number4, Function4 function4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : number, (i & 2) != 0 ? null : number2, (i & 4) != 0 ? null : number3, (i & 8) != 0 ? null : number4, function4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull final Rect margins, @NotNull final View view, @NotNull final RecyclerView parent, @NotNull final RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(margins, "margins");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        AnyKt.whenNotNull(this.leftMargin, new Function1<Number, Unit>() { // from class: com.onyx.android.sdk.ui.ItemMarginDecoration$getItemOffsets$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Number number) {
                invoke2(number);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Number it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                margins.left = it2.intValue();
            }
        });
        AnyKt.whenNotNull(this.rightMargin, new Function1<Number, Unit>() { // from class: com.onyx.android.sdk.ui.ItemMarginDecoration$getItemOffsets$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Number number) {
                invoke2(number);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Number it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                margins.right = it2.intValue();
            }
        });
        AnyKt.whenNotNull(this.topMargin, new Function1<Number, Unit>() { // from class: com.onyx.android.sdk.ui.ItemMarginDecoration$getItemOffsets$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Number number) {
                invoke2(number);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Number it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                margins.top = it2.intValue();
            }
        });
        AnyKt.whenNotNull(this.bottomMargin, new Function1<Number, Unit>() { // from class: com.onyx.android.sdk.ui.ItemMarginDecoration$getItemOffsets$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Number number) {
                invoke2(number);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Number it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                margins.bottom = it2.intValue();
            }
        });
        AnyKt.whenNotNull(this.overrideMarginSetter, new Function1<Function4<? super Rect, ? super View, ? super RecyclerView, ? super RecyclerView.State, ? extends Unit>, Unit>() { // from class: com.onyx.android.sdk.ui.ItemMarginDecoration$getItemOffsets$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Function4<? super Rect, ? super View, ? super RecyclerView, ? super RecyclerView.State, ? extends Unit> function4) {
                invoke2((Function4<? super Rect, ? super View, ? super RecyclerView, ? super RecyclerView.State, Unit>) function4);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Function4<? super Rect, ? super View, ? super RecyclerView, ? super RecyclerView.State, Unit> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.invoke(margins, view, parent, state);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ItemMarginDecoration(@Nullable Number number, @Nullable Number number2, @Nullable Number number3, @Nullable Number number4, @Nullable Function4<? super Rect, ? super View, ? super RecyclerView, ? super RecyclerView.State, Unit> function4) {
        this.leftMargin = number;
        this.rightMargin = number2;
        this.topMargin = number3;
        this.bottomMargin = number4;
        this.overrideMarginSetter = function4;
    }
}
