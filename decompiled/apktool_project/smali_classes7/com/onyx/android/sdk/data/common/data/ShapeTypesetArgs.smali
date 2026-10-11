.class public final Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001c\u001a\u00020\u0000J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u0004R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
        "",
        "()V",
        "charSpacing",
        "",
        "getCharSpacing",
        "()Ljava/lang/Float;",
        "setCharSpacing",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "enableUnifiedParams",
        "",
        "getEnableUnifiedParams",
        "()Z",
        "setEnableUnifiedParams",
        "(Z)V",
        "fontSize",
        "getFontSize",
        "setFontSize",
        "lineSpacing",
        "getLineSpacing",
        "setLineSpacing",
        "typeface",
        "",
        "getTypeface",
        "()Ljava/lang/String;",
        "setTypeface",
        "(Ljava/lang/String;)V",
        "copy",
        "getCharSpacingInPx",
        "getLineSpacingInPx",
        "getMinLineSpacingInPx",
        "Companion",
        "sdk-data_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_CHAR_SPACING_DEFAULT:F = 0.0f

.field public static final MIN_LINE_SPACING:F = 1.1f

.field public static final STANDARD_CHAR_SPACING:F = 0.08f

.field public static final STANDARD_FONT_SIZE:F = 16.0f

.field public static final STANDARD_LINE_SPACING:F = 1.2f


# instance fields
.field private charSpacing:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private enableUnifiedParams:Z

.field private fontSize:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lineSpacing:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeface:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->Companion:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;-><init>()V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->enableUnifiedParams:Z

    iput-boolean v1, v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->enableUnifiedParams:Z

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->typeface:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->typeface:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->fontSize:Ljava/lang/Float;

    iput-object v1, v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->fontSize:Ljava/lang/Float;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->charSpacing:Ljava/lang/Float;

    iput-object v1, v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->charSpacing:Ljava/lang/Float;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->lineSpacing:Ljava/lang/Float;

    iput-object p0, v0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->lineSpacing:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCharSpacing()F
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->charSpacing:Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    int-to-float v0, v0

    add-float/2addr v0, p0

    const p0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getCharSpacing()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->charSpacing:Ljava/lang/Float;

    return-object p0
.end method

.method public final getCharSpacingInPx()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getCharSpacing()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getFontSize()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getEnableUnifiedParams()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->enableUnifiedParams:Z

    return p0
.end method

.method public final getFontSize()F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->fontSize:Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x41800000    # 16.0f

    return p0
.end method

.method public final getFontSize()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->fontSize:Ljava/lang/Float;

    return-object p0
.end method

.method public final getLineSpacing()F
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->lineSpacing:Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x3f99999a    # 1.2f

    :goto_0
    return p0
.end method

.method public final getLineSpacing()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->lineSpacing:Ljava/lang/Float;

    return-object p0
.end method

.method public final getLineSpacingInPx()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getLineSpacing()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getFontSize()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getMinLineSpacingInPx()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->getFontSize()F

    move-result p0

    return p0
.end method

.method public final getTypeface()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->typeface:Ljava/lang/String;

    return-object p0
.end method

.method public final setCharSpacing(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->charSpacing:Ljava/lang/Float;

    return-void
.end method

.method public final setEnableUnifiedParams(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->enableUnifiedParams:Z

    return-void
.end method

.method public final setFontSize(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->fontSize:Ljava/lang/Float;

    return-void
.end method

.method public final setLineSpacing(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->lineSpacing:Ljava/lang/Float;

    return-void
.end method

.method public final setTypeface(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;->typeface:Ljava/lang/String;

    return-void
.end method
