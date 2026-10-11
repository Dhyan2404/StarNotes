.class public final Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x2

.field public static final f:I = 0x4


# instance fields
.field public final a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;II)V
    .locals 1
    .param p1    # Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x4

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iput p2, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->b:I

    sub-int/2addr p3, v0

    const/4 p1, 0x2

    if-ge p3, p1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->c:I

    return-void
.end method

.method public static checkBounds(III)Z
    .locals 0

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public coordinates()[F
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->b:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x4

    invoke-interface {v2, v3}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readFixed(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public flags()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public postScriptNameID()I
    .locals 2

    iget v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    iget p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->b:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x4

    invoke-interface {v0, p0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt32(I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public subfamilyNameID()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/InstanceRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method
