.class final Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;",
        "test"
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
.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$1;->this$0:Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$1;->this$0:Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;->access$predicateCondition(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction$create$1;->test(Lcom/onyx/android/sdk/data/common/download/data/action/DownloadAction;)Z

    move-result p0

    return p0
.end method
