package com.onyx.galaxy.note.account.view.dialog;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import androidx.fragment.app.C1126e;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.p039ui.AutoSizeDialog;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.DoubleOptionDialog;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.adapter.LoginAccountListAdapter;
import com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.DialogLoginAccountListBinding;
import com.onyx.galaxy.note.editor.view.popup.TipsPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001#B\u000f\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u001b\u0010\u0012\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;", "Lcom/onyx/android/sdk/ui/AutoSizeDialog;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", C4921e.f26537n, C6998g.f39679a, C6999h.f39688c, "l", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", LoginAuthConst.ACCOUNT_AUTH, "m", "e", "Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;", "Lkotlin/Lazy;", C6997f.f39671c, "()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;", "binding", "Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;", "i", "Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;", "getListener", "()Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;", "setListener", "(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;", "j", "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;", "adapter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "LoginAccountListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoginAccountListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAccountListDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,136:1\n256#2,2:137\n*S KotlinDebug\n*F\n+ 1 LoginAccountListDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog\n*L\n60#1:137,2\n*E\n"})
/* loaded from: classes17.dex */
public final class LoginAccountListDialog extends AutoSizeDialog {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public LoginAccountListener listener;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public LoginAccountListAdapter adapter;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;", "", "onDelete", "", "model", "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;", "onLogin", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface LoginAccountListener {
        void onDelete(@NotNull OnyxAccountModel model);

        void onLogin(@NotNull OnyxAccountModel model);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginAccountListDialog(@NotNull final Context context) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<DialogLoginAccountListBinding>() { // from class: com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DialogLoginAccountListBinding invoke() {
                return DialogLoginAccountListBinding.inflate(LayoutInflater.from(context));
            }
        });
        this.binding = lazy;
        this.adapter = new LoginAccountListAdapter();
    }

    /* renamed from: i */
    public static final void m42008i(LoginAccountListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* renamed from: j */
    public static final void m42009j(LoginAccountListDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m42015l();
    }

    /* renamed from: e */
    public final void m42010e(OnyxAccountModel account) {
        List mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.adapter.getItems());
        mutableList.remove(account);
        this.adapter.submitList(mutableList);
        account.setLocalVisible(false);
        CouchDBManager.INSTANCE.getOnyxAccountProvider().saveAccount(account);
        LoginAccountListener loginAccountListener = this.listener;
        if (loginAccountListener != null) {
            loginAccountListener.onDelete(account);
        }
    }

    /* renamed from: f */
    public final DialogLoginAccountListBinding m42011f() {
        return (DialogLoginAccountListBinding) this.binding.getValue();
    }

    /* renamed from: g */
    public final void m42012g() {
        this.adapter.submitList(AccountDataBundle.INSTANCE.getRecentLoginLocalAccountList());
        m42011f().rvList.setAdapter(this.adapter);
        m42011f().rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        m42011f().rvList.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog$initAccountList$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                super.getItemOffsets(outRect, view, parent, state);
                if (parent.getChildAdapterPosition(view) > 0) {
                    outRect.top += ResManager.INSTANCE.getDimens(C7384R.dimen.dp_12);
                }
            }
        });
        this.adapter.setListener(new LoginAccountListAdapter.LoginAccountItemListener() { // from class: com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog$initAccountList$2
            @Override // com.onyx.galaxy.note.account.view.adapter.LoginAccountListAdapter.LoginAccountItemListener
            public void onDelete(@NotNull OnyxAccountModel model) {
                Intrinsics.checkNotNullParameter(model, "model");
                LoginAccountListDialog.this.m42016m(model);
            }

            @Override // com.onyx.galaxy.note.account.view.adapter.LoginAccountListAdapter.LoginAccountItemListener
            public void onLogin(@NotNull OnyxAccountModel model) {
                Intrinsics.checkNotNullParameter(model, "model");
                LoginAccountListDialog.LoginAccountListener listener = LoginAccountListDialog.this.getListener();
                if (listener != null) {
                    listener.onLogin(model);
                }
            }
        });
    }

    @Nullable
    public final LoginAccountListener getListener() {
        return this.listener;
    }

    /* renamed from: h */
    public final void m42013h() {
        TintImageView ivBack = m42011f().ivBack;
        Intrinsics.checkNotNullExpressionValue(ivBack, "ivBack");
        ViewKt.click$default(ivBack, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.q3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginAccountListDialog.m42008i(LoginAccountListDialog.this, view);
            }
        }, 1, null);
        TintImageView tvTips = m42011f().tvTips;
        Intrinsics.checkNotNullExpressionValue(tvTips, "tvTips");
        ViewKt.click$default(tvTips, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.r3j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginAccountListDialog.m42009j(LoginAccountListDialog.this, view);
            }
        }, 1, null);
    }

    /* renamed from: k */
    public final void m42014k() {
        m42012g();
        TintImageView tvTips = m42011f().tvTips;
        Intrinsics.checkNotNullExpressionValue(tvTips, "tvTips");
        tvTips.setVisibility(AppConfigManager.isSupportLoginType$default(AppConfigManager.INSTANCE, 3, null, 2, null) ? 0 : 8);
    }

    /* renamed from: l */
    public final void m42015l() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        DockType dockType = DockType.TOP;
        String string = getContext().getString(C10651R.string.login_huawei_tips_2);
        TintImageView tvTips = m42011f().tvTips;
        Intrinsics.checkNotNullExpressionValue(tvTips, "tvTips");
        TipsPopup tipsPopup = new TipsPopup(new TipsPopup.TipContext(context, dockType, string, tvTips, null, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_288), 16, null));
        TintImageView tvTips2 = m42011f().tvTips;
        Intrinsics.checkNotNullExpressionValue(tvTips2, "tvTips");
        Window window = getWindow();
        Intrinsics.checkNotNull(window);
        View decorView = window.getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        BasePopupWindow.showByDockType$default(tipsPopup, tvTips2, 0, 0, decorView, 6, null);
    }

    /* renamed from: m */
    public final void m42016m(final OnyxAccountModel account) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        DoubleOptionDialog doubleOptionDialog = new DoubleOptionDialog(context);
        doubleOptionDialog.setMask(0.7f);
        doubleOptionDialog.setShowTitleIconView(true);
        doubleOptionDialog.setTitleColorRes(C10651R.color.error_200);
        doubleOptionDialog.setLeftButtonDrawableRes(C8037R.drawable.md_ui_shape_stroke_gray);
        doubleOptionDialog.setLeftButtonColorRes(C7996R.color.theme_text_color_01);
        doubleOptionDialog.setMessageTextRes(C10651R.string.delete_recent_account_tips);
        doubleOptionDialog.setLeftButtonTitleRes(C10651R.string.cancel);
        doubleOptionDialog.setRightButtonTitleRes(C10651R.string.confirm);
        doubleOptionDialog.setOnRightButtonClick(new Function0<Unit>() { // from class: com.onyx.galaxy.note.account.view.dialog.LoginAccountListDialog$showDeleteDialog$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                LoginAccountListDialog.this.m42010e(account);
            }
        });
        doubleOptionDialog.show();
    }

    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063330, this, savedInstanceState);
    }

    public final void setListener(@Nullable LoginAccountListener loginAccountListener) {
        this.listener = loginAccountListener;
    }
}
