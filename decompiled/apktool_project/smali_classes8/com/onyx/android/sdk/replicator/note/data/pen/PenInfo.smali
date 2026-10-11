.class public final Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tH\u00c6\u0003J=\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\u0006H\u00d6\u0001J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010\"\u0004\u0008\u001a\u0010\u0012\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;",
        "",
        "strokeWidth",
        "",
        "eraserWidth",
        "strokeColor",
        "",
        "currentShapeType",
        "penData",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;",
        "(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V",
        "getCurrentShapeType",
        "()I",
        "setCurrentShapeType",
        "(I)V",
        "getEraserWidth",
        "()F",
        "setEraserWidth",
        "(F)V",
        "getPenData",
        "()Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;",
        "setPenData",
        "(Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V",
        "getStrokeColor",
        "setStrokeColor",
        "getStrokeWidth",
        "setStrokeWidth",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private currentShapeType:I

.field private eraserWidth:F

.field private penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private strokeColor:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;-><init>(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V
    .locals 0
    .param p5    # Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    .line 6
    iput p4, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    .line 7
    iput-object p5, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    return-void
.end method

.method public synthetic constructor <init>(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    const/4 p5, 0x0

    .line 8
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;-><init>(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->copy(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    return p0
.end method

.method public final component5()Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    return-object p0
.end method

.method public final copy(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;
    .locals 6
    .param p5    # Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;-><init>(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCurrentShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    return p0
.end method

.method public final getEraserWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    return p0
.end method

.method public final getPenData()Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    return-object p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setCurrentShapeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    return-void
.end method

.method public final setEraserWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    return-void
.end method

.method public final setPenData(Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenInfo(strokeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", eraserWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->eraserWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", strokeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->strokeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentShapeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->currentShapeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", penData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;->penData:Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
