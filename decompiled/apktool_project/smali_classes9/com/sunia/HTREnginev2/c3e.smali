.class public final synthetic Lcom/sunia/HTREnginev2/c3e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

.field public final synthetic f:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c3e;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/c3e;->f:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/c3e;->e:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c3e;->f:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->n(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;Z)V

    return-void
.end method
