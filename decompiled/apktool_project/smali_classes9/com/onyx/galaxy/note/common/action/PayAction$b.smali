.class public final Lcom/onyx/galaxy/note/common/action/PayAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/action/PayAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/common/action/PayAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/PayAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/PayAction$b;->e:Lcom/onyx/galaxy/note/common/action/PayAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/PayAction$b;->e:Lcom/onyx/galaxy/note/common/action/PayAction;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/common/action/PayAction;->access$showPayDialog(Lcom/onyx/galaxy/note/common/action/PayAction;J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/common/action/PayAction$b;->a(J)V

    return-void
.end method
