.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeByExcerptAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeByExcerptAction;->m()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeByExcerptAction$f;->e:Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeByExcerptAction$f;->e:Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoShapeByExcerptAction$f;->a(Lcom/onyx/android/sdk/note/request/excerpt/LoadShapeByExcerptRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
