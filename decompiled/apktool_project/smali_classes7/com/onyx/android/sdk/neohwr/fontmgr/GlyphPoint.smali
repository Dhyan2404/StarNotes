.class public final Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;",
        "",
        "type",
        "",
        "x",
        "",
        "y",
        "close",
        "",
        "(IFFZ)V",
        "getClose",
        "()Z",
        "setClose",
        "(Z)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "getY",
        "setY",
        "Companion",
        "sdk-neohwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POINT_TYPE_BEZIER:I = 0x2

.field public static final POINT_TYPE_LINE:I = 0x1

.field public static final POINT_TYPE_MOVE:I


# instance fields
.field private close:Z

.field private type:I

.field private x:F

.field private y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->Companion:Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint$Companion;

    return-void
.end method

.method public constructor <init>(IFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->type:I

    iput p2, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->x:F

    iput p3, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->y:F

    iput-boolean p4, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->close:Z

    return-void
.end method


# virtual methods
.method public final getClose()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->close:Z

    return p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->type:I

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->y:F

    return p0
.end method

.method public final setClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->close:Z

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->type:I

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neohwr/fontmgr/GlyphPoint;->y:F

    return-void
.end method
