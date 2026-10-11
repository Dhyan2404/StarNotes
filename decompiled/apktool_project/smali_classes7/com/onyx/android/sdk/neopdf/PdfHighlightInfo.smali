.class public final Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0014\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 =2\u00020\u0001:\u0001=B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u00109\u001a\u00020\u001d2\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0096\u0002J\u0008\u0010<\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001a\u0010$\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000f\"\u0004\u0008&\u0010\u0011R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R\u001a\u00106\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u000f\"\u0004\u00088\u0010\u0011\u00a8\u0006>"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
        "Ljava/io/Serializable;",
        "()V",
        "author",
        "",
        "getAuthor",
        "()Ljava/lang/String;",
        "setAuthor",
        "(Ljava/lang/String;)V",
        "blendMode",
        "getBlendMode",
        "setBlendMode",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "customAttr",
        "getCustomAttr",
        "setCustomAttr",
        "endPosition",
        "getEndPosition",
        "setEndPosition",
        "extraAttr",
        "getExtraAttr",
        "setExtraAttr",
        "highlightId",
        "isVertical",
        "",
        "()Z",
        "setVertical",
        "(Z)V",
        "linkDest",
        "getLinkDest",
        "setLinkDest",
        "linkType",
        "getLinkType",
        "setLinkType",
        "note",
        "getNote",
        "setNote",
        "objId",
        "getObjId",
        "setObjId",
        "quadPoints",
        "",
        "getQuadPoints",
        "()[F",
        "setQuadPoints",
        "([F)V",
        "startPosition",
        "getStartPosition",
        "setStartPosition",
        "style",
        "getStyle",
        "setStyle",
        "equals",
        "obj",
        "",
        "toString",
        "Companion",
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
.field public static final BLEND_MODE_DEFAULT:Ljava/lang/String; = ""
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BLEND_MODE_DIFFERENCE:Ljava/lang/String; = "Difference"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BLEND_MODE_MULTIPLY:Ljava/lang/String; = "Multiply"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BLEND_MODE_NORMAL:Ljava/lang/String; = "Normal"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HIGHLIGHT_STYLE_COVER:I = 0x4

.field public static final HIGHLIGHT_STYLE_DASH_UNDERLINE:I = 0x2

.field public static final HIGHLIGHT_STYLE_HIGHLIGHT:I = 0x0

.field public static final HIGHLIGHT_STYLE_NORMAL_DARKEN:I = 0x5

.field public static final HIGHLIGHT_STYLE_SQUIGGLY:I = 0x3

.field public static final HIGHLIGHT_STYLE_STRIKE_OUT:I = 0x6

.field public static final HIGHLIGHT_STYLE_UNDERLINE:I = 0x1

.field public static final LINK_TYPE_NONE:I = 0x0

.field public static final LINK_TYPE_PAGE:I = 0x1

.field public static final LINK_TYPE_URI:I = 0x2


# instance fields
.field private author:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private blendMode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private color:I

.field private customAttr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private endPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extraAttr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public highlightId:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isVertical:Z

.field private linkDest:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private linkType:I

.field private note:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private objId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private quadPoints:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private style:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->isVertical:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->blendMode:Ljava/lang/String;

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

    const-class v2, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/EqualsUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->highlightId:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->highlightId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->author:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->author:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->startPosition:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->startPosition:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->endPosition:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->endPosition:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->note:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->note:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->quadPoints:[F

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->quadPoints:[F

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->style:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->style:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->isVertical:Z

    iget-boolean v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->isVertical:Z

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->color:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->color:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkType:I

    iget v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkType:I

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkDest:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkDest:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->extraAttr:Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->extraAttr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->customAttr:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->customAttr:Ljava/lang/String;

    invoke-virtual {v2, p0, p1}, Lcom/onyx/android/sdk/base/utils/EqualsUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

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

.method public final getAuthor()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->author:Ljava/lang/String;

    return-object p0
.end method

.method public final getBlendMode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->blendMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->color:I

    return p0
.end method

.method public final getCustomAttr()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->customAttr:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->endPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtraAttr()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->extraAttr:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkDest()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkDest:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkType:I

    return p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->note:Ljava/lang/String;

    return-object p0
.end method

.method public final getObjId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->objId:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuadPoints()[F
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->quadPoints:[F

    return-object p0
.end method

.method public final getStartPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->startPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->style:I

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->isVertical:Z

    return p0
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->author:Ljava/lang/String;

    return-void
.end method

.method public final setBlendMode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->blendMode:Ljava/lang/String;

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->color:I

    return-void
.end method

.method public final setCustomAttr(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->customAttr:Ljava/lang/String;

    return-void
.end method

.method public final setEndPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->endPosition:Ljava/lang/String;

    return-void
.end method

.method public final setExtraAttr(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->extraAttr:Ljava/lang/String;

    return-void
.end method

.method public final setLinkDest(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkDest:Ljava/lang/String;

    return-void
.end method

.method public final setLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkType:I

    return-void
.end method

.method public final setNote(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->note:Ljava/lang/String;

    return-void
.end method

.method public final setObjId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->objId:Ljava/lang/String;

    return-void
.end method

.method public final setQuadPoints([F)V
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->quadPoints:[F

    return-void
.end method

.method public final setStartPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->startPosition:Ljava/lang/String;

    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->style:I

    return-void
.end method

.method public final setVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->isVertical:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdfHighlight{highlightId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->highlightId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', objId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->objId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', author=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', startPosition=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->startPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', endPosition=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->endPosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', note=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->note:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->isVertical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", linkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", linkDest=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->linkDest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extraAttr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->extraAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', customAttr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;->customAttr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
