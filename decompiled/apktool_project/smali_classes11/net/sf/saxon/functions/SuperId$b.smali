.class public Lnet/sf/saxon/functions/SuperId$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/MappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/SuperId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/TreeInfo;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/functions/SuperId$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/functions/SuperId$b;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->containsWhitespace(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/Whitespace$Tokenizer;

    invoke-direct {v0, p1}, Lnet/sf/saxon/value/Whitespace$Tokenizer;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    new-instance p1, Lnet/sf/saxon/functions/SuperId$b;

    invoke-direct {p1}, Lnet/sf/saxon/functions/SuperId$b;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/functions/SuperId$b;->e:Lnet/sf/saxon/om/TreeInfo;

    iput-object v1, p1, Lnet/sf/saxon/functions/SuperId$b;->e:Lnet/sf/saxon/om/TreeInfo;

    iget p0, p0, Lnet/sf/saxon/functions/SuperId$b;->f:I

    iput p0, p1, Lnet/sf/saxon/functions/SuperId$b;->f:I

    new-instance p0, Lnet/sf/saxon/expr/MappingIterator;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/expr/MappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/MappingFunction;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/SuperId$b;->e:Lnet/sf/saxon/om/TreeInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lnet/sf/saxon/functions/SuperId$b;->f:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lnet/sf/saxon/om/TreeInfo;->selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
