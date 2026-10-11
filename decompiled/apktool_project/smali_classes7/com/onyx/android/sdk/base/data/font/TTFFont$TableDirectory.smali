.class final Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/font/TTFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TableDirectory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;",
        "",
        "()V",
        "checkSum",
        "",
        "getCheckSum",
        "()I",
        "setCheckSum",
        "(I)V",
        "length",
        "getLength",
        "setLength",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "offset",
        "getOffset",
        "setOffset",
        "sdk-base_release"
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
.field private checkSum:I

.field private length:I

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCheckSum()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->checkSum:I

    return p0
.end method

.method public final getLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->length:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->offset:I

    return p0
.end method

.method public final setCheckSum(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->checkSum:I

    return-void
.end method

.method public final setLength(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->length:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;->offset:I

    return-void
.end method
