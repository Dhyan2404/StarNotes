package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.onyx.android.sdk.data.LoginTriggerFrom;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.event.StatisticLoginPageShowEvent;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.account.p043ui.LoginActivity;
import com.onyx.galaxy.note.category.action.LoadUserAvatarAction;
import com.onyx.galaxy.note.category.data.FilterInfo;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter;
import com.onyx.galaxy.note.category.view.adapter.FilterAdapter$addHeaderItem$1;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.ItemFilterHeaderBinding;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.onyx.galaxy.note.usercenter.p049ui.UserCenterActivity;
import com.onyx.galaxy.note.utils.Navigator;
import de.hdodenhof.circleimageview.CircleImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\bH\u0016¨\u0006\u0010"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;", "onBind", "", "holder", "position", "", "item", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FilterAdapter$addHeaderItem$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<FilterInfo, FilterAdapter.FilterHeaderItemViewHolder> {

    /* renamed from: a */
    public final /* synthetic */ FilterAdapter f55150a;

    public FilterAdapter$addHeaderItem$1(FilterAdapter filterAdapter) {
        this.f55150a = filterAdapter;
    }

    /* renamed from: e */
    public static final void m44010e(FilterAdapter this$0, View view) {
        NoteListViewModel noteListViewModel;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        noteListViewModel = this$0.viewModel;
        noteListViewModel.toggleSideExpand();
    }

    /* renamed from: f */
    public static final void m44011f(FilterAdapter this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        StatisticsBundle.reportEvent$default(statisticsBundle, OnyxStatisticConstant.ID_HOME_PAGE_AVATAR_CLICK, null, 2, null);
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            ContextExtKt.startActivity(this$0.getContext(), UserCenterActivity.class);
        } else {
            statisticsBundle.postEvent(new StatisticLoginPageShowEvent(LoginTriggerFrom.HOME_AVATAR));
            ContextExtKt.startActivity(this$0.getContext(), LoginActivity.class);
        }
    }

    /* renamed from: g */
    public static final void m44012g(FilterAdapter this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ContextExtKt.startActivity(this$0.getContext(), SettingsActivity.class);
    }

    /* renamed from: h */
    public static final void m44013h(View view) {
        Navigator.navigateToDataRepository$default(Navigator.INSTANCE, null, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull FilterAdapter.FilterHeaderItemViewHolder holder, int position, @Nullable FilterInfo item) {
        int i;
        Intrinsics.checkNotNullParameter(holder, "holder");
        ItemFilterHeaderBinding viewBinding = holder.getViewBinding();
        final FilterAdapter filterAdapter = this.f55150a;
        TintImageView ivExpand = viewBinding.ivExpand;
        Intrinsics.checkNotNullExpressionValue(ivExpand, "ivExpand");
        ViewKt.click$default(ivExpand, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.blg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addHeaderItem$1.m44010e(FilterAdapter.this, view);
            }
        }, 1, null);
        CircleImageView ivUserIcon = viewBinding.ivUserIcon;
        Intrinsics.checkNotNullExpressionValue(ivUserIcon, "ivUserIcon");
        ViewKt.click$default(ivUserIcon, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.clg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addHeaderItem$1.m44011f(FilterAdapter.this, view);
            }
        }, 1, null);
        TintImageView ivSetting = viewBinding.ivSetting;
        Intrinsics.checkNotNullExpressionValue(ivSetting, "ivSetting");
        ViewKt.click$default(ivSetting, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.dlg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterAdapter$addHeaderItem$1.m44012g(FilterAdapter.this, view);
            }
        }, 1, null);
        View view = viewBinding.ivNotifyUnread;
        i = filterAdapter.unreadCount;
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrInvisible(view, i > 0);
        CircleImageView ivUserIcon2 = viewBinding.ivUserIcon;
        Intrinsics.checkNotNullExpressionValue(ivUserIcon2, "ivUserIcon");
        TintImageView ivUserRole = viewBinding.ivUserRole;
        Intrinsics.checkNotNullExpressionValue(ivUserRole, "ivUserRole");
        filterAdapter.disposable = new LoadUserAvatarAction(ivUserIcon2, ivUserRole).build().subscribe();
        TintImageView ivLibrary = viewBinding.ivLibrary;
        Intrinsics.checkNotNullExpressionValue(ivLibrary, "ivLibrary");
        ViewKt.click$default(ivLibrary, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.elg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FilterAdapter$addHeaderItem$1.m44013h(view2);
            }
        }, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public FilterAdapter.FilterHeaderItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemFilterHeaderBinding inflate = ItemFilterHeaderBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new FilterAdapter.FilterHeaderItemViewHolder(inflate);
    }
}
