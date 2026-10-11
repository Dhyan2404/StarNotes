package com.onyx.galaxy.note.account.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.adapter.LoginAccountListAdapter;
import com.onyx.galaxy.note.databinding.ItemLoginAccountBinding;
import com.onyx.galaxy.note.utils.LoginUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u001f B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ&\u0010\t\u001a\u00020\b2\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u001a\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;", "binding", "", "url", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;", "r", "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;", "getListener", "()Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;", "setListener", "(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, Constants.CONSTRUCTOR_NAME, "()V", "LoginAccountHolder", "LoginAccountItemListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoginAccountListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAccountListAdapter.kt\ncom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,82:1\n256#2,2:83\n256#2,2:85\n*S KotlinDebug\n*F\n+ 1 LoginAccountListAdapter.kt\ncom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter\n*L\n46#1:83,2\n54#1:85,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoginAccountListAdapter extends BaseQuickAdapter<OnyxAccountModel, LoginAccountHolder> {

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public LoginAccountItemListener listener;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;", "binding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class LoginAccountHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemLoginAccountBinding binding;

        /* renamed from: I */
        public final /* synthetic */ LoginAccountListAdapter f53526I;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoginAccountHolder(@NotNull LoginAccountListAdapter loginAccountListAdapter, ItemLoginAccountBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f53526I = loginAccountListAdapter;
            this.binding = binding;
        }

        @NotNull
        public final ItemLoginAccountBinding getBinding() {
            return this.binding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;", "", "onDelete", "", "model", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "onLogin", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface LoginAccountItemListener {
        void onDelete(@NotNull OnyxAccountModel model);

        void onLogin(@NotNull OnyxAccountModel model);
    }

    public LoginAccountListAdapter() {
        super(null, 1, null);
    }

    /* renamed from: o */
    public static final void m41996o(LoginAccountListAdapter this$0, OnyxAccountModel onyxAccountModel, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LoginAccountItemListener loginAccountItemListener = this$0.listener;
        if (loginAccountItemListener != null) {
            loginAccountItemListener.onLogin(onyxAccountModel);
        }
    }

    /* renamed from: p */
    public static final void m41997p(LoginAccountListAdapter this$0, OnyxAccountModel onyxAccountModel, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LoginAccountItemListener loginAccountItemListener = this$0.listener;
        if (loginAccountItemListener != null) {
            loginAccountItemListener.onDelete(onyxAccountModel);
        }
    }

    @Nullable
    public final LoginAccountItemListener getListener() {
        return this.listener;
    }

    /* renamed from: n */
    public final void m41998n(ItemLoginAccountBinding binding, String url) {
        if (url == null || url.length() == 0) {
            binding.ivUserAvatar.setImageDrawable(ResManager.INSTANCE.getDrawable(C10651R.drawable.icon_avatar));
        } else {
            Glide.with(binding.ivUserAvatar).load(url).placeholder(C10651R.drawable.icon_avatar).error(C10651R.drawable.icon_avatar).into(binding.ivUserAvatar);
        }
    }

    public final void setListener(@Nullable LoginAccountItemListener loginAccountItemListener) {
        this.listener = loginAccountItemListener;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull LoginAccountHolder holder, int position, @Nullable final OnyxAccountModel item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ItemLoginAccountBinding binding = holder.getBinding();
        TintTextView tintTextView = binding.tvAccount;
        LoginUtils loginUtils = LoginUtils.INSTANCE;
        tintTextView.setText(loginUtils.getLoginAccount(item));
        binding.ivLoginType.setImageDrawable(loginUtils.getLoginTypeIconDrawable(item));
        TintTextView tintTextView2 = binding.tvLastLoginAt;
        ResManager resManager = ResManager.INSTANCE;
        int i = C10651R.string.last_login_at;
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        tintTextView2.setText(resManager.getString(i, dateTimeUtil.formatDate(loginUtils.getLocalLoginAt(item), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HHMM_2())));
        Drawable loginAccountRoleIconDrawable = loginUtils.getLoginAccountRoleIconDrawable(item);
        binding.ivUserRole.setImageDrawable(loginAccountRoleIconDrawable);
        ImageView ivUserRole = binding.ivUserRole;
        Intrinsics.checkNotNullExpressionValue(ivUserRole, "ivUserRole");
        ivUserRole.setVisibility(loginAccountRoleIconDrawable != null ? 0 : 8);
        m41998n(binding, item.getAvatarUrl());
        TintTextView tvLogin = binding.tvLogin;
        Intrinsics.checkNotNullExpressionValue(tvLogin, "tvLogin");
        ViewKt.click$default(tvLogin, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginAccountListAdapter.m41996o(LoginAccountListAdapter.this, item, view);
            }
        }, 1, null);
        TextView tvRemove = binding.tvRemove;
        Intrinsics.checkNotNullExpressionValue(tvRemove, "tvRemove");
        ViewKt.click$default(tvRemove, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginAccountListAdapter.m41997p(LoginAccountListAdapter.this, item, view);
            }
        }, 1, null);
        TintTextView tvLastLogin = binding.tvLastLogin;
        Intrinsics.checkNotNullExpressionValue(tvLastLogin, "tvLastLogin");
        tvLastLogin.setVisibility(position == 0 ? 0 : 8);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public LoginAccountHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemLoginAccountBinding inflate = ItemLoginAccountBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new LoginAccountHolder(this, inflate);
    }
}
