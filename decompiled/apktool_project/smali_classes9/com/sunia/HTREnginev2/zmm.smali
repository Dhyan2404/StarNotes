.class public final synthetic Lcom/sunia/HTREnginev2/zmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zmm;->e:Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/zmm;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zmm;->e:Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zmm;->f:Ljava/util/List;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;->a(Lcom/onyx/galaxy/note/editor/handler/ShapesSelectionEventHandler;Ljava/util/List;Z)V

    return-void
.end method
