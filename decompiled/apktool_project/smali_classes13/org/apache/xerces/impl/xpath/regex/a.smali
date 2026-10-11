.class public Lorg/apache/xerces/impl/xpath/regex/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xpath/regex/a$c;,
        Lorg/apache/xerces/impl/xpath/regex/a$f;,
        Lorg/apache/xerces/impl/xpath/regex/a$e;,
        Lorg/apache/xerces/impl/xpath/regex/a$d;,
        Lorg/apache/xerces/impl/xpath/regex/a$b;,
        Lorg/apache/xerces/impl/xpath/regex/a$g;,
        Lorg/apache/xerces/impl/xpath/regex/a$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0xb

.field public static final n:I = 0xf

.field public static final o:I = 0x10

.field public static final p:I = 0x14

.field public static final q:I = 0x15

.field public static final r:I = 0x16

.field public static final s:I = 0x17

.field public static final t:I = 0x18

.field public static final u:I = 0x19

.field public static final v:I = 0x1a

.field public static w:I

.field public static final x:Z


# instance fields
.field public final a:I

.field public b:Lorg/apache/xerces/impl/xpath/regex/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/regex/a;->b:Lorg/apache/xerces/impl/xpath/regex/a;

    iput p1, p0, Lorg/apache/xerces/impl/xpath/regex/a;->a:I

    return-void
.end method

.method public static a(I)Lorg/apache/xerces/impl/xpath/regex/a$a;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xpath/regex/a$a;-><init>(II)V

    return-object v0
.end method

.method public static b(I)Lorg/apache/xerces/impl/xpath/regex/a$a;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$a;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xpath/regex/a$a;-><init>(II)V

    return-object v0
.end method

.method public static c(ILorg/apache/xerces/impl/xpath/regex/a;)Lorg/apache/xerces/impl/xpath/regex/a$a;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$a;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xpath/regex/a$a;-><init>(II)V

    iput-object p1, v0, Lorg/apache/xerces/impl/xpath/regex/a;->b:Lorg/apache/xerces/impl/xpath/regex/a;

    return-object v0
.end method

.method public static d(I)Lorg/apache/xerces/impl/xpath/regex/a$a;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xpath/regex/a$a;-><init>(II)V

    return-object v0
.end method

.method public static e(I)Lorg/apache/xerces/impl/xpath/regex/a$b;
    .locals 3

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$d;

    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/xerces/impl/xpath/regex/a$d;-><init>(III)V

    return-object v0
.end method

.method public static f(Lorg/apache/xerces/impl/xpath/regex/a;ILorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;)Lorg/apache/xerces/impl/xpath/regex/a$c;
    .locals 7

    new-instance v6, Lorg/apache/xerces/impl/xpath/regex/a$c;

    const/16 v1, 0x1a

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/xerces/impl/xpath/regex/a$c;-><init>(IILorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;)V

    iput-object p0, v6, Lorg/apache/xerces/impl/xpath/regex/a;->b:Lorg/apache/xerces/impl/xpath/regex/a;

    return-object v6
.end method

.method public static g()Lorg/apache/xerces/impl/xpath/regex/a;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/a;-><init>(I)V

    return-object v0
.end method

.method public static h(Lorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;)Lorg/apache/xerces/impl/xpath/regex/a$b;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$b;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/a$b;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/a$b;->w(Lorg/apache/xerces/impl/xpath/regex/a;)V

    iput-object p0, v0, Lorg/apache/xerces/impl/xpath/regex/a;->b:Lorg/apache/xerces/impl/xpath/regex/a;

    return-object v0
.end method

.method public static i(ILorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;)Lorg/apache/xerces/impl/xpath/regex/a$b;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$b;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xpath/regex/a$b;-><init>(I)V

    invoke-virtual {v0, p2}, Lorg/apache/xerces/impl/xpath/regex/a$b;->w(Lorg/apache/xerces/impl/xpath/regex/a;)V

    iput-object p1, v0, Lorg/apache/xerces/impl/xpath/regex/a;->b:Lorg/apache/xerces/impl/xpath/regex/a;

    return-object v0
.end method

.method public static j(Lorg/apache/xerces/impl/xpath/regex/a;Lorg/apache/xerces/impl/xpath/regex/a;II)Lorg/apache/xerces/impl/xpath/regex/a$d;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$d;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/xerces/impl/xpath/regex/a$d;-><init>(III)V

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/xpath/regex/a$b;->w(Lorg/apache/xerces/impl/xpath/regex/a;)V

    iput-object p0, v0, Lorg/apache/xerces/impl/xpath/regex/a;->b:Lorg/apache/xerces/impl/xpath/regex/a;

    return-object v0
.end method

.method public static k()Lorg/apache/xerces/impl/xpath/regex/a$b;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xerces/impl/xpath/regex/a$b;-><init>(I)V

    return-object v0
.end method

.method public static l(Z)Lorg/apache/xerces/impl/xpath/regex/a$b;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$b;

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    :goto_0
    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xpath/regex/a$b;-><init>(I)V

    return-object v0
.end method

.method public static m(Lorg/apache/xerces/impl/xpath/regex/Token;)Lorg/apache/xerces/impl/xpath/regex/a$e;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$e;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xpath/regex/a$e;-><init>(ILorg/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Lorg/apache/xerces/impl/xpath/regex/a$f;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$f;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xpath/regex/a$f;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static o(I)Lorg/apache/xerces/impl/xpath/regex/a$g;
    .locals 2

    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/a$g;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/xpath/regex/a$g;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public p(I)Lorg/apache/xerces/impl/xpath/regex/a;
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Internal Error: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q()Lorg/apache/xerces/impl/xpath/regex/a;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()I
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()I
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u()Lorg/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/a;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
