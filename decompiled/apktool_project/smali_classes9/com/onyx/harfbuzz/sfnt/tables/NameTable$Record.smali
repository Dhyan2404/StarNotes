.class public Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/sfnt/tables/NameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field public bytes:[B

.field public encodingId:I

.field public languageId:I

.field public nameId:I

.field public platformId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->nameId:I

    .line 3
    iput p2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->platformId:I

    .line 4
    iput p3, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->languageId:I

    .line 5
    iput p4, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->encodingId:I

    .line 6
    iput-object p5, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->bytes:[B

    return-void
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->platformId:I

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->encodingId:I

    invoke-static {v1, p0}, Lcom/onyx/harfbuzz/sfnt/tables/SfntTables;->getNameCharset(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->nameId:I

    iget v3, p1, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->nameId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->platformId:I

    iget v3, p1, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->platformId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->languageId:I

    iget v3, p1, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->languageId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->encodingId:I

    iget v3, p1, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->encodingId:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->bytes:[B

    iget-object p1, p1, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->nameId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->platformId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->languageId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->encodingId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->bytes:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->platformId:I

    iget p0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->languageId:I

    invoke-static {v0, p0}, Lcom/onyx/harfbuzz/sfnt/tables/SfntTables;->getNameLocale(II)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x3

    aget-object p0, p0, v3

    new-instance v3, Ljava/util/Locale$Builder;

    invoke-direct {v3}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    invoke-virtual {v3, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    invoke-virtual {v3, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    invoke-virtual {v3, p0}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    invoke-virtual {v3}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public string()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->bytes:[B

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameTable.Record{nameId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->nameId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", platformId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->platformId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", languageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->languageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", encodingId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->encodingId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->bytes:[B

    invoke-static {v2}, Lcom/onyx/harfbuzz/internal/Description;->forByteArray([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", string="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;->string()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
