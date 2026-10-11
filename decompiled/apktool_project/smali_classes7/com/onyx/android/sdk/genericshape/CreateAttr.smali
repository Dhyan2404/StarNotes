.class public final Lcom/onyx/android/sdk/genericshape/CreateAttr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/CreateAttr;",
        "",
        "()V",
        "selectionPointIndex",
        "",
        "getSelectionPointIndex",
        "()I",
        "setSelectionPointIndex",
        "(I)V",
        "selectionPointType",
        "Lcom/onyx/android/sdk/genericshape/SelectionPointType;",
        "getSelectionPointType",
        "()Lcom/onyx/android/sdk/genericshape/SelectionPointType;",
        "setSelectionPointType",
        "(Lcom/onyx/android/sdk/genericshape/SelectionPointType;)V",
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


# instance fields
.field private selectionPointIndex:I

.field private selectionPointType:Lcom/onyx/android/sdk/genericshape/SelectionPointType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/genericshape/SelectionPointType;->SCALE:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/CreateAttr;->selectionPointType:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    return-void
.end method


# virtual methods
.method public final getSelectionPointIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/CreateAttr;->selectionPointIndex:I

    return p0
.end method

.method public final getSelectionPointType()Lcom/onyx/android/sdk/genericshape/SelectionPointType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/CreateAttr;->selectionPointType:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    return-object p0
.end method

.method public final setSelectionPointIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/CreateAttr;->selectionPointIndex:I

    return-void
.end method

.method public final setSelectionPointType(Lcom/onyx/android/sdk/genericshape/SelectionPointType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/genericshape/SelectionPointType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/CreateAttr;->selectionPointType:Lcom/onyx/android/sdk/genericshape/SelectionPointType;

    return-void
.end method
