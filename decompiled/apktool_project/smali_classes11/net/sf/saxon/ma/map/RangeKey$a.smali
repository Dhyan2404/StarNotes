.class public Lnet/sf/saxon/ma/map/RangeKey$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AtomicIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/map/RangeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public e:I

.field public f:Lnet/sf/saxon/value/StringValue;

.field public final g:Lnet/sf/saxon/value/StringValue;

.field public final h:Lnet/sf/saxon/str/UnicodeString;

.field public final i:Lnet/sf/saxon/str/UnicodeString;

.field public final j:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/str/UnicodeString;Ljava/util/TreeMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Lnet/sf/saxon/str/UnicodeString;",
            "Ljava/util/TreeMap<",
            "Lnet/sf/saxon/expr/sort/AtomicMatchKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    check-cast v1, Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->g:Lnet/sf/saxon/value/StringValue;

    iput-object p1, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->h:Lnet/sf/saxon/str/UnicodeString;

    iput-object p2, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->i:Lnet/sf/saxon/str/UnicodeString;

    iput-object p3, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->j:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey$a;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RangeKey$a;->next()Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/value/StringValue;
    .locals 4

    .line 3
    iget v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->e:I

    const/4 v1, 0x0

    if-gtz v0, :cond_4

    if-gez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->h:Lnet/sf/saxon/str/UnicodeString;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object v2, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->j:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, v2}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->j:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    if-eqz v0, :cond_3

    .line 7
    iget-object v2, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->i:Lnet/sf/saxon/str/UnicodeString;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeString;->compareTo(Lnet/sf/saxon/str/UnicodeString;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance v2, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object v2, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    iput-object v1, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    iget-object v2, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->g:Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/value/StringValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iput-object v1, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    goto :goto_1

    .line 12
    :cond_5
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object v2, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->j:Ljava/util/TreeMap;

    iget-object v3, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/str/UnicodeString;

    invoke-direct {v0, v2}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    iput-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    .line 13
    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->f:Lnet/sf/saxon/value/StringValue;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->e:I

    return-object v1

    .line 15
    :cond_6
    iget v1, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/ma/map/RangeKey$a;->e:I

    return-object v0
.end method
