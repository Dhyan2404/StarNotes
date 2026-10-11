.class final Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$shapeToolHandlerMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$shapeToolHandlerMap$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$shapeToolHandlerMap$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$shapeToolHandlerMap$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$shapeToolHandlerMap$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$shapeToolHandlerMap$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel$shapeToolHandlerMap$2;->invoke()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->LASSO:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "selection_provider"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 3
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->WRITE_PEN_GROUP:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "shape_drawing_provider"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 4
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 5
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->BALLPOINT_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 6
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->PENCIL:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 7
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->TAPE_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 8
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->MARKER_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 9
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->CALLIGRAPHY_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 10
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->SOFT_PAINT_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 11
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->LASER_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "laser_shape_drawing_provider"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 12
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "erase_provider"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 13
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->IMAGE_STICKER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "shape_image"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 14
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->IMAGE:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 15
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->EXCERPT:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "excerpt_provider"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    .line 16
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->EDIT_TEXT:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "text_input_provider"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    .line 17
    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->GRAPH_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-string v1, "universal_shape_drawing_provider"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Lkotlin/Pair;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
