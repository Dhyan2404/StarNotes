.class public Lcom/trans/android/font/DefaultFontProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/font/FontProvider;


# instance fields
.field private fontHandler:Lcom/trans/android/font/FontHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/trans/android/font/FontHandler;

    invoke-direct {v0}, Lcom/trans/android/font/FontHandler;-><init>()V

    iput-object v0, p0, Lcom/trans/android/font/DefaultFontProvider;->fontHandler:Lcom/trans/android/font/FontHandler;

    return-void
.end method


# virtual methods
.method public getDefTypefaces()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/trans/android/font/DefaultFontProvider;->fontHandler:Lcom/trans/android/font/FontHandler;

    invoke-virtual {p0}, Lcom/trans/android/font/FontHandler;->getDefTypefaces()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFont()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/font/DefaultFontProvider;->fontHandler:Lcom/trans/android/font/FontHandler;

    invoke-virtual {p0}, Lcom/trans/android/font/FontHandler;->getDefaultFont()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/font/DefaultFontProvider;->fontHandler:Lcom/trans/android/font/FontHandler;

    invoke-virtual {p0}, Lcom/trans/android/font/FontHandler;->getWinFontPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/font/DefaultFontProvider;->fontHandler:Lcom/trans/android/font/FontHandler;

    invoke-virtual {p0, p1}, Lcom/trans/android/font/FontHandler;->getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/font/DefaultFontProvider;->fontHandler:Lcom/trans/android/font/FontHandler;

    invoke-virtual {p0, p1}, Lcom/trans/android/font/FontHandler;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/trans/android/font/DefaultFontProvider;->fontHandler:Lcom/trans/android/font/FontHandler;

    invoke-virtual {p0}, Lcom/trans/android/font/FontHandler;->release()V

    return-void
.end method
