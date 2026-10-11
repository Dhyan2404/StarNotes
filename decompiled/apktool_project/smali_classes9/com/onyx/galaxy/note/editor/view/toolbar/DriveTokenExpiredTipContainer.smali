.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDriveTokenExpiredTipContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DriveTokenExpiredTipContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,80:1\n256#2,2:81\n256#2,2:83\n256#2,2:85\n256#2,2:87\n*S KotlinDebug\n*F\n+ 1 DriveTokenExpiredTipContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer\n*L\n42#1:81,2\n49#1:83,2\n71#1:85,2\n29#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 B\u001d\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008\u001f\u0010#B%\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008\u001f\u0010&J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0008\u0010\u0008\u001a\u00020\u0006H\u0014J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002R0\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "activityContext",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "provider",
        "",
        "showTips",
        "onDetachedFromWindow",
        "h",
        "d",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "authResult",
        "f",
        "e",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/jvm/functions/Function1;",
        "getTipVisibilityChangeListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setTipVisibilityChangeListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "tipVisibilityChangeListener",
        "Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;",
        "Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;",
        "binding",
        "Ljava/lang/Runnable;",
        "g",
        "Ljava/lang/Runnable;",
        "hideRunnable",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
        "SMAP\nDriveTokenExpiredTipContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DriveTokenExpiredTipContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,80:1\n256#2,2:81\n256#2,2:83\n256#2,2:85\n256#2,2:87\n*S KotlinDebug\n*F\n+ 1 DriveTokenExpiredTipContainer.kt\ncom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer\n*L\n42#1:81,2\n49#1:83,2\n71#1:85,2\n29#1:87,2\n*E\n"
    }
.end annotation


# instance fields
.field public e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

.field public final g:Ljava/lang/Runnable;
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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/sunia/HTREnginev2/wif;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/wif;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->g:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->h()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->j(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$handleAuthResult(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->f(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->i(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->g(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->e()V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$activityContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$provider"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->d(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->buildBindDriveAction(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer$a;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer$a;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final e()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->e:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->e()V

    return-void
.end method

.method public final getTipVisibilityChangeListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final h()V
    .locals 7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->f:Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivClose"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/yif;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/yif;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setTipVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final showTips(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->g:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-static {p0, v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->repostDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_edit_drive_token_expired_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->f:Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->tvDriveTokenExpireWarn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->f:Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iget-object v3, v2, Lcom/onyx/galaxy/note/databinding/LayoutDriveTokenExpiredContainerBinding;->tvDriveTokenExpireBind:Landroid/widget/TextView;

    const-string v0, "tvDriveTokenExpireBind"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/xif;

    invoke-direct {v6, p0, p1, p2}, Lcom/sunia/HTREnginev2/xif;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/DriveTokenExpiredTipContainer;->e:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
