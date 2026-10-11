.class public Lcom/onyx/tex/Size;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/tex/Size;->a:I

    .line 4
    iput p2, p0, Lcom/onyx/tex/Size;->b:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/tex/Size;->b:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/tex/Size;->a:I

    return p0
.end method

.method public setHeight(I)Lcom/onyx/tex/Size;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/Size;->b:I

    return-object p0
.end method

.method public setWidth(I)Lcom/onyx/tex/Size;
    .locals 0

    iput p1, p0, Lcom/onyx/tex/Size;->a:I

    return-object p0
.end method
