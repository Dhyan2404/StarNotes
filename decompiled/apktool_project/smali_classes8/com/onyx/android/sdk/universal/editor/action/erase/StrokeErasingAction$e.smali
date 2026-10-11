.class public final Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->l(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->access$getEraseContext$p(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->access$getRenderContext$p(Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;->f:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->roundBoundingRectWithWidth(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->unionEraseRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$e;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V

    return-void
.end method
