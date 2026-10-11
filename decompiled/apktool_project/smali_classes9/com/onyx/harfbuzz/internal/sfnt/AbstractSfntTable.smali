.class public abstract Lcom/onyx/harfbuzz/internal/sfnt/AbstractSfntTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFixed(I)F
    .locals 0

    invoke-interface {p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt32(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x47800000    # 65536.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public readOffset32(I)I
    .locals 0

    invoke-interface {p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt32(I)J

    move-result-wide p0

    long-to-int p0, p0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public subTable(I)Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
    .locals 1

    new-instance v0, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;

    invoke-direct {v0, p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SubTable;-><init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;I)V

    return-object v0
.end method
