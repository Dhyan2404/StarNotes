.class public final Lorg/apache/xerces/impl/XMLEntityManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final h:I = 0x3


# instance fields
.field public a:[Lorg/apache/xerces/impl/XMLEntityManager$b;

.field public b:[Lorg/apache/xerces/impl/XMLEntityManager$b;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xerces/impl/XMLEntityManager$c;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->c:I

    iput p3, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->d:I

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->e:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLEntityManager$c;->b()V

    return-void
.end method


# virtual methods
.method public a(Z)Lorg/apache/xerces/impl/XMLEntityManager$b;
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->g:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->b:[Lorg/apache/xerces/impl/XMLEntityManager$b;

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->g:I

    aget-object p0, v0, p1

    return-object p0

    :cond_0
    new-instance p1, Lorg/apache/xerces/impl/XMLEntityManager$b;

    iget p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->c:I

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager$b;-><init>(ZI)V

    return-object p1

    :cond_1
    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->f:I

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->a:[Lorg/apache/xerces/impl/XMLEntityManager$b;

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->f:I

    aget-object p0, v0, p1

    return-object p0

    :cond_2
    new-instance p1, Lorg/apache/xerces/impl/XMLEntityManager$b;

    const/4 v0, 0x0

    iget p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->d:I

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager$b;-><init>(ZI)V

    return-object p1
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->e:I

    new-array v1, v0, [Lorg/apache/xerces/impl/XMLEntityManager$b;

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->a:[Lorg/apache/xerces/impl/XMLEntityManager$b;

    new-array v0, v0, [Lorg/apache/xerces/impl/XMLEntityManager$b;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->b:[Lorg/apache/xerces/impl/XMLEntityManager$b;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->f:I

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->g:I

    return-void
.end method

.method public c(Lorg/apache/xerces/impl/XMLEntityManager$b;)V
    .locals 3

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLEntityManager$b;->b(Lorg/apache/xerces/impl/XMLEntityManager$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->g:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->b:[Lorg/apache/xerces/impl/XMLEntityManager$b;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->g:I

    aput-object p1, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->f:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->a:[Lorg/apache/xerces/impl/XMLEntityManager$b;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->f:I

    aput-object p1, v1, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->c:I

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->e:I

    new-array p1, p1, [Lorg/apache/xerces/impl/XMLEntityManager$b;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->b:[Lorg/apache/xerces/impl/XMLEntityManager$b;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$c;->g:I

    return-void
.end method
