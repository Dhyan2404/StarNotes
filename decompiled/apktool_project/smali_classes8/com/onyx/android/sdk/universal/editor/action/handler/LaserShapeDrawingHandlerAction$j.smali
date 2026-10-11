.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->F(Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;->f:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;->f:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    long-to-int p1, p1

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->access$lowLatencyRender(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;I)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$j;->a(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
