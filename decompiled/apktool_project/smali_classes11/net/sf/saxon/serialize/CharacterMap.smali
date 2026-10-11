.class public Lnet/sf/saxon/serialize/CharacterMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/om/StructuredQName;

.field public final b:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/serialize/CharacterMap;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->d:I

    .line 11
    iput-boolean v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->e:Z

    .line 12
    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/serialize/CharacterMap;

    .line 14
    iget-object v1, v0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1}, Lnet/sf/saxon/z/IntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    .line 17
    iget-object v3, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    iget-object v4, v0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CharacterMap;->a()V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/z/IntHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->d:I

    .line 4
    iput-boolean v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->e:Z

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/serialize/CharacterMap;->a:Lnet/sf/saxon/om/StructuredQName;

    .line 6
    iput-object p2, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CharacterMap;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0}, Lnet/sf/saxon/z/IntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    iget v2, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    if-ge v1, v2, :cond_1

    iput v1, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    :cond_1
    iget v2, p0, Lnet/sf/saxon/serialize/CharacterMap;->d:I

    if-le v1, v2, :cond_2

    iput v1, p0, Lnet/sf/saxon/serialize/CharacterMap;->d:I

    :cond_2
    iget-boolean v2, p0, Lnet/sf/saxon/serialize/CharacterMap;->e:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->isWhite(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/serialize/CharacterMap;->e:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    const v1, 0xd800

    if-le v0, v1, :cond_4

    iput v1, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    :cond_4
    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4

    const-string v0, "charMap"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "name"

    iget-object v1, p0, Lnet/sf/saxon/serialize/CharacterMap;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0}, Lnet/sf/saxon/z/IntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    iget-object v2, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {p1, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "c"

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s"

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getMap()Lnet/sf/saxon/z/IntHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    return-object p0
.end method

.method public getName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/CharacterMap;->a:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public map(Lnet/sf/saxon/str/UnicodeString;Z)Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/CharacterMap;->e:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/str/WhitespaceString;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    iget v3, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lnet/sf/saxon/serialize/CharacterMap;->d:I

    if-gt v1, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    return-object p1

    :cond_3
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    iget v3, p0, Lnet/sf/saxon/serialize/CharacterMap;->c:I

    if-lt v1, v3, :cond_6

    iget v3, p0, Lnet/sf/saxon/serialize/CharacterMap;->d:I

    if-gt v1, v3, :cond_6

    iget-object v3, p0, Lnet/sf/saxon/serialize/CharacterMap;->b:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v3, v1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/str/UnicodeBuilder;->append(C)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Ljava/lang/CharSequence;)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(I)Lnet/sf/saxon/str/UnicodeBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method
