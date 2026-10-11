.class public final Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_HIDDEN_AXIS:I = 0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0xc

.field public static final f:I = 0x10

.field public static final g:I = 0x12


# instance fields
.field public final a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    return-void
.end method


# virtual methods
.method public axisNameId()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0x12

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public axisTag()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt32(I)I

    move-result p0

    return p0
.end method

.method public defaultValue()F
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readFixed(I)F

    move-result p0

    return p0
.end method

.method public flags()I
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method

.method public maxValue()F
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/16 v0, 0xc

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readFixed(I)F

    move-result p0

    return p0
.end method

.method public minValue()F
    .locals 1

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/fvar/VariationAxisRecord;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readFixed(I)F

    move-result p0

    return p0
.end method
