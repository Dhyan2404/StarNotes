.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributeMap;,
        Ljava/text/AttributedString$AttributedStringIterator;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa


# instance fields
.field runAttributeValues:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field runAttributes:[Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Vector<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field runCount:I

.field runStarts:[I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 23
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t add attribute to 0-length text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 28
    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    .line 30
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, p1}, Ljava/util/Vector;-><init>(I)V

    .line 31
    iget-object p1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    .line 32
    iget-object p0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v1, p0, v2

    .line 33
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 37
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 38
    throw p0
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 3

    .line 39
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .locals 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 44
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt p2, v0, :cond_d

    if-gt p3, v1, :cond_d

    if-gt p2, p3, :cond_d

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-interface {p1, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 47
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v2

    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, p3, :cond_0

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    if-ne p2, p3, :cond_1

    return-void

    .line 51
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez p4, :cond_2

    .line 52
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 53
    :goto_1
    array-length v3, p4

    if-ge v2, v3, :cond_3

    .line 54
    aget-object v3, p4, v2

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_3
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 56
    :goto_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    return-void

    .line 57
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 58
    :cond_5
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 59
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 60
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 61
    :goto_4
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-ge v2, p3, :cond_5

    .line 62
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    .line 63
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    .line 64
    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 65
    instance-of v5, v4, Ljava/text/Annotation;

    if-eqz v5, :cond_7

    if-lt v2, p2, :cond_6

    if-gt v3, p3, :cond_6

    sub-int/2addr v2, p2

    sub-int v5, v3, p2

    .line 66
    invoke-virtual {p0, v1, v4, v2, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_5

    :cond_6
    if-le v3, p3, :cond_b

    goto :goto_3

    :cond_7
    if-lt v2, p3, :cond_8

    goto :goto_3

    :cond_8
    if-le v3, p2, :cond_b

    if-ge v2, p2, :cond_9

    move v2, p2

    :cond_9
    if-le v3, p3, :cond_a

    move v3, p3

    :cond_a
    if-eq v2, v3, :cond_b

    sub-int/2addr v2, p2

    sub-int v5, v3, p2

    .line 67
    invoke-virtual {p0, v1, v4, v2, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    .line 68
    :cond_b
    :goto_5
    invoke-interface {p1, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_4

    :cond_c
    return-void

    .line 69
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid substring range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Ljava/text/AttributedCharacterIterator;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p1, ""

    .line 3
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    goto :goto_3

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, p1, v2

    invoke-direct {p0, v0, v3}, Ljava/text/AttributedString;->appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v1

    .line 9
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 10
    aget-object v3, p1, v1

    .line 11
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v4

    .line 12
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v5

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_3

    .line 13
    invoke-interface {v3, v6}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 14
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v7

    .line 15
    invoke-static {v0, v7}, Ljava/text/AttributedString;->mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int/2addr v6, v4

    add-int/2addr v6, v2

    .line 16
    invoke-direct {p0, v7, v6}, Ljava/text/AttributedString;->setAttributes(Ljava/util/Map;I)V

    .line 17
    :cond_2
    invoke-interface {v3}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v6

    move-object v0, v7

    goto :goto_2

    :cond_3
    sub-int/2addr v5, v4

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return-void

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterators must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Ljava/text/AttributedString;I)C
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/AttributedString;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Ljava/text/AttributedString;Ljava/util/Set;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/text/AttributedString;->attributeValuesMatch(Ljava/util/Set;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    :cond_0
    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result p3

    invoke-direct {p0, p4}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 4

    :goto_0
    if-ge p3, p4, :cond_2

    iget-object v0, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v0, v0, p3

    const/4 v1, -0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v0, v3, p3

    iget-object v0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, v0, p3

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v1, p3

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v1, v1, p3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    iget-object v1, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v1, p3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v1, v1, p3

    invoke-virtual {v1, v0, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final appendContents(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .locals 2

    invoke-interface {p2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result p0

    invoke-interface {p2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    :goto_0
    if-ge p0, v0, :cond_0

    add-int/lit8 v1, p0, 0x1

    invoke-interface {p2, p0}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-interface {p2}, Ljava/text/CharacterIterator;->current()C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private attributeValuesMatch(Ljava/util/Set;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;II)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-direct {p0, v0, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p3}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private charAt(I)C
    .locals 0

    iget-object p0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method private final createRunAttributeDataVectors()V
    .locals 3

    const/16 v0, 0xa

    new-array v1, v0, [I

    new-array v2, v0, [Ljava/util/Vector;

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    iput-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iput-object v0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    const/4 v0, 0x1

    iput v0, p0, Ljava/text/AttributedString;->runCount:I

    return-void
.end method

.method private final ensureRunBreak(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result p0

    return p0
.end method

.method private final ensureRunBreak(IZ)I
    .locals 6

    .line 2
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget p0, p0, Ljava/text/AttributedString;->runCount:I

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Ljava/text/AttributedString;->runCount:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, v0

    if-ge v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    .line 5
    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    return v0

    .line 6
    :cond_2
    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    array-length v3, v2

    if-ne v1, v3, :cond_3

    shr-int/lit8 v1, v3, 0x2

    add-int/2addr v3, v1

    .line 7
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 8
    iget-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Vector;

    .line 10
    iget-object v4, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    .line 11
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Vector;

    .line 12
    iput-object v1, p0, Ljava/text/AttributedString;->runStarts:[I

    .line 13
    iput-object v2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    .line 14
    iput-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    :cond_3
    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 15
    iget-object p2, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    add-int/lit8 v2, v0, -0x1

    aget-object p2, p2, v2

    .line 16
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v2, v3, v2

    if-eqz p2, :cond_4

    .line 17
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3, p2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 18
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    :cond_5
    move-object p2, v1

    move-object v1, v3

    goto :goto_2

    :cond_6
    move-object p2, v1

    .line 19
    :goto_2
    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-le v2, v0, :cond_7

    .line 20
    iget-object v3, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v4, v2, -0x1

    aget v5, v3, v4

    aput v5, v3, v2

    .line 21
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v5, v3, v4

    aput-object v5, v3, v2

    .line 22
    iget-object v3, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object v4, v3, v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 23
    :cond_7
    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    aput p1, v2, v0

    .line 24
    iget-object p1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v1, p1, v0

    .line 25
    iget-object p0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object p2, p0, v0

    return v0
.end method

.method private declared-synchronized getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v0, v0, p2

    iget-object v1, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aget-object p2, v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAttributeCheckRange(Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;
    .locals 5

    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/text/Annotation;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    if-lez p3, :cond_1

    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, p2

    move v3, p2

    :goto_0
    if-lt v2, p3, :cond_0

    add-int/lit8 v4, v3, -0x1

    invoke-direct {p0, p1, v4}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    aget v2, v2, v3

    goto :goto_0

    :cond_0
    if-ge v2, p3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result p3

    if-ge p4, p3, :cond_4

    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_2

    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, p2, 0x1

    aget v2, v2, v3

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    if-gt v2, p4, :cond_3

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Ljava/text/AttributedString;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/text/AttributedString;->valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v2, p0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_2

    iget-object v2, p0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, p2, 0x1

    aget v2, v2, v3

    goto :goto_1

    :cond_3
    if-le v2, p4, :cond_4

    return-object v1

    :cond_4
    return-object v0
.end method

.method private static mapsDiffer(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private setAttributes(Ljava/util/Map;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/text/AttributedString;->ensureRunBreak(IZ)I

    move-result p2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aput-object v1, p1, p2

    iget-object p0, p0, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    aput-object v2, p0, p2

    :cond_2
    return-void
.end method

.method private static final valuesMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v1, v0}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t add attribute to 0-length text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p3, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p4, v0, :cond_0

    if-ge p3, p4, :cond_0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/text/AttributedString;->addAttributeImpl(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid substring range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_4

    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p3, v0, :cond_4

    if-gt p2, p3, :cond_4

    if-ne p2, p3, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t add attribute to 0-length text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v0, p0, Ljava/text/AttributedString;->runCount:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Ljava/text/AttributedString;->createRunAttributeDataVectors()V

    :cond_2
    invoke-direct {p0, p2}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result p2

    invoke-direct {p0, p3}, Ljava/text/AttributedString;->ensureRunBreak(I)I

    move-result p3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2, p3}, Ljava/text/AttributedString;->addAttributeRunData(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid substring range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Ljava/text/AttributedString;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/AttributedString;->getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 1

    .line 3
    new-instance v0, Ljava/text/AttributedString$AttributedStringIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedStringIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method
