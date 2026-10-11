.class public final Lsun/font/CompositeFont;
.super Lsun/font/Font2D;
.source "SourceFile"


# instance fields
.field componentFileNames:[Ljava/lang/String;

.field componentNames:[Ljava/lang/String;

.field private components:[Lsun/font/PhysicalFont;

.field private deferredInitialisation:[Z

.field exclusionRanges:[I

.field isStdComposite:Z

.field localeSlot:I

.field maxIndices:[I

.field numGlyphs:I

.field numMetricsSlots:I

.field numSlots:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[I[IZLsun/font/SunFontManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lsun/font/Font2D;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/font/CompositeFont;->numGlyphs:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lsun/font/CompositeFont;->localeSlot:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lsun/font/CompositeFont;->isStdComposite:Z

    .line 5
    new-instance v2, Lsun/font/Font2DHandle;

    invoke-direct {v2, p0}, Lsun/font/Font2DHandle;-><init>(Lsun/font/Font2D;)V

    iput-object v2, p0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    .line 6
    iput-object p1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    if-nez p3, :cond_0

    .line 9
    array-length p1, p2

    iput p1, p0, Lsun/font/CompositeFont;->numSlots:I

    goto :goto_0

    .line 10
    :cond_0
    array-length p1, p3

    iput p1, p0, Lsun/font/CompositeFont;->numSlots:I

    .line 11
    :goto_0
    iget p1, p0, Lsun/font/CompositeFont;->numSlots:I

    const/16 v2, 0xfe

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iput p1, p0, Lsun/font/CompositeFont;->numSlots:I

    .line 12
    iput p4, p0, Lsun/font/CompositeFont;->numMetricsSlots:I

    .line 13
    iput-object p5, p0, Lsun/font/CompositeFont;->exclusionRanges:[I

    .line 14
    iput-object p6, p0, Lsun/font/CompositeFont;->maxIndices:[I

    .line 15
    invoke-virtual {p8}, Lsun/font/SunFontManager;->getEUDCFont()Lsun/font/TrueTypeFont;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    iget p1, p0, Lsun/font/CompositeFont;->numMetricsSlots:I

    .line 17
    iget p4, p0, Lsun/font/CompositeFont;->numSlots:I

    sub-int p5, p4, p1

    add-int/2addr p4, v1

    .line 18
    iput p4, p0, Lsun/font/CompositeFont;->numSlots:I

    .line 19
    iget-object p6, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    if-eqz p6, :cond_2

    .line 20
    new-array p4, p4, [Ljava/lang/String;

    iput-object p4, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    .line 21
    invoke-static {p3, v0, p4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object p4, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    invoke-virtual {p8}, Lsun/font/SunFontManager;->getEUDCFont()Lsun/font/TrueTypeFont;

    move-result-object p6

    const/4 v2, 0x0

    invoke-virtual {p6, v2}, Lsun/font/TrueTypeFont;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p6

    aput-object p6, p4, p1

    .line 23
    iget-object p4, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    add-int/lit8 p6, p1, 0x1

    invoke-static {p3, p1, p4, p6, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    :cond_2
    iget-object p3, p0, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 25
    iget p3, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    .line 26
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object p3, p0, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    add-int/lit8 p4, p1, 0x1

    invoke-static {p2, p1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_3
    iget p2, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array p2, p2, [Lsun/font/PhysicalFont;

    iput-object p2, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    .line 29
    invoke-virtual {p8}, Lsun/font/SunFontManager;->getEUDCFont()Lsun/font/TrueTypeFont;

    move-result-object p3

    aput-object p3, p2, p1

    .line 30
    iget p1, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    if-eqz p7, :cond_5

    move p1, v0

    .line 31
    :goto_2
    iget p2, p0, Lsun/font/CompositeFont;->numSlots:I

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_5

    .line 32
    iget-object p2, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    aput-boolean v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 33
    :cond_4
    iget p1, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array p2, p1, [Lsun/font/PhysicalFont;

    iput-object p2, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    .line 34
    new-array p1, p1, [Z

    iput-object p1, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    if-eqz p7, :cond_5

    move p1, v0

    .line 35
    :goto_3
    iget p2, p0, Lsun/font/CompositeFont;->numSlots:I

    if-ge p1, p2, :cond_5

    .line 36
    iget-object p2, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    aput-boolean v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x2

    .line 37
    iput p1, p0, Lsun/font/Font2D;->fontRank:I

    .line 38
    iget-object p2, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-lez p2, :cond_9

    .line 39
    iget-object p3, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    add-int/2addr p2, v1

    .line 40
    iget-object p3, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_a

    .line 41
    iget-object p3, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "plain"

    .line 42
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 43
    iput v0, p0, Lsun/font/Font2D;->style:I

    goto :goto_4

    :cond_6
    const-string p3, "bold"

    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 45
    iput v1, p0, Lsun/font/Font2D;->style:I

    goto :goto_4

    :cond_7
    const-string p3, "italic"

    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 47
    iput p1, p0, Lsun/font/Font2D;->style:I

    goto :goto_4

    :cond_8
    const-string p1, "bolditalic"

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x3

    .line 49
    iput p1, p0, Lsun/font/Font2D;->style:I

    goto :goto_4

    .line 50
    :cond_9
    iget-object p1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    iput-object p1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    :cond_a
    :goto_4
    return-void
.end method

.method public constructor <init>(Lsun/font/PhysicalFont;Lsun/font/CompositeFont;)V
    .locals 6

    .line 64
    invoke-direct {p0}, Lsun/font/Font2D;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lsun/font/CompositeFont;->numGlyphs:I

    const/4 v1, -0x1

    .line 66
    iput v1, p0, Lsun/font/CompositeFont;->localeSlot:I

    .line 67
    iput-boolean v0, p0, Lsun/font/CompositeFont;->isStdComposite:Z

    .line 68
    new-instance v1, Lsun/font/Font2DHandle;

    invoke-direct {v1, p0}, Lsun/font/Font2DHandle;-><init>(Lsun/font/Font2D;)V

    iput-object v1, p0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    .line 69
    iget-object v1, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    iput-object v1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    .line 70
    iget-object v1, p1, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    iput-object v1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    .line 71
    iget v1, p1, Lsun/font/Font2D;->style:I

    iput v1, p0, Lsun/font/Font2D;->style:I

    const/4 v1, 0x1

    .line 72
    iput v1, p0, Lsun/font/CompositeFont;->numMetricsSlots:I

    .line 73
    iget v2, p2, Lsun/font/CompositeFont;->numSlots:I

    add-int/2addr v2, v1

    iput v2, p0, Lsun/font/CompositeFont;->numSlots:I

    .line 74
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v2

    monitor-enter v2

    .line 75
    :try_start_0
    iget v3, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array v3, v3, [Lsun/font/PhysicalFont;

    iput-object v3, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    .line 76
    aput-object p1, v3, v0

    .line 77
    iget-object v4, p2, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    iget v5, p2, Lsun/font/CompositeFont;->numSlots:I

    invoke-static {v4, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v3, p2, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 79
    iget v3, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    .line 80
    iget-object p1, p1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    aput-object p1, v3, v0

    .line 81
    iget-object p1, p2, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    iget v4, p2, Lsun/font/CompositeFont;->numSlots:I

    invoke-static {p1, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :cond_0
    iget-object p1, p2, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 83
    iget p1, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 84
    aput-object v3, p1, v0

    .line 85
    iget-object v3, p2, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    iget v4, p2, Lsun/font/CompositeFont;->numSlots:I

    invoke-static {v3, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_1
    iget p1, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    .line 87
    aput-boolean v0, p1, v0

    .line 88
    iget-object p0, p2, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    iget p2, p2, Lsun/font/CompositeFont;->numSlots:I

    invoke-static {p0, v0, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>([Lsun/font/PhysicalFont;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lsun/font/Font2D;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lsun/font/CompositeFont;->numGlyphs:I

    const/4 v1, -0x1

    .line 53
    iput v1, p0, Lsun/font/CompositeFont;->localeSlot:I

    .line 54
    iput-boolean v0, p0, Lsun/font/CompositeFont;->isStdComposite:Z

    .line 55
    new-instance v1, Lsun/font/Font2DHandle;

    invoke-direct {v1, p0}, Lsun/font/Font2DHandle;-><init>(Lsun/font/Font2D;)V

    iput-object v1, p0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    .line 56
    aget-object v1, p1, v0

    iget-object v2, v1, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    iput-object v2, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    .line 57
    iget-object v2, v1, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    iput-object v2, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    .line 58
    iget v1, v1, Lsun/font/Font2D;->style:I

    iput v1, p0, Lsun/font/Font2D;->style:I

    const/4 v1, 0x1

    .line 59
    iput v1, p0, Lsun/font/CompositeFont;->numMetricsSlots:I

    .line 60
    array-length v1, p1

    iput v1, p0, Lsun/font/CompositeFont;->numSlots:I

    .line 61
    new-array v2, v1, [Lsun/font/PhysicalFont;

    iput-object v2, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    .line 62
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget p1, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    return-void
.end method

.method private doDeferredInitialisation(I)V
    .locals 5

    iget-object v0, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lsun/font/CompositeFont;->numSlots:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    aget-object v2, v1, p1

    if-nez v2, :cond_5

    iget-object v2, p0, Lsun/font/CompositeFont;->componentFileNames:[Ljava/lang/String;

    if-eqz v2, :cond_2

    aget-object v2, v2, p1

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lsun/font/SunFontManager;->initialiseDeferredFont(Ljava/lang/String;)Lsun/font/PhysicalFont;

    move-result-object v2

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    aget-object v2, v1, p1

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lsun/font/SunFontManager;->getDefaultPhysicalFont()Lsun/font/PhysicalFont;

    move-result-object v2

    aput-object v2, v1, p1

    :cond_3
    iget-object v1, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    aget-object v3, v2, p1

    if-nez v3, :cond_4

    aput-object v1, v2, p1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    :try_start_1
    iget-object v1, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    iget-object v2, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget v3, p0, Lsun/font/Font2D;->style:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object v2

    check-cast v2, Lsun/font/PhysicalFont;

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    invoke-virtual {v0}, Lsun/font/SunFontManager;->getDefaultPhysicalFont()Lsun/font/PhysicalFont;

    move-result-object v2

    aput-object v2, v1, p1

    :cond_5
    :goto_0
    iget-object p0, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    const/4 v1, 0x0

    aput-boolean v1, p0, p1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public canDisplay(C)Z
    .locals 0

    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/CharToGlyphMapper;->canDisplay(C)Z

    move-result p0

    return p0
.end method

.method public createStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;
    .locals 1

    new-instance v0, Lsun/font/CompositeStrike;

    invoke-direct {v0, p0, p1}, Lsun/font/CompositeStrike;-><init>(Lsun/font/CompositeFont;Lsun/font/FontStrikeDesc;)V

    return-object v0
.end method

.method public getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public getHBTypeface(I)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x18

    .line 3
    invoke-virtual {p0, p1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public getHBTypefaceForGlyph(I)Lcom/onyx/harfbuzz/graphics/HBTypeface;
    .locals 0

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {p0, p1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getHBTypeface()Lcom/onyx/harfbuzz/graphics/HBTypeface;

    move-result-object p0

    return-object p0
.end method

.method public getMapper()Lsun/font/CharToGlyphMapper;
    .locals 1

    iget-object v0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/CompositeGlyphMapper;

    invoke-direct {v0, p0}, Lsun/font/CompositeGlyphMapper;-><init>(Lsun/font/CompositeFont;)V

    iput-object v0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    :cond_0
    iget-object p0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    return-object p0
.end method

.method public getMissingGlyphCode()I
    .locals 0

    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result p0

    return p0
.end method

.method public getNumGlyphs()I
    .locals 1

    iget v0, p0, Lsun/font/CompositeFont;->numGlyphs:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/CharToGlyphMapper;->getNumGlyphs()I

    move-result v0

    iput v0, p0, Lsun/font/CompositeFont;->numGlyphs:I

    :cond_0
    iget p0, p0, Lsun/font/CompositeFont;->numGlyphs:I

    return p0
.end method

.method public getNumSlots()I
    .locals 0

    iget p0, p0, Lsun/font/CompositeFont;->numSlots:I

    return p0
.end method

.method public getSlotFont(I)Lsun/font/PhysicalFont;
    .locals 4

    iget-object v0, p0, Lsun/font/CompositeFont;->deferredInitialisation:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lsun/font/CompositeFont;->doDeferredInitialisation(I)V

    :cond_0
    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget v2, p0, Lsun/font/Font2D;->style:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lsun/font/SunFontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object v1

    check-cast v1, Lsun/font/PhysicalFont;

    iget-object p0, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    aput-object v1, p0, p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {v0}, Lsun/font/SunFontManager;->getDefaultPhysicalFont()Lsun/font/PhysicalFont;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-object v1

    :catch_1
    invoke-virtual {v0}, Lsun/font/SunFontManager;->getDefaultPhysicalFont()Lsun/font/PhysicalFont;

    move-result-object p0

    return-object p0
.end method

.method public getStyleMetrics(F[FI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lsun/font/Font2D;->getStyleMetrics(F[FI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lsun/font/Font2D;->getStyleMetrics(F[FI)V

    :goto_0
    return-void
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getTypeface(I)Landroid/graphics/Typeface;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x18

    .line 3
    invoke-virtual {p0, p1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getTypefaceForGlyph(I)Landroid/graphics/Typeface;
    .locals 0

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {p0, p1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getValidatedGlyphCode(I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    iget v1, p0, Lsun/font/CompositeFont;->numSlots:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result p0

    return p0

    :cond_0
    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-virtual {p0, v0}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsun/font/Font2D;->getValidatedGlyphCode(I)I

    move-result v1

    invoke-virtual {v0}, Lsun/font/Font2D;->getMissingGlyphCode()I

    move-result v0

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public hasSupplementaryChars()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lsun/font/CompositeFont;->numSlots:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v2

    invoke-virtual {v2}, Lsun/font/Font2D;->hasSupplementaryChars()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isExcludedChar(II)Z
    .locals 5

    iget-object v0, p0, Lsun/font/CompositeFont;->exclusionRanges:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/font/CompositeFont;->maxIndices:[I

    if-eqz v0, :cond_3

    iget v2, p0, Lsun/font/CompositeFont;->numMetricsSlots:I

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget v2, v0, p1

    const/4 v3, 0x1

    if-lez p1, :cond_1

    sub-int/2addr p1, v3

    aget p1, v0, p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-le v2, p1, :cond_3

    iget-object v0, p0, Lsun/font/CompositeFont;->exclusionRanges:[I

    aget v4, v0, p1

    if-lt p2, v4, :cond_2

    add-int/lit8 v4, p1, 0x1

    aget v0, v0, v4

    if-gt p2, v0, :cond_2

    return v3

    :cond_2
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public isStdComposite()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/CompositeFont;->isStdComposite:Z

    return p0
.end method

.method public replaceComponentFont(Lsun/font/PhysicalFont;Lsun/font/PhysicalFont;)V
    .locals 3

    iget-object v0, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lsun/font/CompositeFont;->numSlots:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lsun/font/CompositeFont;->components:[Lsun/font/PhysicalFont;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    aput-object p2, v1, v0

    iget-object v1, p0, Lsun/font/CompositeFont;->componentNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lsun/font/CompositeFont;->numSlots:I

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Slot["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Composite Font: Family="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " style="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsun/font/Font2D;->style:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useAAForPtSize(I)Z
    .locals 6

    iget v0, p0, Lsun/font/CompositeFont;->localeSlot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lsun/font/CompositeFont;->numMetricsSlots:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lsun/font/CompositeFont;->isStdComposite()Z

    move-result v2

    if-nez v2, :cond_0

    iget v0, p0, Lsun/font/CompositeFont;->numSlots:I

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lsun/font/Font2D;->supportsEncoding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v3, p0, Lsun/font/CompositeFont;->localeSlot:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lsun/font/CompositeFont;->localeSlot:I

    if-ne v0, v1, :cond_3

    iput v2, p0, Lsun/font/CompositeFont;->localeSlot:I

    :cond_3
    iget v0, p0, Lsun/font/CompositeFont;->localeSlot:I

    invoke-virtual {p0, v0}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/Font2D;->useAAForPtSize(I)Z

    move-result p0

    return p0
.end method
