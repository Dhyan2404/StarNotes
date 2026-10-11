.class public Lorg/w3c/dom/bootstrap/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementationList;


# instance fields
.field public final synthetic a:Ljava/util/Vector;

.field public final synthetic b:Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/w3c/dom/bootstrap/a;->b:Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;

    iput-object p2, p0, Lorg/w3c/dom/bootstrap/a;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/w3c/dom/bootstrap/a;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/DOMImplementation;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/w3c/dom/bootstrap/a;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/w3c/dom/bootstrap/a;->a:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DOMImplementation;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method
