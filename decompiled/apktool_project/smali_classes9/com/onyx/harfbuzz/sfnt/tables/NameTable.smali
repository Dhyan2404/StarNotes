.class public final Lcom/onyx/harfbuzz/sfnt/tables/NameTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable;->a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Typeface is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static from(Lcom/onyx/harfbuzz/graphics/HBTypeface;)Lcom/onyx/harfbuzz/sfnt/tables/NameTable;
    .locals 1
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable;

    invoke-direct {v0, p0}, Lcom/onyx/harfbuzz/sfnt/tables/NameTable;-><init>(Lcom/onyx/harfbuzz/graphics/HBTypeface;)V

    return-object v0
.end method


# virtual methods
.method public recordAt(I)Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/harfbuzz/sfnt/tables/NameTable;->recordCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable;->a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-static {p0, p1}, Lcom/onyx/harfbuzz/sfnt/tables/SfntTables;->getNameRecord(Lcom/onyx/harfbuzz/graphics/HBTypeface;I)Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public recordCount()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/sfnt/tables/NameTable;->a:Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-static {p0}, Lcom/onyx/harfbuzz/sfnt/tables/SfntTables;->getNameCount(Lcom/onyx/harfbuzz/graphics/HBTypeface;)I

    move-result p0

    return p0
.end method
