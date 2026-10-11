.class public final Lcom/onyx/android/sdk/hwr/service/font/FontKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0001R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0010\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/font/FontKey;",
        "",
        "",
        "hashCode",
        "obj",
        "",
        "equalsTo",
        "",
        "a",
        "Ljava/lang/String;",
        "getFamily",
        "()Ljava/lang/String;",
        "setFamily",
        "(Ljava/lang/String;)V",
        "family",
        "b",
        "I",
        "getStyle",
        "()I",
        "setStyle",
        "(I)V",
        "style",
        "c",
        "getSize",
        "setSize",
        "size",
        "<init>",
        "(Ljava/lang/String;II)V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "family"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->a:Ljava/lang/String;

    iput p2, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->b:I

    iput p3, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->c:I

    return-void
.end method


# virtual methods
.method public final equalsTo(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/hwr/service/font/FontKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/hwr/service/font/FontKey;

    iget v1, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->b:I

    iget v3, p1, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->c:I

    iget v3, p1, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->c:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getFamily()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->c:I

    return p0
.end method

.method public final getStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->b:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->a:Ljava/lang/String;

    iget v1, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final setFamily(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->a:Ljava/lang/String;

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->c:I

    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/service/font/FontKey;->b:I

    return-void
.end method
