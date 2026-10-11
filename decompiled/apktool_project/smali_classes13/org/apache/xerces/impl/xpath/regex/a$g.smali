.class public Lorg/apache/xerces/impl/xpath/regex/a$g;
.super Lorg/apache/xerces/impl/xpath/regex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final y:Ljava/util/Vector;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/a;-><init>(I)V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/regex/a$g;->y:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public p(I)Lorg/apache/xerces/impl/xpath/regex/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$g;->y:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/xpath/regex/a;

    return-object p0
.end method

.method public v()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$g;->y:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public w(Lorg/apache/xerces/impl/xpath/regex/a;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/a$g;->y:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
