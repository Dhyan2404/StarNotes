.class public final Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0006\u001a\u0004\u0008\u0015\u0010\u0008\"\u0004\u0008\u0016\u0010\nR\"\u0010\u001b\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u000e\u001a\u0004\u0008\u0019\u0010\u0010\"\u0004\u0008\u001a\u0010\u0012R\"\u0010\u001f\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u000e\u001a\u0004\u0008\u001d\u0010\u0010\"\u0004\u0008\u001e\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;",
        "build",
        "",
        "a",
        "I",
        "getDrmType",
        "()I",
        "setDrmType",
        "(I)V",
        "drmType",
        "",
        "b",
        "Ljava/lang/String;",
        "getBookKey",
        "()Ljava/lang/String;",
        "setBookKey",
        "(Ljava/lang/String;)V",
        "bookKey",
        "c",
        "getBookKeyLen",
        "setBookKeyLen",
        "bookKeyLen",
        "d",
        "getUuid",
        "setUuid",
        "uuid",
        "e",
        "getRand",
        "setRand",
        "rand",
        "<init>",
        "()V",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->a:I

    iget-object v2, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->b:Ljava/lang/String;

    iget v3, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->c:I

    iget-object v4, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->e:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/neopdf/PdfDrmOptions;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public final getBookKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getBookKeyLen()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->c:I

    return p0
.end method

.method public final getDrmType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->a:I

    return p0
.end method

.method public final getRand()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setBookKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->b:Ljava/lang/String;

    return-void
.end method

.method public final setBookKeyLen(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->c:I

    return-void
.end method

.method public final setDrmType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->a:I

    return-void
.end method

.method public final setRand(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->e:Ljava/lang/String;

    return-void
.end method

.method public final setUuid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/JebDrmBuilder;->d:Ljava/lang/String;

    return-void
.end method
