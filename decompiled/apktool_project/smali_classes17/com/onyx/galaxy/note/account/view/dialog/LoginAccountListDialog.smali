.class public final Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginAccountListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAccountListDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,136:1\n256#2,2:137\n*S KotlinDebug\n*F\n+ 1 LoginAccountListDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog\n*L\n60#1:137,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001#B\u000f\u0012\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008!\u0010\"J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u001b\u0010\u0012\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "k",
        "g",
        "h",
        "l",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "account",
        "m",
        "e",
        "Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;",
        "Lkotlin/Lazy;",
        "f",
        "()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;",
        "i",
        "Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;",
        "getListener",
        "()Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;",
        "setListener",
        "(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;)V",
        "listener",
        "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;",
        "j",
        "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;",
        "adapter",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "LoginAccountListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoginAccountListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAccountListDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,136:1\n256#2,2:137\n*S KotlinDebug\n*F\n+ 1 LoginAccountListDialog.kt\ncom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog\n*L\n60#1:137,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$binding$2;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->h:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->j:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    return-void
.end method

.method public static final synthetic access$deleteAccount(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->e(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method

.method public static final synthetic access$showDeleteDialog(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->m(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->j(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->i(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->l()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->j:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->j:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->setLocalVisible(Z)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CouchDBManager;->getOnyxAccountProvider()Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/account/OnyxAccountProvider;->saveAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->i:Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;->onDelete(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    :cond_0
    return-void
.end method

.method public final f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    return-object p0
.end method

.method public final g()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getRecentLoginLocalAccountList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->j:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->rvList:Lcom/aitsuki/swipe/SwipeMenuRecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->j:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->rvList:Lcom/aitsuki/swipe/SwipeMenuRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->rvList:Lcom/aitsuki/swipe/SwipeMenuRecyclerView;

    new-instance v1, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$initAccountList$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$initAccountList$1;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->j:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$initAccountList$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$initAccountList$2;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->setListener(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;)V

    return-void
.end method

.method public final getListener()Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->i:Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;

    return-object p0
.end method

.method public final h()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->ivBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivBack"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/q3j;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/q3j;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->tvTips:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "tvTips"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/r3j;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/r3j;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final k()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->g()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->tvTips:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "tvTips"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v0, v3, v1, v2, v1}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final l()V
    .locals 18

    new-instance v9, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/onyx/galaxy/note/R$string;->login_huawei_tips_2:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object v0

    iget-object v4, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->tvTips:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "tvTips"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/android/sdk/device/R$dimen;->dp_288:I

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/lang/CharSequence;Landroid/view/View;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;

    invoke-direct {v11, v9}, Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/TipsPopup$TipContext;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;

    move-result-object v0

    iget-object v12, v0, Lcom/onyx/galaxy/note/databinding/DialogLoginAccountListBinding;->tvTips:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v15

    const-string v0, "getDecorView(...)"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMask(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setShowTitleIconView(Z)V

    sget v1, Lcom/onyx/galaxy/note/R$color;->error_200:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setTitleColorRes(I)V

    sget v1, Lcom/onyx/android/sdk/ui/R$drawable;->md_ui_shape_stroke_gray:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonDrawableRes(I)V

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonColorRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->delete_recent_account_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMessageTextRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonTitleRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->confirm:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonTitleRes(I)V

    new-instance v1, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$showDeleteDialog$1$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$showDeleteDialog$1$1;-><init>(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnRightButtonClick(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffe2

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog;->i:Lcom/onyx/galaxy/note/account/view/dialog/LoginAccountListDialog$LoginAccountListener;

    return-void
.end method
