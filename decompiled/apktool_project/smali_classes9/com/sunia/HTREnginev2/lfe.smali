.class public final synthetic Lcom/sunia/HTREnginev2/lfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

.field public final synthetic f:Landroid/graphics/Point;

.field public final synthetic g:Landroid/graphics/Rect;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lfe;->e:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lfe;->f:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lfe;->g:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/lfe;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lfe;->e:Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lfe;->f:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lfe;->g:Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/lfe;->h:Z

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;->a(Lcom/onyx/galaxy/note/editor/view/window/CounterWindow;Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    return-void
.end method
