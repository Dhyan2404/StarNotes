.class public final Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray$Flags;
    }
.end annotation


# static fields
.field public static final USABLE_WITH_DARK_BACKGROUND:I = 0x2

.field public static final USABLE_WITH_LIGHT_BACKGROUND:I = 0x1


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

    iput-object p1, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 0

    iget-object p0, p0, Lcom/onyx/harfbuzz/internal/sfnt/tables/cpal/PaletteTypesArray;->a:Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;

    mul-int/lit8 p1, p1, 0x4

    invoke-interface {p0, p1}, Lcom/onyx/harfbuzz/internal/sfnt/SfntTable;->readInt32(I)I

    move-result p0

    return p0
.end method
