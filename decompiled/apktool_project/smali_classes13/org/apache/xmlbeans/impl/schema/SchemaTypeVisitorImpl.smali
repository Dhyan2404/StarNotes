.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CHECK_VALIDITY:Z = false

.field static final PROBE_VALIDITY:Z = true


# instance fields
.field private _isValid:Z

.field private _matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

.field private _rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

.field private _rollbackIndex:I

.field _rollbackSize:I

.field private _stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

.field _stackSize:I

.field private _top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->init(Lorg/apache/xmlbeans/SchemaParticle;)V

    return-void
.end method


# virtual methods
.method public addParticle(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    array-length v1, v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->init(Lorg/apache/xmlbeans/SchemaParticle;)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    return-void
.end method

.method public commit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    return-void
.end method

.method public currentParticle()Lorg/apache/xmlbeans/SchemaParticle;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

    return-object p0
.end method

.method public expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    array-length p0, p1

    mul-int/lit8 p0, p0, 0x2

    :goto_0
    new-array v0, p0, [Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v1, p0, :cond_3

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$1;)V

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public get_default_text()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->getDefaultText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public get_elementflags()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaLocalElement;

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isNillable()Z

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    or-int/2addr v0, v3

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaField;->isFixed()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    or-int p0, v0, v1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public get_schema_field()Lorg/apache/xmlbeans/SchemaField;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/SchemaField;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->currentParticle()Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaField;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    :cond_2
    return-void
.end method

.method public isAllValid()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_isValid:Z

    return p0
.end method

.method public notValid()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_isValid:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->rollback()V

    return v0
.end method

.method public ok(Lorg/apache/xmlbeans/SchemaParticle;Z)Z
    .locals 0

    if-nez p2, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_matchedParticle:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->commit()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->rollback()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public pop()Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->prepare()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    return v1
.end method

.method public prepare()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->saveCopy(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)V

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    return v1
.end method

.method public push(Lorg/apache/xmlbeans/SchemaParticle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->addParticle(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    return-void
.end method

.method public rollback()V
    .locals 6

    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    aget-object v5, v4, v0

    aput-object v5, v1, v2

    aput-object v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackIndex:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    return-void
.end method

.method public saveCopy(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    array-length v1, v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->expand([Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollback:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->copy(Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_rollbackSize:I

    return-void
.end method

.method public testValid(Ljavax/xml/namespace/QName;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->visit(Ljavax/xml/namespace/QName;Z)Z

    move-result p0

    return p0
.end method

.method public topRef()Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stack:[Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public visit(Ljavax/xml/namespace/QName;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->visit(Ljavax/xml/namespace/QName;Z)Z

    move-result p0

    return p0
.end method

.method public visit(Ljavax/xml/namespace/QName;Z)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->prepare()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x2

    move v1, v0

    .line 4
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v4, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-le v3, v4, :cond_2

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    if-ne v1, v0, :cond_2

    .line 5
    iget v0, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMax:I

    iput v0, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    .line 6
    :cond_2
    iget v0, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    .line 7
    iget v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_stackSize:I

    .line 8
    :cond_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v4, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMax:I

    if-lt v3, v4, :cond_4

    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->pop()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_5

    .line 10
    :cond_4
    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_10

    const/4 v5, 0x2

    if-eq v2, v5, :cond_d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/4 v3, 0x5

    .line 11
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Ljavax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v2, :cond_15

    .line 13
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p0

    return p0

    .line 14
    :cond_5
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v0, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v0, v4

    iput v0, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    .line 15
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->ok(Lorg/apache/xmlbeans/SchemaParticle;Z)Z

    move-result p0

    return p0

    .line 16
    :cond_6
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Ljavax/xml/namespace/QName;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 17
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v2, :cond_15

    .line 18
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p0

    return p0

    .line 19
    :cond_7
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v0, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v0, v4

    iput v0, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    .line 20
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->ok(Lorg/apache/xmlbeans/SchemaParticle;Z)Z

    move-result p0

    return p0

    .line 21
    :cond_8
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    :goto_1
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v6, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_childCount:I

    if-ge v2, v6, :cond_c

    .line 22
    iget-object v5, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v5, v2}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v5

    .line 23
    invoke-interface {v5, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Ljavax/xml/namespace/QName;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 24
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    .line 25
    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    goto/16 :goto_0

    .line 26
    :cond_9
    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v5

    if-nez v5, :cond_b

    .line 27
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    if-nez v3, :cond_a

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v2, :cond_15

    .line 28
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p0

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_c
    iget v2, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v2, v4

    iput v2, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    .line 30
    iput v3, v5, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    goto/16 :goto_0

    .line 31
    :cond_d
    :goto_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v5, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_childCount:I

    if-ge v3, v5, :cond_f

    .line 32
    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v2

    .line 33
    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 34
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v5, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v5, v4

    iput v5, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    .line 35
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 36
    :cond_f
    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v4, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v3, v4, :cond_15

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v2

    if-nez v2, :cond_15

    .line 37
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p0

    return p0

    .line 38
    :cond_10
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    move v5, v3

    .line 39
    :goto_3
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v7, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_childCount:I

    if-ge v5, v7, :cond_14

    .line 40
    iget-object v7, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_seen:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_11

    goto :goto_4

    .line 41
    :cond_11
    iget-object v6, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curPart:Lorg/apache/xmlbeans/SchemaParticle;

    invoke-interface {v6, v5}, Lorg/apache/xmlbeans/SchemaParticle;->getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;

    move-result-object v6

    .line 42
    invoke-interface {v6, p1}, Lorg/apache/xmlbeans/SchemaParticle;->canStartWithElement(Ljavax/xml/namespace/QName;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 43
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->_top:Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;

    iget v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    .line 44
    iget-object v2, v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_seen:[Z

    aput-boolean v4, v2, v5

    .line 45
    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->push(Lorg/apache/xmlbeans/SchemaParticle;)V

    goto/16 :goto_0

    .line 46
    :cond_12
    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaParticle;->isSkippable()Z

    move-result v6

    if-eqz v6, :cond_13

    add-int/lit8 v2, v2, 0x1

    :cond_13
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_14
    if-ge v2, v7, :cond_17

    .line 47
    iget v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    iget v3, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curMin:I

    if-ge v2, v3, :cond_15

    .line 48
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p0

    return p0

    .line 49
    :cond_15
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->pop()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_5
    if-nez p1, :cond_16

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->ok(Lorg/apache/xmlbeans/SchemaParticle;Z)Z

    move-result p0

    return p0

    .line 51
    :cond_16
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl;->notValid()Z

    move-result p0

    return p0

    .line 52
    :cond_17
    iget v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    add-int/2addr v2, v4

    iput v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_curCount:I

    .line 53
    iput v3, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_processedChildCount:I

    .line 54
    iget-object v2, v6, Lorg/apache/xmlbeans/impl/schema/SchemaTypeVisitorImpl$VisitorState;->_seen:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    goto/16 :goto_0
.end method
