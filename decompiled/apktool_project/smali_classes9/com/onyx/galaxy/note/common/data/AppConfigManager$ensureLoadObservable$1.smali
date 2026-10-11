.class final Lcom/onyx/galaxy/note/common/data/AppConfigManager$ensureLoadObservable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/data/AppConfigManager;->ensureLoadObservable(Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/common/data/AppConfig;",
        "it",
        "Lcom/onyx/galaxy/note/common/data/AppConfigManager;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/data/AppConfigManager$ensureLoadObservable$1;->$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/onyx/galaxy/note/common/data/AppConfigManager;)Lcom/onyx/galaxy/note/common/data/AppConfig;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/data/AppConfigManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/data/AppConfigManager$ensureLoadObservable$1;->$appContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->access$loadAppConfig(Lcom/onyx/galaxy/note/common/data/AppConfigManager;Landroid/content/Context;)Lcom/onyx/galaxy/note/common/data/AppConfig;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/data/AppConfigManager$ensureLoadObservable$1;->apply(Lcom/onyx/galaxy/note/common/data/AppConfigManager;)Lcom/onyx/galaxy/note/common/data/AppConfig;

    move-result-object p0

    return-object p0
.end method
