.class public Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_int:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->m_int:[I

    return-void
.end method


# virtual methods
.method public getInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->m_int:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/IntArrayWrapper;->m_int:[I

    array-length p0, p0

    return p0
.end method
