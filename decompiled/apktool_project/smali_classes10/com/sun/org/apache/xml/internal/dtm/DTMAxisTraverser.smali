.class public abstract Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public first(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(II)I

    move-result p0

    return p0
.end method

.method public first(II)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisTraverser;->next(III)I

    move-result p0

    return p0
.end method

.method public abstract next(II)I
.end method

.method public abstract next(III)I
.end method
