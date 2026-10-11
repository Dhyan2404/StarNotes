.class public final Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$e;->e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$e;->e:Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;->access$setColorSetName$p(Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/colorset/CreateColorSetAction$e;->a(Ljava/lang/String;)V

    return-void
.end method
