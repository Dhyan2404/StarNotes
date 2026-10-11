.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->M(Landroid/graphics/Matrix;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

.field public final synthetic h:F


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;",
            "F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->e:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->g:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    iput p4, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->e:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->g:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getScalePage$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lorg/apache/commons/lang3/Range;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/Range;->getMaximum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->h:F

    mul-float/2addr v1, p0

    div-float/2addr v0, v1

    iput v0, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$k;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
