.class final Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/font/TTFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameRecord"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001e\u001a\u00020\rH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;",
        "",
        "()V",
        "encodingID",
        "",
        "getEncodingID",
        "()I",
        "setEncodingID",
        "(I)V",
        "languageID",
        "getLanguageID",
        "setLanguageID",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "nameID",
        "getNameID",
        "setNameID",
        "platformID",
        "getPlatformID",
        "setPlatformID",
        "stringLength",
        "getStringLength",
        "setStringLength",
        "stringOffset",
        "getStringOffset",
        "setStringOffset",
        "toString",
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
.field private encodingID:I

.field private languageID:I

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nameID:I

.field private platformID:I

.field private stringLength:I

.field private stringOffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEncodingID()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->encodingID:I

    return p0
.end method

.method public final getLanguageID()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->languageID:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNameID()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->nameID:I

    return p0
.end method

.method public final getPlatformID()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->platformID:I

    return p0
.end method

.method public final getStringLength()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->stringLength:I

    return p0
.end method

.method public final getStringOffset()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->stringOffset:I

    return p0
.end method

.method public final setEncodingID(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->encodingID:I

    return-void
.end method

.method public final setLanguageID(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->languageID:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNameID(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->nameID:I

    return-void
.end method

.method public final setPlatformID(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->platformID:I

    return-void
.end method

.method public final setStringLength(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->stringLength:I

    return-void
.end method

.method public final setStringOffset(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->stringOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameRecord{platformID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->platformID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodingID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->encodingID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", languageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->languageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nameID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->nameID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stringLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->stringLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stringOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->stringOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
