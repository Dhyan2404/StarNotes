.class public Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractSupplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractSupplier<",
        "Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;",
        "Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Lonyx/org/apache/commons/io/IOCase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractSupplier;-><init>()V

    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    iput-object v0, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;->b:Lonyx/org/apache/commons/io/IOCase;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;->get()Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;
    .locals 3

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;

    iget-object v1, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;->b:Lonyx/org/apache/commons/io/IOCase;

    iget-object p0, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lonyx/org/apache/commons/io/IOCase;[Ljava/lang/String;Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$a;)V

    return-object v0
.end method

.method public setIoCase(Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;->b:Lonyx/org/apache/commons/io/IOCase;

    return-object p0
.end method

.method public setWildcards(Ljava/util/List;)Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->access$100(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v0, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;->setWildcards([Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;

    return-object p0
.end method

.method public varargs setWildcards([Ljava/lang/String;)Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter;->access$100(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lonyx/org/apache/commons/io/filefilter/WildcardFileFilter$Builder;->a:[Ljava/lang/String;

    return-object p0
.end method
