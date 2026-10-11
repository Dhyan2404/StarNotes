.class public final Lcom/onyx/android/sdk/genericshape/AlignmentAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/genericshape/AlignmentAttr$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/AlignmentAttr;",
        "",
        "()V",
        "alignOriginX",
        "",
        "getAlignOriginX",
        "()F",
        "setAlignOriginX",
        "(F)V",
        "alignOriginY",
        "getAlignOriginY",
        "setAlignOriginY",
        "Companion",
        "sdk-genericshape_overseasRelease"
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
.field public static final ALIGN_SELF:F = -1.0f

.field public static final Companion:Lcom/onyx/android/sdk/genericshape/AlignmentAttr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private alignOriginX:F

.field private alignOriginY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/AlignmentAttr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->Companion:Lcom/onyx/android/sdk/genericshape/AlignmentAttr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->alignOriginX:F

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->alignOriginY:F

    return-void
.end method


# virtual methods
.method public final getAlignOriginX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->alignOriginX:F

    return p0
.end method

.method public final getAlignOriginY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->alignOriginY:F

    return p0
.end method

.method public final setAlignOriginX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->alignOriginX:F

    return-void
.end method

.method public final setAlignOriginY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/AlignmentAttr;->alignOriginY:F

    return-void
.end method
