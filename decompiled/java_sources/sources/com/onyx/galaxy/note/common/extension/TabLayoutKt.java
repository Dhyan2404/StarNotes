package com.onyx.galaxy.note.common.extension;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.content.res.AppCompatResources;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteOutlineType;
import com.onyx.galaxy.note.category.data.NoteSelectType;
import com.onyx.galaxy.note.category.data.TemplateDisplayType;
import com.onyx.galaxy.note.databinding.LayoutCustomTabBinding;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aC\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00052!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00010\b\u001a;\u0010\r\u001a\u00020\u0001*\u00020\u000e2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00010\b\u001a-\u0010\u0010\u001a\u00020\u0001*\u00020\u00022!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00010\b\u001a;\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00010\b\u001a;\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00042!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00010\b¨\u0006\u0013"}, m61528d2 = {"addChangeTemplateTabs", "", "Lcom/google/android/material/tabs/TabLayout;", "list", "", "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;", "selectType", "onTabSelectedAction", "Lkotlin/Function1;", "Lcom/google/android/material/tabs/TabLayout$Tab;", "Lkotlin/ParameterName;", "name", "tab", "addFullscreenNoteOutlineTabs", "Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;", "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;", "addNoteListTabs", "addNoteOutlineBottomTabs", "addNoteOutlineTabs", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabLayout.kt\ncom/onyx/galaxy/note/common/extension/TabLayoutKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1855#2,2:101\n1855#2,2:103\n1855#2,2:105\n1855#2,2:107\n*S KotlinDebug\n*F\n+ 1 TabLayout.kt\ncom/onyx/galaxy/note/common/extension/TabLayoutKt\n*L\n30#1:101,2\n44#1:103,2\n56#1:105,2\n87#1:107,2\n*E\n"})
/* loaded from: classes9.dex */
public final class TabLayoutKt {
    public static final void addChangeTemplateTabs(@NotNull TabLayout tabLayout, @NotNull List<? extends TemplateDisplayType> list, @NotNull TemplateDisplayType selectType, @NotNull Function1<? super TabLayout.Tab, Unit> onTabSelectedAction) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(selectType, "selectType");
        Intrinsics.checkNotNullParameter(onTabSelectedAction, "onTabSelectedAction");
        for (TemplateDisplayType templateDisplayType : list) {
            TabLayout.Tab newTab = tabLayout.newTab();
            newTab.setTag(templateDisplayType);
            newTab.setText(templateDisplayType.getTitleResId());
            newTab.setContentDescription(templateDisplayType.getTitleResId());
            Intrinsics.checkNotNullExpressionValue(newTab, "apply(...)");
            tabLayout.addTab(newTab);
            if (templateDisplayType == selectType) {
                newTab.select();
            }
        }
        com.onyx.android.sdk.extension.TabLayoutKt.addOnTabSelectedListener(tabLayout, onTabSelectedAction);
    }

    public static final void addFullscreenNoteOutlineTabs(@NotNull TintTabLayoutView tintTabLayoutView, @NotNull List<? extends NoteOutlineType> list, @NotNull Function1<? super TabLayout.Tab, Unit> onTabSelectedAction) {
        Intrinsics.checkNotNullParameter(tintTabLayoutView, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(onTabSelectedAction, "onTabSelectedAction");
        for (NoteOutlineType noteOutlineType : list) {
            TabLayout.Tab newTab = tintTabLayoutView.newTab();
            newTab.setTag(noteOutlineType);
            newTab.setText(noteOutlineType.getTitleResId());
            newTab.setContentDescription(noteOutlineType.getTitleResId());
            tintTabLayoutView.addTab(newTab, false);
        }
        tintTabLayoutView.initTabViewBackgroundColor();
        com.onyx.android.sdk.extension.TabLayoutKt.addOnTabSelectedListener(tintTabLayoutView, onTabSelectedAction);
    }

    public static final void addNoteListTabs(@NotNull TabLayout tabLayout, @NotNull Function1<? super TabLayout.Tab, Unit> onTabSelectedAction) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(onTabSelectedAction, "onTabSelectedAction");
        TabLayout.Tab newTab = tabLayout.newTab();
        newTab.setText(tabLayout.getContext().getString(C10651R.string.all));
        newTab.setTag(NoteSelectType.TAB_ALL);
        Intrinsics.checkNotNullExpressionValue(newTab, "apply(...)");
        TabLayout.Tab newTab2 = tabLayout.newTab();
        newTab2.setText(tabLayout.getContext().getString(C10651R.string.note));
        newTab2.setTag(NoteSelectType.TAB_NOTE);
        Intrinsics.checkNotNullExpressionValue(newTab2, "apply(...)");
        TabLayout.Tab newTab3 = tabLayout.newTab();
        newTab3.setText(tabLayout.getContext().getString(C10651R.string.pdf));
        newTab3.setTag(NoteSelectType.TAB_PDF);
        Intrinsics.checkNotNullExpressionValue(newTab3, "apply(...)");
        tabLayout.addTab(newTab);
        tabLayout.addTab(newTab2);
        tabLayout.addTab(newTab3);
        com.onyx.android.sdk.extension.TabLayoutKt.addOnTabSelectedListener(tabLayout, onTabSelectedAction);
    }

    public static final void addNoteOutlineBottomTabs(@NotNull TabLayout tabLayout, @NotNull List<? extends NoteOutlineType> list, @NotNull Function1<? super TabLayout.Tab, Unit> onTabSelectedAction) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(onTabSelectedAction, "onTabSelectedAction");
        for (NoteOutlineType noteOutlineType : list) {
            TabLayout.Tab newTab = tabLayout.newTab();
            LayoutCustomTabBinding inflate = LayoutCustomTabBinding.inflate(LayoutInflater.from(tabLayout.getContext()));
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
            inflate.title.setText(ResManager.INSTANCE.getString(noteOutlineType.getTitleResId()));
            inflate.icon.setImageResource(noteOutlineType.getIconResId());
            newTab.setCustomView(inflate.getRoot());
            tabLayout.addTab(newTab, false);
        }
        com.onyx.android.sdk.extension.TabLayoutKt.addOnTabSelectedListener(tabLayout, onTabSelectedAction);
    }

    public static final void addNoteOutlineTabs(@NotNull TabLayout tabLayout, @NotNull List<? extends NoteOutlineType> list, @NotNull Function1<? super TabLayout.Tab, Unit> onTabSelectedAction) {
        Intrinsics.checkNotNullParameter(tabLayout, "<this>");
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(onTabSelectedAction, "onTabSelectedAction");
        final int dimensionPixelSize = tabLayout.getContext().getResources().getDimensionPixelSize(C7384R.dimen.dp_40);
        for (NoteOutlineType noteOutlineType : list) {
            TabLayout.Tab newTab = tabLayout.newTab();
            newTab.setIcon(AppCompatResources.getDrawable(tabLayout.getContext(), noteOutlineType.getIconResId()));
            newTab.setTag(noteOutlineType);
            TabLayout.TabView view = newTab.view;
            Intrinsics.checkNotNullExpressionValue(view, "view");
            View findChild = ViewKt.findChild(view, ImageView.class);
            if (findChild != null) {
                ViewKt.setLayoutParams(findChild, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.galaxy.note.common.extension.TabLayoutKt$addNoteOutlineTabs$1$1$1
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
                        int i = dimensionPixelSize;
                        setLayoutParams.width = i;
                        setLayoutParams.height = i;
                    }
                });
            }
            tabLayout.addTab(newTab, false);
        }
        com.onyx.android.sdk.extension.TabLayoutKt.addOnTabSelectedListener(tabLayout, onTabSelectedAction);
    }
}
