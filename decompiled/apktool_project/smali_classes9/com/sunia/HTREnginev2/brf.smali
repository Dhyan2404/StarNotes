.class public final synthetic Lcom/sunia/HTREnginev2/brf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/brf;->e:Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/brf;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/brf;->g:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/brf;->e:Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/brf;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/brf;->g:Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;->a(Lcom/onyx/galaxy/note/editor/handler/EraseEventHandler;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/events/note/UpdateEraseViewPositionEvent;)V

    return-void
.end method
