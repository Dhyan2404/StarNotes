.class public Lcom/onyx/tex/Insets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/tex/Insets;->a:I

    .line 4
    iput p2, p0, Lcom/onyx/tex/Insets;->b:I

    .line 5
    iput p3, p0, Lcom/onyx/tex/Insets;->c:I

    .line 6
    iput p4, p0, Lcom/onyx/tex/Insets;->d:I

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 0

    iget p0, p0, Lcom/onyx/tex/Insets;->d:I

    return p0
.end method

.method public getLeft()I
    .locals 0

    iget p0, p0, Lcom/onyx/tex/Insets;->a:I

    return p0
.end method

.method public getRight()I
    .locals 0

    iget p0, p0, Lcom/onyx/tex/Insets;->b:I

    return p0
.end method

.method public getTop()I
    .locals 0

    iget p0, p0, Lcom/onyx/tex/Insets;->c:I

    return p0
.end method

.method public setBottom(I)Lcom/onyx/tex/Insets;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/Insets;->d:I

    return-object p0
.end method

.method public setLeft(I)Lcom/onyx/tex/Insets;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/Insets;->a:I

    return-object p0
.end method

.method public setRight(I)Lcom/onyx/tex/Insets;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/Insets;->b:I

    return-object p0
.end method

.method public setTop(I)Lcom/onyx/tex/Insets;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/Insets;->c:I

    return-object p0
.end method
