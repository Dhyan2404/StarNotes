.class public final Lsun/font/FontResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BLOCKSIZE:I = 0x80

.field private static final DEFAULT_SIZE:I = 0xc

.field private static INSTANCE:Lsun/font/FontResolver; = null

.field private static final MASK:I = 0x7f

.field private static final SHIFT:I = 0x9


# instance fields
.field private allFonts:[Ljava/awt/Font;

.field private blocks:[[I

.field private defaultFont:Ljava/awt/Font;

.field private supplementaryFonts:[Ljava/awt/Font;

.field private supplementaryIndices:[I


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/Font;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "Dialog"

    invoke-direct {v0, v3, v1, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lsun/font/FontResolver;->defaultFont:Ljava/awt/Font;

    const/16 v0, 0x200

    new-array v0, v0, [[I

    iput-object v0, p0, Lsun/font/FontResolver;->blocks:[[I

    return-void
.end method

.method private getAllFonts()[Ljava/awt/Font;
    .locals 1

    iget-object v0, p0, Lsun/font/FontResolver;->allFonts:[Ljava/awt/Font;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getAllFonts()[Ljava/awt/Font;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FontResolver;->allFonts:[Ljava/awt/Font;

    :cond_0
    iget-object p0, p0, Lsun/font/FontResolver;->allFonts:[Ljava/awt/Font;

    return-object p0
.end method

.method private getAllSCFonts()[Ljava/awt/Font;
    .locals 6

    iget-object v0, p0, Lsun/font/FontResolver;->supplementaryFonts:[Ljava/awt/Font;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-direct {p0}, Lsun/font/FontResolver;->getAllFonts()[Ljava/awt/Font;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lsun/font/FontResolver;->allFonts:[Ljava/awt/Font;

    aget-object v4, v4, v3

    invoke-static {v4}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v5

    invoke-virtual {v5}, Lsun/font/Font2D;->hasSupplementaryChars()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [I

    iput-object v4, p0, Lsun/font/FontResolver;->supplementaryIndices:[I

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lsun/font/FontResolver;->supplementaryIndices:[I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-array v1, v3, [Ljava/awt/Font;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/Font;

    iput-object v0, p0, Lsun/font/FontResolver;->supplementaryFonts:[Ljava/awt/Font;

    :cond_3
    iget-object p0, p0, Lsun/font/FontResolver;->supplementaryFonts:[Ljava/awt/Font;

    return-object p0
.end method

.method private getIndexFor(C)I
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/font/FontResolver;->defaultFont:Ljava/awt/Font;

    invoke-virtual {v0, p1}, Ljava/awt/Font;->canDisplay(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Lsun/font/FontResolver;->getAllFonts()[Ljava/awt/Font;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lsun/font/FontResolver;->allFonts:[Ljava/awt/Font;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/awt/Font;->canDisplay(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getIndexFor(I)I
    .locals 3

    .line 4
    iget-object v0, p0, Lsun/font/FontResolver;->defaultFont:Ljava/awt/Font;

    invoke-virtual {v0, p1}, Ljava/awt/Font;->canDisplay(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-direct {p0}, Lsun/font/FontResolver;->getAllSCFonts()[Ljava/awt/Font;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 6
    iget-object v2, p0, Lsun/font/FontResolver;->supplementaryFonts:[Ljava/awt/Font;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/awt/Font;->canDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object p0, p0, Lsun/font/FontResolver;->supplementaryIndices:[I

    aget p0, p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getInstance()Lsun/font/FontResolver;
    .locals 1

    sget-object v0, Lsun/font/FontResolver;->INSTANCE:Lsun/font/FontResolver;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/FontResolver;

    invoke-direct {v0}, Lsun/font/FontResolver;-><init>()V

    sput-object v0, Lsun/font/FontResolver;->INSTANCE:Lsun/font/FontResolver;

    :cond_0
    sget-object v0, Lsun/font/FontResolver;->INSTANCE:Lsun/font/FontResolver;

    return-object v0
.end method


# virtual methods
.method public getFont(ILjava/util/Map;)Ljava/awt/Font;
    .locals 2

    iget-object v0, p0, Lsun/font/FontResolver;->defaultFont:Ljava/awt/Font;

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    iget-object p0, p0, Lsun/font/FontResolver;->allFonts:[Ljava/awt/Font;

    sub-int/2addr p1, v1

    aget-object v0, p0, p1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/awt/Font;->deriveFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public getFontIndex(C)I
    .locals 3

    shr-int/lit8 v0, p1, 0x9

    .line 1
    iget-object v1, p0, Lsun/font/FontResolver;->blocks:[[I

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    const/16 v2, 0x80

    new-array v2, v2, [I

    .line 2
    aput-object v2, v1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    .line 3
    aget v1, v2, v0

    if-nez v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lsun/font/FontResolver;->getIndexFor(C)I

    move-result p0

    aput p0, v2, v0

    .line 5
    :cond_1
    aget p0, v2, v0

    return p0
.end method

.method public getFontIndex(I)I
    .locals 1

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    int-to-char p1, p1

    .line 6
    invoke-virtual {p0, p1}, Lsun/font/FontResolver;->getFontIndex(C)I

    move-result p0

    return p0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lsun/font/FontResolver;->getIndexFor(I)I

    move-result p0

    return p0
.end method

.method public nextFontRunIndex(Lsun/text/CodePointIterator;)I
    .locals 3

    invoke-virtual {p1}, Lsun/text/CodePointIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lsun/font/FontResolver;->getFontIndex(I)I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Lsun/text/CodePointIterator;->next()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lsun/font/FontResolver;->getFontIndex(I)I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-virtual {p1}, Lsun/text/CodePointIterator;->prev()I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method
