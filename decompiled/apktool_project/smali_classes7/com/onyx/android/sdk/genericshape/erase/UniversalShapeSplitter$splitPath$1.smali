.class final synthetic Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$splitPath$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->splitPath$default(Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/erase/SplitPathResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/genericshape/IGeometry;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    const-string v4, "loadRenderPath"

    const-string v5, "loadRenderPath(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/Path;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/Path;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter;->loadRenderPath(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/genericshape/IGeometry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitter$splitPath$1;->invoke(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
