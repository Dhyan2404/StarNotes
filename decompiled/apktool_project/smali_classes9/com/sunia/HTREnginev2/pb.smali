.class public final synthetic Lcom/sunia/HTREnginev2/pb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pb;->e:Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pb;->e:Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;->a(Lcom/onyx/galaxy/note/editor/menu/AnnotationSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)V

    return-void
.end method
