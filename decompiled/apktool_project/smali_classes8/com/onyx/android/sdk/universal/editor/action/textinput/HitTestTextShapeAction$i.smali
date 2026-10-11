.class public final Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->m(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;->e:Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;->f:Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;->e:Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;->f:Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;->getCreateNew()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->setCreateNew(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction$i;->a(Lcom/onyx/android/sdk/note/request/textinput/HitTestTextShapeRequest;)V

    return-void
.end method
