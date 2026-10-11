.class public final Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->setShapeLocationBean(Lcom/onyx/android/sdk/note/common/document/doc/ShapeLocationBean;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/draft/ResetShapeLocationBeanAction;)V

    return-void
.end method
