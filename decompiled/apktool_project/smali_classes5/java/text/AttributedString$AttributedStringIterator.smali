.class final Ljava/text/AttributedString$AttributedStringIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AttributedStringIterator"
.end annotation


# instance fields
.field private beginIndex:I

.field private currentIndex:I

.field private currentRunIndex:I

.field private currentRunLimit:I

.field private currentRunStart:I

.field private endIndex:I

.field private relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method public constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .locals 0

    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_1

    if-gt p3, p4, :cond_1

    invoke-virtual {p1}, Ljava/text/AttributedString;->length()I

    move-result p1

    if-gt p4, p1, :cond_1

    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput p4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, [Ljava/text/AttributedCharacterIterator$Attribute;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid substring range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getString()Ljava/text/AttributedString;
    .locals 0

    iget-object p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    return-object p0
.end method

.method private internalSetIndex(I)C
    .locals 2

    iput p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    :cond_1
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_2

    const p0, 0xffff

    return p0

    :cond_2
    iget-object p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-static {p0, p1}, Ljava/text/AttributedString;->access$000(Ljava/text/AttributedString;I)C

    move-result p0

    return p0
.end method

.method private updateRunInfo()V
    .locals 7

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    goto :goto_3

    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v1, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_1

    iget-object v4, v1, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    iget v6, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-gt v4, v6, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    if-ltz v2, :cond_2

    iget-object v4, v1, Ljava/text/AttributedString;->runStarts:[I

    aget v4, v4, v2

    iput v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v4, v5, :cond_3

    iput v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    goto :goto_1

    :cond_2
    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v2, :cond_5

    iput v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    goto :goto_2

    :cond_4
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    :cond_5
    :goto_2
    monitor-exit v0

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/AttributedString$AttributedStringIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public current()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    iget-object p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-static {p0, v0}, Ljava/text/AttributedString;->access$000(Ljava/text/AttributedString;I)C

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/text/AttributedString$AttributedStringIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/text/AttributedString$AttributedStringIterator;

    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {p1}, Ljava/text/AttributedString$AttributedStringIterator;->getString()Ljava/text/AttributedString;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v3, p1, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v3, p1, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v1, v3, :cond_4

    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget p1, p1, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public first()C
    .locals 1

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result p0

    return p0
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v4, v3, Ljava/text/AttributedString;->runCount:I

    if-ge v2, v4, :cond_3

    iget-object v5, v3, Ljava/text/AttributedString;->runStarts:[I

    aget v6, v5, v2

    iget v7, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v6, v7, :cond_2

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget v4, v5, v4

    iget v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v4, v5, :cond_2

    :cond_1
    iget-object v3, v3, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-static {v1, p1, v0, v2, p0}, Ljava/text/AttributedString;->access$400(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/AttributedString$AttributeMap;

    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/text/AttributedString$AttributeMap;-><init>(Ljava/text/AttributedString;III)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-object p0
.end method

.method public getBeginIndex()I
    .locals 0

    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    return p0
.end method

.method public getRunLimit()I
    .locals 0

    .line 1
    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return p0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 4

    .line 2
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v0, v1, :cond_4

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 5
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 6
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v2, v2, 0x1

    .line 7
    invoke-static {v3, p1, v2}, Ljava/text/AttributedString;->access$100(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/text/AttributedString;->access$200(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v1, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v2, 0x1

    aget v1, v1, v3

    goto :goto_0

    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    goto :goto_0

    .line 9
    :cond_2
    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, p0, :cond_3

    move v1, p0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .line 10
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-static {v2, p1, v3, v1}, Ljava/text/AttributedString;->access$300(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v0, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v0, v0, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    goto :goto_0

    .line 14
    :cond_2
    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v0, p0, :cond_3

    move v0, p0

    :cond_3
    :goto_1
    return v0
.end method

.method public getRunStart()I
    .locals 0

    .line 1
    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return p0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 5

    .line 2
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 5
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 6
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v1, v3, :cond_1

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v2, -0x1

    .line 7
    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->access$100(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/text/AttributedString;->access$200(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 8
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v1, v2

    goto :goto_0

    .line 9
    :cond_1
    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, p0, :cond_2

    move v1, p0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public getRunStart(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .line 10
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v0, v1, :cond_2

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v1, -0x1

    .line 12
    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->access$300(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 13
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runStarts:[I

    aget v0, v0, v1

    goto :goto_0

    .line 14
    :cond_1
    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v0, p0, :cond_2

    move v0, p0

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    xor-int/2addr v0, v1

    iget p0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public last()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result p0

    return p0
.end method

.method public next()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result p0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public previous()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result p0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public setIndex(I)C
    .locals 1

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
