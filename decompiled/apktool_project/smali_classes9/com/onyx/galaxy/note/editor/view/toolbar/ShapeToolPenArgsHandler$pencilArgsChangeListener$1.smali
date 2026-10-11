.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;",
        "onChangeAlphaFactor",
        "",
        "alphaFactor",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeAlphaFactor(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1$onChangeAlphaFactor$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$pencilArgsChangeListener$1$onChangeAlphaFactor$1;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
