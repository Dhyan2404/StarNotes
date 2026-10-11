.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->j(Lcom/onyx/android/sdk/base/extension/IntList;Z)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$e;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$e;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$e;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$e;->f:Z

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->access$toggleColorSetFavored(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;ZZ)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$e;->a(Z)V

    return-void
.end method
