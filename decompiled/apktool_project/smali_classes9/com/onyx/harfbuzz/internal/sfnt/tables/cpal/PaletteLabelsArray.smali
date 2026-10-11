.class public final Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;
.super Ljava/lang/Object;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteLabelsArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readUInt16(I)I

    move-result p0

    return p0
.end method
