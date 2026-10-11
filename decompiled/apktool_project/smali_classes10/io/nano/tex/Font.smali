.class public final Lio/nano/tex/Font;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private size:F

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nano/tex/Font;->typeface:Landroid/graphics/Typeface;

    iput p2, p0, Lio/nano/tex/Font;->size:F

    return-void
.end method

.method public static create(Ljava/lang/String;F)Lio/nano/tex/Font;
    .locals 1

    .line 3
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 4
    new-instance v0, Lio/nano/tex/Font;

    invoke-direct {v0, p0, p1}, Lio/nano/tex/Font;-><init>(Landroid/graphics/Typeface;F)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;IF)Lio/nano/tex/Font;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 2
    new-instance p1, Lio/nano/tex/Font;

    invoke-direct {p1, p0, p2}, Lio/nano/tex/Font;-><init>(Landroid/graphics/Typeface;F)V

    return-object p1
.end method


# virtual methods
.method public deriveFont(I)Lio/nano/tex/Font;
    .locals 1

    iget-object v0, p0, Lio/nano/tex/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/nano/tex/Font;->typeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    new-instance v0, Lio/nano/tex/Font;

    iget p0, p0, Lio/nano/tex/Font;->size:F

    invoke-direct {v0, p1, p0}, Lio/nano/tex/Font;-><init>(Landroid/graphics/Typeface;F)V

    return-object v0
.end method

.method public getSize()F
    .locals 0

    iget p0, p0, Lio/nano/tex/Font;->size:F

    return p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lio/nano/tex/Font;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method
