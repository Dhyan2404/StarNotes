.class public final synthetic Lcom/sunia/HTREnginev2/e1k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;


# direct methods
.method public synthetic constructor <init>(ILcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/e1k;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e1k;->f:Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/e1k;->e:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e1k;->f:Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->F(ILcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)V

    return-void
.end method
