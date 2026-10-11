.class public final Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;",
        "Ljava/io/Serializable;",
        "()V",
        "favorited",
        "",
        "getFavorited",
        "()Z",
        "setFavorited",
        "(Z)V",
        "fillColor",
        "",
        "getFillColor",
        "()I",
        "setFillColor",
        "(I)V",
        "fillColorEnable",
        "getFillColorEnable",
        "setFillColorEnable",
        "lineStyleType",
        "getLineStyleType",
        "setLineStyleType",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "updateFillColorIfNotValid",
        "",
        "colorGet",
        "Lkotlin/Function0;",
        "sdk-note_overseasRelease"
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
.field private favorited:Z

.field private fillColor:I

.field private fillColorEnable:Z

.field private lineStyleType:I

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "line"

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFavorited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->favorited:Z

    return p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->fillColor:I

    return p0
.end method

.method public final getFillColorEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->fillColorEnable:Z

    return p0
.end method

.method public final getLineStyleType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->lineStyleType:I

    return p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final setFavorited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->favorited:Z

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->fillColor:I

    return-void
.end method

.method public final setFillColorEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->fillColorEnable:Z

    return-void
.end method

.method public final setLineStyleType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->lineStyleType:I

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->type:Ljava/lang/String;

    return-void
.end method

.method public final updateFillColorIfNotValid(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "colorGet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->fillColor:I

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ColorKt;->isTransparent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->fillColor:I

    :cond_0
    return-void
.end method
