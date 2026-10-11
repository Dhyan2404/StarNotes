.class public final Lcom/onyx/android/sdk/neopdf/PdfTextRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfTextRun$Companion;,
        Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 .2\u00020\u0001:\u0002./B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010+\u001a\u00020!2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0096\u0002R\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\"\"\u0004\u0008&\u0010$R\u001a\u0010\'\u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010$R\u001a\u0010)\u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\"\"\u0004\u0008*\u0010$\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfTextRun;",
        "Ljava/io/Serializable;",
        "()V",
        "charList",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;",
        "getCharList",
        "()[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;",
        "setCharList",
        "([Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;)V",
        "[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;",
        "faceIndex",
        "",
        "getFaceIndex",
        "()I",
        "setFaceIndex",
        "(I)V",
        "fontColor",
        "getFontColor",
        "setFontColor",
        "fontPath",
        "",
        "getFontPath",
        "()Ljava/lang/String;",
        "setFontPath",
        "(Ljava/lang/String;)V",
        "fontSize",
        "",
        "getFontSize",
        "()F",
        "setFontSize",
        "(F)V",
        "isBold",
        "",
        "()Z",
        "setBold",
        "(Z)V",
        "isItalic",
        "setItalic",
        "isUnderline",
        "setUnderline",
        "isVertical",
        "setVertical",
        "equals",
        "obj",
        "",
        "Companion",
        "RunChar",
        "sdk-pdfdata_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfTextRun$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private charList:[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private faceIndex:I

.field private fontColor:I

.field private fontPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fontSize:F

.field private isBold:Z

.field private isItalic:Z

.field private isUnderline:Z

.field private isVertical:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfTextRun$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfTextRun$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->Companion:Lcom/onyx/android/sdk/neopdf/PdfTextRun$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->charList:[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontSize:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontColor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/onyx/android/sdk/neopdf/PdfTextRun;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/EqualsUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->charList:[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->charList:[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontSize:F

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontSize:F

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontColor:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontColor:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isBold:Z

    iget-boolean v4, p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isBold:Z

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isItalic:Z

    iget-boolean v4, p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isItalic:Z

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isUnderline:Z

    iget-boolean v4, p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isUnderline:Z

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isVertical:Z

    iget-boolean p1, p1, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isVertical:Z

    invoke-virtual {v2, p0, p1}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(ZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getCharList()[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->charList:[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;

    return-object p0
.end method

.method public final getFaceIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->faceIndex:I

    return p0
.end method

.method public final getFontColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontColor:I

    return p0
.end method

.method public final getFontPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontSize:F

    return p0
.end method

.method public final isBold()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isBold:Z

    return p0
.end method

.method public final isItalic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isItalic:Z

    return p0
.end method

.method public final isUnderline()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isUnderline:Z

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isVertical:Z

    return p0
.end method

.method public final setBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isBold:Z

    return-void
.end method

.method public final setCharList([Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;)V
    .locals 1
    .param p1    # [Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->charList:[Lcom/onyx/android/sdk/neopdf/PdfTextRun$RunChar;

    return-void
.end method

.method public final setFaceIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->faceIndex:I

    return-void
.end method

.method public final setFontColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontColor:I

    return-void
.end method

.method public final setFontPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontPath:Ljava/lang/String;

    return-void
.end method

.method public final setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->fontSize:F

    return-void
.end method

.method public final setItalic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isItalic:Z

    return-void
.end method

.method public final setUnderline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isUnderline:Z

    return-void
.end method

.method public final setVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfTextRun;->isVertical:Z

    return-void
.end method
