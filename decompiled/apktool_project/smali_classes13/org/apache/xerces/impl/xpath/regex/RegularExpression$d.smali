.class public final Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lorg/apache/xerces/impl/xpath/regex/Match;

.field public e:Z

.field public f:[Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;

.field public g:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$f;

.field public h:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;

.field public i:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$b;

.field public j:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->g:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$f;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$f;

    invoke-direct {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->g:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$f;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$f;->d(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->g:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$f;

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->j:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$e;

    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->a:I

    iput p3, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->b:I

    invoke-virtual {p0, p4}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->d(I)V

    return-void
.end method

.method public b(Ljava/text/CharacterIterator;III)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->i:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$b;

    invoke-direct {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$b;-><init>(Ljava/text/CharacterIterator;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->i:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$b;->h(Ljava/text/CharacterIterator;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->i:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$b;

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->j:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$e;

    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->a:I

    iput p3, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->b:I

    invoke-virtual {p0, p4}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->d(I)V

    return-void
.end method

.method public c([CIII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->h:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;

    invoke-direct {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;-><init>([C)V

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->h:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;->h([C)V

    :goto_0
    iget-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->h:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$a;

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->j:Lorg/apache/xerces/impl/xpath/regex/RegularExpression$e;

    iput p2, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->a:I

    iput p3, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->b:I

    invoke-virtual {p0, p4}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->d(I)V

    return-void
.end method

.method public final d(I)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->b:I

    iget v1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->e(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->d:Lorg/apache/xerces/impl/xpath/regex/Match;

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->f:[Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->f:[Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->f:[Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;

    invoke-direct {v2}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;-><init>()V

    aput-object v2, v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$c;->d()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized e(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression$d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
