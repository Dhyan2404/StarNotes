.class final Ljava/text/AttributedString$AttributeMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AttributeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/text/AttributedCharacterIterator$Attribute;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field beginIndex:I

.field endIndex:I

.field runIndex:I

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method public constructor <init>(Ljava/text/AttributedString;III)V
    .locals 0

    iput-object p1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p2, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iput p3, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iput p4, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v3, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v5, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v5, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runAttributeValues:[Ljava/util/Vector;

    iget v6, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_0

    iget-object v5, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    iget v6, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v7, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget v8, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v5, v4, v6, v7, v8}, Ljava/text/AttributedString;->access$400(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/text/AttributeEntry;

    invoke-direct {v6, v4, v5}, Ljava/text/AttributeEntry;-><init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljava/text/AttributedString$AttributeMap;->this$0:Ljava/text/AttributedString;

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    iget v1, p0, Ljava/text/AttributedString$AttributeMap;->runIndex:I

    iget v2, p0, Ljava/text/AttributedString$AttributeMap;->beginIndex:I

    iget p0, p0, Ljava/text/AttributedString$AttributeMap;->endIndex:I

    invoke-static {v0, p1, v1, v2, p0}, Ljava/text/AttributedString;->access$400(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
