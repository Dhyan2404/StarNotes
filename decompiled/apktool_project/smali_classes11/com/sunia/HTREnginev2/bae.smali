.class public final Lcom/sunia/HTREnginev2/bae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lonyx/org/apache/commons/io/function/IOBiConsumer;

.field public static final b:Lonyx/org/apache/commons/io/function/IORunnable;

.field public static final c:Lonyx/org/apache/commons/io/function/IOBiFunction;

.field public static final d:Lonyx/org/apache/commons/io/function/IOFunction;

.field public static final e:Lonyx/org/apache/commons/io/function/IOPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lonyx/org/apache/commons/io/function/IOPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lonyx/org/apache/commons/io/function/IOPredicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lonyx/org/apache/commons/io/function/IOTriConsumer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/u9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/u9e;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/bae;->a:Lonyx/org/apache/commons/io/function/IOBiConsumer;

    new-instance v0, Lcom/sunia/HTREnginev2/v9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/v9e;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/bae;->b:Lonyx/org/apache/commons/io/function/IORunnable;

    new-instance v0, Lcom/sunia/HTREnginev2/w9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/w9e;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/bae;->c:Lonyx/org/apache/commons/io/function/IOBiFunction;

    new-instance v0, Lcom/sunia/HTREnginev2/x9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x9e;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/bae;->d:Lonyx/org/apache/commons/io/function/IOFunction;

    new-instance v0, Lcom/sunia/HTREnginev2/y9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/y9e;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/bae;->e:Lonyx/org/apache/commons/io/function/IOPredicate;

    new-instance v0, Lcom/sunia/HTREnginev2/z9e;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z9e;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/bae;->f:Lonyx/org/apache/commons/io/function/IOPredicate;

    new-instance v0, Lcom/sunia/HTREnginev2/aae;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/aae;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/bae;->g:Lonyx/org/apache/commons/io/function/IOTriConsumer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/bae;->l(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/bae;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/bae;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/bae;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/bae;->i()V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/bae;->m(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/bae;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static synthetic i()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public static synthetic j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic m(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
