.class Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/soap/MimeHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatchingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/xmlbeans/impl/soap/MimeHeader;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/xmlbeans/impl/soap/MimeHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final match:Z

.field private final names:[Ljava/lang/String;

.field private nextHeader:Lorg/apache/xmlbeans/impl/soap/MimeHeader;

.field final synthetic this$0:Lorg/apache/xmlbeans/impl/soap/MimeHeaders;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/soap/MimeHeaders;[Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->this$0:Lorg/apache/xmlbeans/impl/soap/MimeHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->match:Z

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->names:[Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/soap/MimeHeaders;->headers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private nextMatch()Lorg/apache/xmlbeans/impl/soap/MimeHeader;
    .locals 6

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->names:[Ljava/lang/String;

    if-nez v2, :cond_2

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->match:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    :cond_2
    array-length v1, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v2, v3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/soap/MimeHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->match:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_4
    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->match:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_5
    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->nextHeader:Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->nextMatch()Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->nextHeader:Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->nextHeader:Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->next()Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/xmlbeans/impl/soap/MimeHeader;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->nextHeader:Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->nextHeader:Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->nextHeader:Lorg/apache/xmlbeans/impl/soap/MimeHeader;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public remove()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/soap/MimeHeaders$MatchingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
