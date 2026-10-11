.class public Lcom/sun/org/apache/xpath/internal/VariableStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLEARLIMITATION:I = 0x400

.field private static m_nulls:[Lcom/sun/org/apache/xpath/internal/objects/XObject;


# instance fields
.field private _currentFrameBottom:I

.field _frameTop:I

.field _links:[I

.field _linksTop:I

.field _stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [Lcom/sun/org/apache/xpath/internal/objects/XObject;

    sput-object v0, Lcom/sun/org/apache/xpath/internal/VariableStack;->m_nulls:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const/16 v0, 0x1000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/VariableStack;->reset()V

    return-void
.end method


# virtual methods
.method public clearLocalSlots(II)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, v0

    sget-object v0, Lcom/sun/org/apache/xpath/internal/VariableStack;->m_nulls:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/VariableStack;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v1}, [Lcom/sun/org/apache/xpath/internal/objects/XObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iput-object v1, v0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elementAt(I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getGlobalVariable(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    aget-object v0, v0, p2

    .line 2
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getGlobalVariable(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    aget-object v0, v0, p2

    .line 5
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getFresh()Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLocalVariable(II)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/2addr p1, p2

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getLocalVariable(Lcom/sun/org/apache/xpath/internal/XPathContext;I)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_0
    return-object v0

    .line 5
    :cond_1
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public getLocalVariable(Lcom/sun/org/apache/xpath/internal/XPathContext;IZ)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 7
    iget v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v0

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_0

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getFresh()Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    :goto_0
    return-object v0

    .line 12
    :cond_2
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public getStackFrame()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    return p0
.end method

.method public getVariableOrParam(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/QName;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_VAR_NOT_RESOLVABLE"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isLocalSet(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public link(I)I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_frameTop:I

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_frameTop:I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    array-length v0, v1

    add-int/lit16 v0, v0, 0x1000

    add-int/2addr v0, p1

    new-array p1, v0, [Lcom/sun/org/apache/xpath/internal/objects/XObject;

    array-length v0, v1

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    array-length v1, v0

    if-lt p1, v1, :cond_1

    array-length p1, v0

    add-int/lit16 p1, p1, 0x800

    new-array p1, p1, [I

    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    iget v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    aput p0, p1, v0

    return p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_frameTop:I

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    aput v0, v1, v0

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    array-length v0, v0

    new-array v0, v0, [Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    return-void
.end method

.method public setGlobalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    aput-object p2, p0, p1

    return-void
.end method

.method public setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, p0

    aput-object p2, v0, p1

    return-void
.end method

.method public setLocalVariable(ILcom/sun/org/apache/xpath/internal/objects/XObject;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_stackFrames:[Lcom/sun/org/apache/xpath/internal/objects/XObject;

    add-int/2addr p1, p3

    aput-object p2, p0, p1

    return-void
.end method

.method public setStackFrame(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_frameTop:I

    return p0
.end method

.method public unlink()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    aget v2, v0, v1

    iput v2, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_frameTop:I

    add-int/lit8 v1, v1, -0x1

    .line 2
    aget v0, v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    return-void
.end method

.method public unlink(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_links:[I

    iget v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_linksTop:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_frameTop:I

    .line 4
    iput p1, p0, Lcom/sun/org/apache/xpath/internal/VariableStack;->_currentFrameBottom:I

    return-void
.end method
