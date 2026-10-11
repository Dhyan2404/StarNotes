.class public final synthetic Lcom/sunia/HTREnginev2/l6n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l6n;->a:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l6n;->a:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;->a(Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
