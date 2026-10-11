.class public final synthetic Lcom/sunia/HTREnginev2/soe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/soe;->e:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/soe;->e:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->b(Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;)V

    return-void
.end method
