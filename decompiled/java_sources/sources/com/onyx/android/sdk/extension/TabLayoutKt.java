package com.onyx.android.sdk.extension;

import android.view.View;
import androidx.core.view.ViewCompat;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0000\u001a\u00020\u0001*\u00020\u00022!\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00010\u0004\u001a\u0014\u0010\t\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001aB\u0010\f\u001a\u00020\u0001*\u00020\u000226\u0010\r\u001a2\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00010\u000e\u001a\f\u0010\u0011\u001a\u0004\u0018\u00010\u0005*\u00020\u0002\u001a\u0012\u0010\u0012\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0005\u001a\u0012\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f\u001a\u0012\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f\u001a\u0012\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b\u001a*\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00190\u0018\"\u0004\b\u0000\u0010\u0019*\u00020\u00022\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00190\u0004*\n\u0010\u001b\"\u00020\u001c2\u00020\u001c¨\u0006\u001d"}, m61528d2 = {"addOnTabSelectedListener", "", "Lcom/google/android/material/tabs/TabLayout;", "onTabSelectedAction", "Lkotlin/Function1;", "Lcom/google/android/material/tabs/TabLayout$Tab;", "Lkotlin/ParameterName;", "name", "tab", "findTabByTag", "tag", "", "forEachTab", "action", "Lkotlin/Function2;", "", FirebaseAnalytics.Param.INDEX, "getSelectedTab", "indexOfTab", "removeTabByTag", "scrollToTab", "selectTab", "selectTabByTag", "tabList", "", "T", Constant.MAP_TAG, "dimenRes", "Lcom/onyx/android/sdk/device/R$dimen;", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabLayout.kt\ncom/onyx/android/sdk/extension/TabLayoutKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,92:1\n68#2,4:93\n40#2:97\n56#2:98\n75#2:99\n32#3,5:100\n*S KotlinDebug\n*F\n+ 1 TabLayout.kt\ncom/onyx/android/sdk/extension/TabLayoutKt\n*L\n22#1:93,4\n22#1:97\n22#1:98\n22#1:99\n82#1:100,5\n*E\n"})
/* loaded from: classes7.dex */
public final class TabLayoutKt {
    public static final void addOnTabSelectedListener(@NotNull TabLayout tabLayout, @NotNull final Function1<? super TabLayout.Tab, Unit> onTabSelectedAction) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(onTabSelectedAction, "onTabSelectedAction");
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.onyx.android.sdk.extension.TabLayoutKt$addOnTabSelectedListener$1
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                onTabSelectedAction.invoke(tab);
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(@NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
            }
        });
    }

    @Nullable
    public static final TabLayout.Tab findTabByTag(@NotNull TabLayout tabLayout, @NotNull Object tag) {
        TabLayout.Tab tabAt;
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        int tabCount = tabLayout.getTabCount();
        for (int i = 0; i < tabCount && (tabAt = tabLayout.getTabAt(i)) != null; i++) {
            if (Intrinsics.areEqual(tabAt.getTag(), tag)) {
                return tabAt;
            }
        }
        return null;
    }

    public static final void forEachTab(@NotNull TabLayout tabLayout, @NotNull Function2<? super Integer, ? super TabLayout.Tab, Unit> action) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int tabCount = tabLayout.getTabCount();
        for (int i = 0; i < tabCount; i++) {
            Integer valueOf = Integer.valueOf(i);
            TabLayout.Tab tabAt = tabLayout.getTabAt(i);
            Intrinsics.checkNotNull(tabAt);
            action.invoke(valueOf, tabAt);
        }
    }

    @Nullable
    public static final TabLayout.Tab getSelectedTab(@NotNull TabLayout tabLayout) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        return tabLayout.getTabAt(tabLayout.getSelectedTabPosition());
    }

    public static final int indexOfTab(@NotNull TabLayout tabLayout, @NotNull TabLayout.Tab tab) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(tab, "tab");
        int tabCount = tabLayout.getTabCount();
        for (int i = 0; i < tabCount; i++) {
            if (Intrinsics.areEqual(tabLayout.getTabAt(i), tab)) {
                return i;
            }
        }
        return -1;
    }

    public static final void removeTabByTag(@NotNull TabLayout tabLayout, @NotNull Object tag) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        TabLayout.Tab findTabByTag = findTabByTag(tabLayout, tag);
        if (findTabByTag == null) {
            return;
        }
        tabLayout.removeTab(findTabByTag);
    }

    public static final void scrollToTab(@NotNull TabLayout tabLayout, int i) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        final TabLayout.Tab tabAt = tabLayout.getTabAt(i);
        if (tabAt != null) {
            TabLayout.TabView view = tabAt.view;
            Intrinsics.checkNotNullExpressionValue(view, "view");
            if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
                view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.onyx.android.sdk.extension.TabLayoutKt$scrollToTab$lambda$1$$inlined$doOnLayout$1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(@NotNull View view2, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                        Intrinsics.checkNotNullParameter(view2, "view");
                        view2.removeOnLayoutChangeListener(this);
                        TabLayout.Tab.this.select();
                    }
                });
            } else {
                tabAt.select();
            }
        }
    }

    public static final void selectTab(@NotNull TabLayout tabLayout, int i) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        if (i >= 0) {
            tabLayout.selectTab(tabLayout.getTabAt(i));
        }
    }

    public static final void selectTabByTag(@NotNull TabLayout tabLayout, @NotNull Object tag) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (tabLayout.getTabCount() <= 0) {
            return;
        }
        TabLayout.Tab findTabByTag = findTabByTag(tabLayout, tag);
        if (findTabByTag == null) {
            selectTab(tabLayout, 0);
        } else {
            tabLayout.selectTab(findTabByTag);
        }
    }

    @NotNull
    public static final <T> List<T> tabList(@NotNull TabLayout tabLayout, @NotNull final Function1<? super TabLayout.Tab, ? extends T> map) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        final ArrayList arrayList = new ArrayList();
        forEachTab(tabLayout, new Function2<Integer, TabLayout.Tab, Unit>() { // from class: com.onyx.android.sdk.extension.TabLayoutKt$tabList$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, TabLayout.Tab tab) {
                invoke(num.intValue(), tab);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, @NotNull TabLayout.Tab tab) {
                Intrinsics.checkNotNullParameter(tab, "tab");
                CollectionKt.safeAdd(arrayList, map.invoke(tab));
            }
        });
        return arrayList;
    }
}
