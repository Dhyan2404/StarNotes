.class public final Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$c;->e:Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$c;->e:Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;->access$getCoverModel$p(Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction$c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
