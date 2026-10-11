.class public final Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/pen/NeoPenConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0008\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\tR\u0014\u0010\r\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\tR\u0014\u0010\u000f\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\tR\u0014\u0010\u0010\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\tR\u0014\u0010\u0011\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\tR\u0014\u0010\u0012\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\tR\u0014\u0010\u0013\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\tR\u0014\u0010\u0014\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\tR\u0014\u0010\u0015\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;",
        "",
        "",
        "scale",
        "Lcom/onyx/android/sdk/pen/PenPrecision;",
        "getPenPrecision",
        "a",
        "",
        "NEOPEN_BRUSH_SHAPE_CIRCLE",
        "I",
        "NEOPEN_BRUSH_SHAPE_ELLIPSE",
        "NEOPEN_BRUSH_SHAPE_RECTANGLE",
        "NEOPEN_PEN_TYPE_BALLPOINT",
        "NEOPEN_PEN_TYPE_BRUSH",
        "NEOPEN_PEN_TYPE_BRUSH_SIGN",
        "NEOPEN_PEN_TYPE_CHARCOAL",
        "NEOPEN_PEN_TYPE_CHARCOAL_V2",
        "NEOPEN_PEN_TYPE_FOUNTAIN",
        "NEOPEN_PEN_TYPE_FOUNTAIN_V2",
        "NEOPEN_PEN_TYPE_MARKER",
        "NEOPEN_PEN_TYPE_PENCIL",
        "NEOPEN_PEN_TYPE_SQUARE",
        "<init>",
        "()V",
        "sdk-pen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 0

    const/high16 p0, 0x3fc00000    # 1.5f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/high16 p0, 0x40e00000    # 7.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const/high16 p0, 0x40800000    # 4.0f

    return p0

    :cond_1
    const/high16 p0, 0x41000000    # 8.0f

    return p0
.end method

.method public final getPenPrecision(F)Lcom/onyx/android/sdk/pen/PenPrecision;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/pen/PenPrecision;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;->a(F)F

    move-result p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/pen/PenPrecision;-><init>(FF)V

    return-object v0
.end method
