.class public final Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0016\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010#\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0012\u001a\u0004\u0008!\u0010\u0014\"\u0004\u0008\"\u0010\u0016R\"\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;",
        "",
        "copy",
        "Landroid/graphics/Paint;",
        "createStrokePaint",
        "",
        "isDarkTheme",
        "createFillPaint",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;",
        "a",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;",
        "getType",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;",
        "setType",
        "(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V",
        "type",
        "",
        "b",
        "I",
        "getStrokeColor",
        "()I",
        "setStrokeColor",
        "(I)V",
        "strokeColor",
        "",
        "c",
        "F",
        "getStrokeWidth",
        "()F",
        "setStrokeWidth",
        "(F)V",
        "strokeWidth",
        "d",
        "getFillColor",
        "setFillColor",
        "fillColor",
        "e",
        "Z",
        "getShowIndicator",
        "()Z",
        "setShowIndicator",
        "(Z)V",
        "showIndicator",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:F

.field public d:I

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->RECTANGLE:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    const/16 v0, 0xff

    const/16 v1, 0xf8

    const/16 v2, 0x5c

    const/16 v3, 0xdb

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->c:F

    const/16 v0, 0x32

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->e:Z

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->b:I

    iput v1, v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->b:I

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->c:F

    iput v1, v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->c:F

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->d:I

    iput p0, v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->d:I

    return-object v0
.end method

.method public final createFillPaint(Z)Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->d:I

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;->createFillPaint(ZI)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public final createStrokePaint()Landroid/graphics/Paint;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;

    iget v1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->b:I

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->c:F

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;->createStrokePaint(IF)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->d:I

    return p0
.end method

.method public final getShowIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->e:Z

    return p0
.end method

.method public final getStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->b:I

    return p0
.end method

.method public final getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->c:F

    return p0
.end method

.method public final getType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    return-object p0
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->d:I

    return-void
.end method

.method public final setShowIndicator(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->e:Z

    return-void
.end method

.method public final setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->b:I

    return-void
.end method

.method public final setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->c:F

    return-void
.end method

.method public final setType(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->a:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    return-void
.end method
