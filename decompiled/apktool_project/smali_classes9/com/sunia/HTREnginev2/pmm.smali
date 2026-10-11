.class public final synthetic Lcom/sunia/HTREnginev2/pmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pmm;->e:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pmm;->e:Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;->a(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    return-void
.end method
