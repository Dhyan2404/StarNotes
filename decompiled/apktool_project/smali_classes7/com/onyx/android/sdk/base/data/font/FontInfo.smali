.class public final Lcom/onyx/android/sdk/base/data/font/FontInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\tJ\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\u001a\u001a\u00020\u00172\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u001b\u001a\u00020\u0004H\u0016J\u0006\u0010\u001c\u001a\u00020\u0017R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        "",
        "()V",
        "filePath",
        "",
        "fontType",
        "Lcom/onyx/android/sdk/base/data/font/FontType;",
        "id",
        "importFont",
        "",
        "name",
        "getFileBaseName",
        "getFilePath",
        "getFontName",
        "getFontType",
        "getFontTypeName",
        "getId",
        "getName",
        "isExist",
        "isImportFont",
        "isSystemFont",
        "setFilePath",
        "setFontType",
        "",
        "setId",
        "setImportFont",
        "setName",
        "toString",
        "useDefaultId",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_ID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private filePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fontType:Lcom/onyx/android/sdk/base/data/font/FontType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private importFont:Z

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->Companion:Lcom/onyx/android/sdk/base/data/font/FontInfo$Companion;

    const-string v0, "serif"

    sput-object v0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->DEFAULT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_ID$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->DEFAULT_ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getFileBaseName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFileBaseName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final getFontType()Lcom/onyx/android/sdk/base/data/font/FontType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    return-object p0
.end method

.method public final getFontTypeName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontType()Lcom/onyx/android/sdk/base/data/font/FontType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontType()Lcom/onyx/android/sdk/base/data/font/FontType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final isExist()Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->id:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->DEFAULT_ID:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isImportFont()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->importFont:Z

    return p0
.end method

.method public final isSystemFont()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    sget-object v1, Lcom/onyx/android/sdk/base/data/font/FontType;->SYSTEM:Lcom/onyx/android/sdk/base/data/font/FontType;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->filePath:Ljava/lang/String;

    const-string v0, "/system"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final setFilePath(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/font/FontInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final setFontType(Lcom/onyx/android/sdk/base/data/font/FontType;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/font/FontType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public final setImportFont(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->importFont:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', filePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', importFont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->importFont:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fontType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->fontType:Lcom/onyx/android/sdk/base/data/font/FontType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final useDefaultId()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/font/FontInfo;->DEFAULT_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->setId(Ljava/lang/String;)V

    return-void
.end method
