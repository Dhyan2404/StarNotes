.class public final Lcom/sun/org/apache/xml/internal/utils/BoolStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private m_allocatedSize:I

.field private m_index:I

.field private m_values:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_allocatedSize:I

    .line 4
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    return-void
.end method

.method private grow()V
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_allocatedSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_allocatedSize:I

    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    iget v2, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final peek()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    aget-boolean p0, v0, p0

    return p0
.end method

.method public final peekOrFalse()Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final peekOrTrue()Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final pop()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    aget-boolean p0, v0, v1

    return p0
.end method

.method public final popAndTop()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final push(Z)Z
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_allocatedSize:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->grow()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    aput-boolean p1, v0, v1

    return p1
.end method

.method public final setTop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_values:[Z

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    aput-boolean p1, v0, p0

    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/BoolStack;->m_index:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
