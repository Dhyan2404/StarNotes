.class final Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;
.super Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringTarget"
.end annotation


# instance fields
.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public regionMatches(ZIIII)Z
    .locals 6

    sub-int/2addr p3, p2

    if-ge p3, p5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v1, 0x1

    move-object v0, v3

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p2, p0, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public regionMatches(ZIILjava/lang/String;I)Z
    .locals 7

    sub-int/2addr p3, p2

    const/4 v0, 0x0

    if-ge p3, p5, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v3, p2

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    invoke-virtual {p0, p2, p4, v0, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public resetTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;->target:Ljava/lang/String;

    return-void
.end method
