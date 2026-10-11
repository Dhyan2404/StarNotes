.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->x()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->access$generateBounding(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$f;->a(Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
