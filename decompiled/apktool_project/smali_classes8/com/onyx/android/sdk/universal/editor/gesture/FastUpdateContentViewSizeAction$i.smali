.class public final Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$i;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$i;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction$i;->a(Lcom/onyx/android/sdk/universal/editor/events/app/FastUpdateContentViewSizeEvent;)Lcom/onyx/android/sdk/universal/editor/gesture/FastUpdateContentViewSizeAction;

    move-result-object p0

    return-object p0
.end method
