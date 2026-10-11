.class public final synthetic Lcom/sunia/HTREnginev2/bfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bfe;->a:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    return-void
.end method


# virtual methods
.method public final onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bfe;->a:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->c(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    return-void
.end method
