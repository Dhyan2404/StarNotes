.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->p(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZ)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

.field public final synthetic g:Lcom/onyx/android/sdk/note/common/shape/Shape;

.field public final synthetic h:Z

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->f:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->h:Z

    iput-boolean p5, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->i:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->f:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->access$ensureRenderContext(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->f:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->access$ensureVirtualBoxInfo(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-boolean v6, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->h:Z

    iget-boolean v7, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->i:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/note/TextEditStartEvent;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;ZZ)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$n;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
