.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 32\u00020\u0001:\u00013B\u0007\u00a2\u0006\u0004\u00081\u00102J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u0011J\u0006\u0010\u0016\u001a\u00020\u0011J\u0006\u0010\u0017\u001a\u00020\u0004J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0002R\u001d\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u00100\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;",
        "binding",
        "",
        "checkLeftNoteQuota",
        "showLeftQuotaDialog",
        "updateLeftQuotaDialog",
        "Landroid/view/View;",
        "parentView",
        "",
        "checkNoteQuotaUsedOut",
        "Landroid/content/Context;",
        "context",
        "checkGuideRegister",
        "showNoteQuotaNotEnoughDialog",
        "showJoinVipDialog",
        "",
        "getConsumedNoteQuota",
        "",
        "getLeftNoteQuota",
        "getQuotaLockVisibility",
        "getSettingsButtonVisibility",
        "checkIn",
        "",
        "templateName",
        "statisticType",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "event",
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "j",
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "getNoteUsageInfo",
        "()Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "setNoteUsageInfo",
        "(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)V",
        "noteUsageInfo",
        "k",
        "Z",
        "getHasLeftQuotaTipped",
        "()Z",
        "setHasLeftQuotaTipped",
        "(Z)V",
        "hasLeftQuotaTipped",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_QUOTA_CHANGED:Ljava/lang/String; = "QuotaChanged"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_SHOW_LEFT_QUOTA:Ljava/lang/String; = "ShowLeftQuota"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_SHOW_QUOTA_USED_OUT:Ljava/lang/String; = "ShowQuotaUsedOut"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->j:Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    return-void
.end method

.method public static final synthetic access$navigate(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->h(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->g(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "joinVipWithNotebookQuota"

    const-string v0, "homepage_notelimit_overlay"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "$binding"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->getRoot()Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->k:Z

    return-void
.end method


# virtual methods
.method public final checkGuideRegister(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return v0
.end method

.method public final checkIn()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/action/note/CheckInAction;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->executeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final checkLeftNoteQuota(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "QuotaChanged"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVipRole()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->getRoot()Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->k:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;->INSTANCE:Lcom/onyx/android/sdk/data/account/utils/QuotaManager;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/account/utils/QuotaManager;->getNoteCreateQuota(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    const-string p1, "ShowLeftQuota"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final checkNoteQuotaUsedOut(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getParentTemplate(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/MessageTemplate;

    move-result-object p0

    const-string p1, "navType1"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/MessageTemplate;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/extension/StringMap;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/extension/StringMap;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    const-string p0, "statisticType"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const-string p2, "MemberCenter"

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/galaxy/note/utils/Navigator;->navigate(Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringMap;Ljava/lang/String;)V

    return-void
.end method

.method public final getConsumedNoteQuota()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->j:Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->getDocCountIncludeDustbin()I

    move-result p0

    return p0
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getHasLeftQuotaTipped()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->k:Z

    return p0
.end method

.method public final getLeftNoteQuota()J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    return-wide v0
.end method

.method public final getNoteUsageInfo()Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->j:Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    return-object p0
.end method

.method public final getQuotaLockVisibility()I
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getLeftNoteQuota()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method public final getSettingsButtonVisibility()I
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getLeftNoteQuota()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setHasLeftQuotaTipped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->k:Z

    return-void
.end method

.method public final setNoteUsageInfo(Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->j:Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    return-void
.end method

.method public final showJoinVipDialog(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public final showLeftQuotaDialog(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;)V
    .locals 19
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "binding"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->k:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "joinVipWithNotebookQuota"

    invoke-static {v2}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->isMessageExpired(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getConsumedNoteQuota()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getLeftNoteQuota()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    const-string v6, "content1"

    invoke-static {v2, v6}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "${usedQuota}"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "${quota}"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content2"

    invoke-static {v2, v4}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "button1"

    invoke-static {v2, v5}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->contentText1:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->contentText2:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->confirmButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->confirmButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "confirmButton"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/w0k;

    invoke-direct {v7, v0}, Lcom/sunia/HTREnginev2/w0k;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v10, v1, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->closeButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v2, "closeButton"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    new-instance v13, Lcom/sunia/HTREnginev2/x0k;

    invoke-direct {v13, v1, v0}, Lcom/sunia/HTREnginev2/x0k;-><init>(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->getRoot()Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final showNoteQuotaNotEnoughDialog(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public final updateLeftQuotaDialog(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;)V
    .locals 18
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "binding"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getConsumedNoteQuota()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getLeftNoteQuota()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    const-string v4, "joinVipWithNotebookQuota"

    const-string v5, "content1"

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/data/common/data/MessageTemplateKt;->getMessageTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "${usedQuota}"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "${quota}"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;->contentText1:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
