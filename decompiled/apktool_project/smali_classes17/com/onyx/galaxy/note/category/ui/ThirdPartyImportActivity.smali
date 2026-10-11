.class public final Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;
.super Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0012\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0002R\u0016\u0010\u0012\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "H",
        "F",
        "",
        "containsIntentData",
        "L",
        "K",
        "I",
        "",
        "w0",
        "importTimerKey",
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
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IMPORT_DELAY_TIME:J = 0xc8L


# instance fields
.field public w0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->Companion:Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->w0:I

    return-void
.end method

.method public static synthetic E(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->G(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;)V

    return-void
.end method

.method public static final G(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic J(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->I(Z)V

    return-void
.end method

.method public static synthetic M(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->L(Z)V

    return-void
.end method

.method public static final synthetic access$checkAndImport(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->F()V

    return-void
.end method

.method public static final synthetic access$goToNext(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->L(Z)V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$a;-><init>(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;Lcom/onyx/galaxy/note/category/action/SecurityCheckAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ygn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ygn;-><init>(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v1, p0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->w0:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$checkAndImportDelay$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity$checkAndImportDelay$1;-><init>(Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->w0:I

    return-void
.end method

.method public final I(Z)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "android.intent.extra.STREAM"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x45ee9a33

    if-eq v6, v7, :cond_2

    const v7, -0x37c67be

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_3
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    check-cast v4, Ljava/util/Collection;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :cond_5
    const-string p1, "onyx.intent.action.IMPORT"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final K()V
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/account/ui/RecentLoginActivity;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public final L(Z)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/utils/LoginUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/LoginUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/LoginUtils;->isLoginRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->K()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->I(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffd2

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;->H()V

    return-void
.end method
