package com.onyx.galaxy.note.common.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.common.view.AutoFitViewPagerHeightCallback;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/AutoFitViewPagerHeightCallback;", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "", "position", "", "onPageSelected", "Landroidx/viewpager2/widget/ViewPager2;", "a", "Landroidx/viewpager2/widget/ViewPager2;", "viewpager", Constants.CONSTRUCTOR_NAME, "(Landroidx/viewpager2/widget/ViewPager2;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class AutoFitViewPagerHeightCallback extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ViewPager2 viewpager;

    public AutoFitViewPagerHeightCallback(@NotNull ViewPager2 viewpager) {
        Intrinsics.checkNotNullParameter(viewpager, "viewpager");
        this.viewpager = viewpager;
    }

    /* renamed from: b */
    public static final void m45119b(AutoFitViewPagerHeightCallback this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View childAt = this$0.viewpager.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        final View childAt2 = recyclerView != null ? recyclerView.getChildAt(i) : null;
        if (childAt2 != null) {
            childAt2.measure(View.MeasureSpec.makeMeasureSpec(this$0.viewpager.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec((int) ResManager.INSTANCE.getScreenHeight(), 0));
            ViewKt.setLayoutParams(this$0.viewpager, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.common.view.AutoFitViewPagerHeightCallback$onPageSelected$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                    invoke2(layoutParams);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                    Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                    setLayoutParams.height = childAt2.getMeasuredHeight();
                }
            });
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(final int position) {
        super.onPageSelected(position);
        this.viewpager.post(new Runnable() { // from class: com.sunia.HTREnginev2.lj
            @Override // java.lang.Runnable
            public final void run() {
                AutoFitViewPagerHeightCallback.m45119b(AutoFitViewPagerHeightCallback.this, position);
            }
        });
    }
}
