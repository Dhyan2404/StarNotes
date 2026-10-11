.class public Lorg/apache/xerces/impl/dtd/XMLDTDDescription;
.super Lorg/apache/xerces/util/XMLResourceIdentifierImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLDTDDescription;


# instance fields
.field protected fPossibleRoots:Ljava/util/ArrayList;

.field protected fRootName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v3, p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v0, v2, p1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v2}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v2, p1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_4
    iget-object v2, p1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    if-nez v3, :cond_8

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v2, p1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_9
    iget-object v0, p1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object p0, p0, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz p0, :cond_b

    iget-object p1, p1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v1

    :cond_b
    iget-object p0, p1, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public getGrammarType()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/TR/REC-xml"

    return-object p0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->fPublicId:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setPossibleRoots(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method

.method public setPossibleRoots(Ljava/util/Vector;)V
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method

.method public setRootName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method
