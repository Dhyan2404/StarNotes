.class public final Lsun/font/GlyphLayout$GVData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/GlyphLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GVData"
.end annotation


# static fields
.field private static final UNINITIALIZED_FLAGS:I = -0x1


# instance fields
.field public _count:I

.field public _flags:I

.field public _glyphs:[I

.field public _indices:[I

.field public _positions:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGlyphVector(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;Lsun/font/AndroidGlyphVector;)Lsun/font/AndroidGlyphVector;
    .locals 10

    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iput v2, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    move v4, v1

    move v5, v4

    move v3, v2

    :goto_0
    iget v6, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    if-ge v3, v6, :cond_3

    if-nez v4, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    iget-object v6, p0, Lsun/font/GlyphLayout$GVData;->_indices:[I

    aget v6, v6, v3

    if-eqz v4, :cond_1

    if-ne v6, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    :cond_4
    if-nez v5, :cond_5

    if-nez v4, :cond_5

    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    :cond_5
    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    :cond_6
    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    new-array v6, v0, [I

    iget-object v1, p0, Lsun/font/GlyphLayout$GVData;->_glyphs:[I

    invoke-static {v1, v2, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    iget-object v4, p0, Lsun/font/GlyphLayout$GVData;->_positions:[F

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v3

    goto :goto_3

    :cond_7
    move-object v7, v1

    :goto_3
    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    iget v0, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    new-array v1, v0, [I

    iget-object v3, p0, Lsun/font/GlyphLayout$GVData;->_indices:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    move-object v8, v1

    if-nez p3, :cond_9

    new-instance p3, Lsun/font/AndroidGlyphVector;

    iget v9, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lsun/font/AndroidGlyphVector;-><init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[I[F[II)V

    goto :goto_4

    :cond_9
    iget v9, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lsun/font/StandardGlyphVector;->initGlyphVector(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[I[F[II)V

    :goto_4
    return-object p3
.end method

.method public grow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/font/GlyphLayout$GVData;->_glyphs:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lsun/font/GlyphLayout$GVData;->grow(I)V

    return-void
.end method

.method public grow(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lsun/font/GlyphLayout$GVData;->_glyphs:[I

    array-length v1, v0

    add-int/2addr v1, p1

    .line 3
    new-array p1, v1, [I

    .line 4
    iget v2, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iput-object p1, p0, Lsun/font/GlyphLayout$GVData;->_glyphs:[I

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x2

    .line 6
    new-array p1, p1, [F

    .line 7
    iget-object v0, p0, Lsun/font/GlyphLayout$GVData;->_positions:[F

    iget v2, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object p1, p0, Lsun/font/GlyphLayout$GVData;->_positions:[F

    .line 9
    new-array p1, v1, [I

    .line 10
    iget-object v0, p0, Lsun/font/GlyphLayout$GVData;->_indices:[I

    iget v1, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput-object p1, p0, Lsun/font/GlyphLayout$GVData;->_indices:[I

    return-void
.end method

.method public init(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/GlyphLayout$GVData;->_count:I

    const/4 v0, -0x1

    iput v0, p0, Lsun/font/GlyphLayout$GVData;->_flags:I

    iget-object v0, p0, Lsun/font/GlyphLayout$GVData;->_glyphs:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_2

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    new-array v0, p1, [I

    iput-object v0, p0, Lsun/font/GlyphLayout$GVData;->_glyphs:[I

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lsun/font/GlyphLayout$GVData;->_positions:[F

    new-array p1, p1, [I

    iput-object p1, p0, Lsun/font/GlyphLayout$GVData;->_indices:[I

    :cond_2
    return-void
.end method
