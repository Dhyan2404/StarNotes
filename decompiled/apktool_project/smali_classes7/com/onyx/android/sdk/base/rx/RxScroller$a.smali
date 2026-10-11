.class public final Lcom/onyx/android/sdk/base/rx/RxScroller$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/rx/RxScroller;->fling(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;)Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/rx/RxScroller;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/rx/RxScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/rx/RxScroller$a;->e:Lcom/onyx/android/sdk/base/rx/RxScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/onyx/android/sdk/base/rx/RxScroller$a;->e:Lcom/onyx/android/sdk/base/rx/RxScroller;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling, value: x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->getNewX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;->getNewY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller;->access$log(Lcom/onyx/android/sdk/base/rx/RxScroller;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/rx/RxScroller$a;->a(Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;)V

    return-void
.end method
