.class Lcom/onyx/harfbuzz/sfnt/tables/SfntTables;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getGlyphName(Lcom/onyx/harfbuzz/graphics/HBTypeface;I)Ljava/lang/String;
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static native getNameCharset(II)Ljava/lang/String;
.end method

.method public static native getNameCount(Lcom/onyx/harfbuzz/graphics/HBTypeface;)I
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static native getNameLocale(II)[Ljava/lang/String;
.end method

.method public static native getNameRecord(Lcom/onyx/harfbuzz/graphics/HBTypeface;I)Lcom/onyx/harfbuzz/sfnt/tables/NameTable$Record;
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static native getTablePointer(Lcom/onyx/harfbuzz/graphics/HBTypeface;I)J
    .param p0    # Lcom/onyx/harfbuzz/graphics/HBTypeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
