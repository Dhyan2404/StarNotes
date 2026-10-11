.class public final Lorg/apache/xerces/impl/xs/models/XSDFACM$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/models/XSDFACM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->g()I

    move-result v0

    iput v0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->a:I

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->f()I

    move-result p1

    iput p1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->b:I

    iput p2, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->c:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "minOccurs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ";maxOccurs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/apache/xerces/impl/xs/models/XSDFACM$a;->b:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "unbounded"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
