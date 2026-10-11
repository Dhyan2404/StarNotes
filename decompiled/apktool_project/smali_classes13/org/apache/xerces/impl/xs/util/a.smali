.class public Lorg/apache/xerces/impl/xs/util/a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:[Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl$a;

.field public final synthetic g:Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;I[Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/util/a;->g:Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iput p2, p0, Lorg/apache/xerces/impl/xs/util/a;->e:I

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/util/a;->f:[Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl$a;

    return-void
.end method

.method public static synthetic a(Lorg/apache/xerces/impl/xs/util/a;)I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/a;->e:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/xerces/impl/xs/util/a;)[Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl$a;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/util/a;->f:[Lorg/apache/xerces/impl/xs/util/XSNamedMapImpl$a;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xs/util/b;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xs/util/b;-><init>(Lorg/apache/xerces/impl/xs/util/a;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xs/util/a;->e:I

    return p0
.end method
