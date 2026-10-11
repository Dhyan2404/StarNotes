.class public final Ljava/awt/font/GlyphJustificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRIORITY_INTERCHAR:I = 0x2

.field public static final PRIORITY_KASHIDA:I = 0x0

.field public static final PRIORITY_NONE:I = 0x3

.field public static final PRIORITY_WHITESPACE:I = 0x1


# instance fields
.field public final growAbsorb:Z

.field public final growLeftLimit:F

.field public final growPriority:I

.field public final growRightLimit:F

.field public final shrinkAbsorb:Z

.field public final shrinkLeftLimit:F

.field public final shrinkPriority:I

.field public final shrinkRightLimit:F

.field public final weight:F


# direct methods
.method public constructor <init>(FZIFFZIFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_6

    invoke-static {p3}, Ljava/awt/font/GlyphJustificationInfo;->priorityIsValid(I)Z

    move-result v1

    if-eqz v1, :cond_5

    cmpg-float v1, p4, v0

    if-ltz v1, :cond_4

    cmpg-float v1, p5, v0

    if-ltz v1, :cond_3

    invoke-static {p7}, Ljava/awt/font/GlyphJustificationInfo;->priorityIsValid(I)Z

    move-result v1

    if-eqz v1, :cond_2

    cmpg-float v1, p8, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p9, v0

    if-ltz v0, :cond_0

    iput p1, p0, Ljava/awt/font/GlyphJustificationInfo;->weight:F

    iput-boolean p2, p0, Ljava/awt/font/GlyphJustificationInfo;->growAbsorb:Z

    iput p3, p0, Ljava/awt/font/GlyphJustificationInfo;->growPriority:I

    iput p4, p0, Ljava/awt/font/GlyphJustificationInfo;->growLeftLimit:F

    iput p5, p0, Ljava/awt/font/GlyphJustificationInfo;->growRightLimit:F

    iput-boolean p6, p0, Ljava/awt/font/GlyphJustificationInfo;->shrinkAbsorb:Z

    iput p7, p0, Ljava/awt/font/GlyphJustificationInfo;->shrinkPriority:I

    iput p8, p0, Ljava/awt/font/GlyphJustificationInfo;->shrinkLeftLimit:F

    iput p9, p0, Ljava/awt/font/GlyphJustificationInfo;->shrinkRightLimit:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "shrinkRightLimit is negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "shrinkLeftLimit is negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid shrink priority"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "growRightLimit is negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "growLeftLimit is negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid grow priority"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "weight is negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static priorityIsValid(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
