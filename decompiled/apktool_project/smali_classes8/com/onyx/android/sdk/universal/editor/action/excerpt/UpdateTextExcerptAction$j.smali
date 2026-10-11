.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->u()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateTextExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;->access$setOriginalShapeRect$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;Landroid/graphics/RectF;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction$j;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateTextExcerptAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
