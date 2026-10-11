.class public final Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/Boolean;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;->getPageIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", notePageDirty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isNeedUpdateCoverByCheckVirtualPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;->access$isNeedUpdateCoverByCheckVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;->access$isNeedUpdateCoverByCheckVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/CheckNeedUpdateCoverThumbnailAction$a;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
