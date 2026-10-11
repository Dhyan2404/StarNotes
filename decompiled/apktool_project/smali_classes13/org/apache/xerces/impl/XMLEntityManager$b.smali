.class public final Lorg/apache/xerces/impl/XMLEntityManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[C

.field public final b:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$b;->b:Z

    new-array p1, p2, [C

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$b;->a:[C

    return-void
.end method

.method public static synthetic a(Lorg/apache/xerces/impl/XMLEntityManager$b;)[C
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$b;->a:[C

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/xerces/impl/XMLEntityManager$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/XMLEntityManager$b;->b:Z

    return p0
.end method
