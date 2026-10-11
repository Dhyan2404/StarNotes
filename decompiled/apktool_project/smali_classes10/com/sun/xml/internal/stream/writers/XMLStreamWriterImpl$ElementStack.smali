.class public Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementStack"
.end annotation


# instance fields
.field protected fDepth:S

.field protected fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

.field final synthetic this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;)V
    .locals 3

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    invoke-direct {v2, p1}, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    return-void
.end method

.method public empty()Z
    .locals 0

    iget-short p0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public peek()Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short p0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public pop()Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 2

    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object p0, v0, v1

    return-object p0
.end method

.method public push(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;)Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 4

    .line 1
    iget-short v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 2
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v2, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 5
    iget-short v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    :goto_0
    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6
    new-instance v2, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-object v3, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;

    invoke-direct {v2, v3}, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    .line 8
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object p0, p1, v0

    return-object p0
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;
    .locals 8

    .line 9
    iget-short v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 10
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v2, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    .line 13
    iget-short v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    :goto_0
    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 14
    new-instance v2, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-object v3, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;

    invoke-direct {v2, v3}, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;-><init>(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short v1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object v2, v0, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    iget-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fElements:[Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;

    iget-short p2, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    add-int/lit8 p3, p2, 0x1

    int-to-short p3, p3

    iput-short p3, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementStack;->fDepth:S

    aget-object p0, p1, p2

    return-object p0
.end method
