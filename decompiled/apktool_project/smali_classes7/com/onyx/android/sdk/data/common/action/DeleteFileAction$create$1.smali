.class final Lcom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteFileAction.kt\ncom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n*S KotlinDebug\n*F\n+ 1 DeleteFileAction.kt\ncom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1\n*L\n18#1:32,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeleteFileAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteFileAction.kt\ncom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n*S KotlinDebug\n*F\n+ 1 DeleteFileAction.kt\ncom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1\n*L\n18#1:32,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1;->this$0:Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1;->this$0:Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;->access$getFilePathList$p(Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1;->this$0:Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;->access$delete(Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/action/DeleteFileAction$create$1;->accept(Lcom/onyx/android/sdk/data/common/action/DeleteFileAction;)V

    return-void
.end method
