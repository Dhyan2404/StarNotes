.class public final Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;->access$afterRemoved(Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/page/RemoveInvalidVirtualPageAction$c;->a(J)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
