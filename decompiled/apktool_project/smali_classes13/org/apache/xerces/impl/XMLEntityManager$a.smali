.class public final Lorg/apache/xerces/impl/XMLEntityManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:I = 0x3


# instance fields
.field public a:I

.field public b:I

.field public c:[[B

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/impl/XMLEntityManager$a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->a:I

    iput p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->b:I

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->c:[[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->d:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->d:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->c:[[B

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->d:I

    aget-object p0, v1, v0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->b:I

    new-array p0, p0, [B

    :goto_0
    return-object p0
.end method

.method public b([B)V
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->d:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->c:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->d:I

    aput-object p1, v1, v0

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->b:I

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->a:I

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->c:[[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$a;->d:I

    return-void
.end method
