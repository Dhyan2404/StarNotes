.class public final Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;,
        Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginAccountListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAccountListAdapter.kt\ncom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,82:1\n256#2,2:83\n256#2,2:85\n*S KotlinDebug\n*F\n+ 1 LoginAccountListAdapter.kt\ncom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter\n*L\n46#1:83,2\n54#1:85,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u001f B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ&\u0010\t\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u001a\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;",
        "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;",
        "binding",
        "",
        "url",
        "n",
        "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;",
        "r",
        "Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;",
        "getListener",
        "()Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;",
        "setListener",
        "(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;)V",
        "listener",
        "<init>",
        "()V",
        "LoginAccountHolder",
        "LoginAccountItemListener",
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
        "SMAP\nLoginAccountListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAccountListAdapter.kt\ncom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,82:1\n256#2,2:83\n256#2,2:85\n*S KotlinDebug\n*F\n+ 1 LoginAccountListAdapter.kt\ncom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter\n*L\n46#1:83,2\n54#1:85,2\n*E\n"
    }
.end annotation


# instance fields
.field public r:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->o(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->p(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->r:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;->onLogin(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    :cond_0
    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->r:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;->onDelete(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->r:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;

    return-object p0
.end method

.method public final n(Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->ivUserAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/galaxy/note/R$drawable;->icon_avatar:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->ivUserAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/onyx/galaxy/note/R$drawable;->icon_avatar:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    sget p2, Lcom/onyx/galaxy/note/R$drawable;->icon_avatar:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->ivUserAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;

    check-cast p3, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;ILcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;ILcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V
    .locals 20
    .param p1    # Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "holder"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;

    move-result-object v2

    .line 3
    iget-object v3, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->tvAccount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-virtual {v4, v1}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLoginAccount(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v3, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->ivLoginType:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLoginTypeIconDrawable(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v3, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->tvLastLoginAt:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v6, Lcom/onyx/galaxy/note/R$string;->last_login_at:I

    sget-object v7, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v4, v1}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLocalLoginAt(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMM_2()Ljava/text/SimpleDateFormat;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v4, v1}, Lcom/onyx/galaxy/note/utils/LoginUtils;->getLoginAccountRoleIconDrawable(Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 7
    iget-object v4, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->ivUserRole:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v4, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->ivUserRole:Landroid/widget/ImageView;

    const-string v5, "ivUserRole"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    const/16 v7, 0x8

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v7

    .line 9
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->n(Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;Ljava/lang/String;)V

    .line 11
    iget-object v8, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->tvLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvLogin"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    new-instance v11, Lcom/sunia/HTREnginev2/o3j;

    invoke-direct {v11, v0, v1}, Lcom/sunia/HTREnginev2/o3j;-><init>(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 12
    iget-object v14, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->tvRemove:Landroid/widget/TextView;

    const-string v3, "tvRemove"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v15, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/p3j;

    invoke-direct {v3, v0, v1}, Lcom/sunia/HTREnginev2/p3j;-><init>(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v17, v3

    invoke-static/range {v14 .. v19}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->tvLastLogin:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvLastLogin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v6, v7

    .line 14
    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;

    invoke-direct {p2, p0, p1}, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountHolder;-><init>(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;Lcom/onyx/galaxy/note/databinding/ItemLoginAccountBinding;)V

    return-object p2
.end method

.method public final setListener(Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter;->r:Lcom/onyx/galaxy/note/account/view/adapter/LoginAccountListAdapter$LoginAccountItemListener;

    return-void
.end method
