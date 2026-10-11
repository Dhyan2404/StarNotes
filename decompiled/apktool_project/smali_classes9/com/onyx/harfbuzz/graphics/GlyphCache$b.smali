.class public Lcom/onyx/harfbuzz/graphics/GlyphCache$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/GlyphCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/onyx/harfbuzz/graphics/GlyphCache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Lcom/onyx/harfbuzz/graphics/GlyphCache;

    invoke-direct {v1, v0}, Lcom/onyx/harfbuzz/graphics/GlyphCache;-><init>(I)V

    sput-object v1, Lcom/onyx/harfbuzz/graphics/GlyphCache$b;->a:Lcom/onyx/harfbuzz/graphics/GlyphCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/onyx/harfbuzz/graphics/GlyphCache;
    .locals 1

    sget-object v0, Lcom/onyx/harfbuzz/graphics/GlyphCache$b;->a:Lcom/onyx/harfbuzz/graphics/GlyphCache;

    return-object v0
.end method
