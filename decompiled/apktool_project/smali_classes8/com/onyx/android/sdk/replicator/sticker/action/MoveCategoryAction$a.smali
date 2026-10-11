.class public final Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction$a;->e:Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 1
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction$a;->e:Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;->access$moveCategoryOnCloud(Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction$a;->a(Lkotlin/Unit;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
