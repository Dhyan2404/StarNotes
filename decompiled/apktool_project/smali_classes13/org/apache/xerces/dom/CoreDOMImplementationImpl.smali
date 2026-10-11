.class public Lorg/apache/xerces/dom/CoreDOMImplementationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;
.implements Lorg/w3c/dom/ls/DOMImplementationLS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;,
        Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;
    }
.end annotation


# static fields
.field public static final q:I = 0x2

.field public static final r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;


# instance fields
.field public a:[Ljava/lang/ref/SoftReference;

.field public b:[Ljava/lang/ref/SoftReference;

.field public c:[Ljava/lang/ref/SoftReference;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[Ljava/lang/ref/SoftReference;

.field public k:[Ljava/lang/ref/SoftReference;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-direct {v0}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/ref/SoftReference;

    iput-object v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a:[Ljava/lang/ref/SoftReference;

    new-array v1, v0, [Ljava/lang/ref/SoftReference;

    iput-object v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b:[Ljava/lang/ref/SoftReference;

    new-array v1, v0, [Ljava/lang/ref/SoftReference;

    iput-object v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c:[Ljava/lang/ref/SoftReference;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    iput v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    iput v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->g:I

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->h:I

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->i:I

    new-array v2, v0, [Ljava/lang/ref/SoftReference;

    iput-object v2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->j:[Ljava/lang/ref/SoftReference;

    new-array v2, v0, [Ljava/lang/ref/SoftReference;

    iput-object v2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->k:[Ljava/lang/ref/SoftReference;

    iput v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    iput v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->n:I

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->p:I

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 8

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-eqz v0, :cond_7

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_7

    if-ne p0, v0, :cond_7

    const/4 p0, 0x5

    const-string v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v0, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v5

    :goto_0
    if-lt v6, v0, :cond_0

    add-int/lit8 v6, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v4, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3, v4, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/2addr v6, v5

    :goto_2
    if-lt v6, v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v3, v4, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v3, v4, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, p0, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_7
    const-string p0, "NAMESPACE_ERR"

    invoke-static {v3, p0, v2}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0xe

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized assignDocTypeNumber()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized assignDocumentNumber()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    :goto_0
    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    if-gez p1, :cond_0

    const-string p1, "org.apache.xerces.impl.dtd.XML11DTDProcessor"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lorg/apache/xerces/dom/ObjectFactory;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->k:[Ljava/lang/ref/SoftReference;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;

    if-eqz p1, :cond_1

    iget-object v2, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;->a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v2, :cond_1

    iput-object v0, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;->a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->k:[Ljava/lang/ref/SoftReference;

    iget v2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    aput-object v0, p1, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    if-gez p1, :cond_3

    new-instance p1, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    invoke-direct {p1}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_3
    iget-object v2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->j:[Ljava/lang/ref/SoftReference;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;

    if-eqz p1, :cond_4

    iget-object v2, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;->a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v2, :cond_4

    iput-object v0, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;->a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_4
    :try_start_4
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->j:[Ljava/lang/ref/SoftReference;

    iget v2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    aput-object v0, p1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/RevalidationHandler;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    :goto_0
    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    if-gez p1, :cond_0

    const-string p1, "org.apache.xerces.impl.xs.XMLSchemaValidator"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/apache/xerces/dom/ObjectFactory;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a:[Ljava/lang/ref/SoftReference;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz p2, :cond_1

    iput-object v1, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_1
    :try_start_2
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    aput-object v1, p1, p2

    goto :goto_0

    :cond_2
    const-string v0, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v0, :cond_8

    const-string p1, "1.1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    if-gez p1, :cond_3

    const-string p1, "org.apache.xerces.impl.dtd.XML11DTDValidator"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/apache/xerces/dom/ObjectFactory;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_3
    iget-object p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c:[Ljava/lang/ref/SoftReference;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    if-eqz p1, :cond_4

    iget-object p2, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz p2, :cond_4

    iput-object v1, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_4
    :try_start_4
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    aput-object v1, p1, p2

    goto :goto_1

    :cond_5
    :goto_2
    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    if-gez p1, :cond_6

    const-string p1, "org.apache.xerces.impl.dtd.XMLDTDValidator"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/apache/xerces/dom/ObjectFactory;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_5
    iget-object p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b:[Ljava/lang/ref/SoftReference;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    if-eqz p1, :cond_7

    iget-object p2, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz p2, :cond_7

    iput-object v1, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_7
    :try_start_6
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    aput-object v1, p1, p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_8
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 0

    .line 1
    new-instance p0, Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-direct {p0, p1}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    return-object p0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WRONG_DOCUMENT_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object p0

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    return-object p0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/xerces/dom/DocumentTypeImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xerces/dom/DocumentTypeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public createLSInput()Lorg/w3c/dom/ls/LSInput;
    .locals 0

    new-instance p0, Lorg/apache/xerces/dom/DOMInputImpl;

    invoke-direct {p0}, Lorg/apache/xerces/dom/DOMInputImpl;-><init>()V

    return-object p0
.end method

.method public createLSOutput()Lorg/w3c/dom/ls/LSOutput;
    .locals 0

    new-instance p0, Lorg/apache/xerces/dom/DOMOutputImpl;

    invoke-direct {p0}, Lorg/apache/xerces/dom/DOMOutputImpl;-><init>()V

    return-object p0
.end method

.method public createLSParser(SLjava/lang/String;)Lorg/w3c/dom/ls/LSParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p0, :cond_2

    const-string p0, "http://www.w3.org/TR/REC-xml"

    if-eqz p2, :cond_0

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lorg/apache/xerces/parsers/DOMParserImpl;

    const-string p1, "org.apache.xerces.parsers.XML11DTDConfiguration"

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/xerces/parsers/DOMParserImpl;

    const-string p1, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;
    .locals 2

    :try_start_0
    const-string p0, "org.apache.xml.serializer.dom3.LSSerializerImpl"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/xerces/dom/ObjectFactory;->f(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/ls/LSSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lorg/apache/xml/serialize/DOMSerializerImpl;

    invoke-direct {p0}, Lorg/apache/xml/serialize/DOMSerializerImpl;-><init>()V

    return-object p0
.end method

.method public final declared-synchronized d(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    iget-object v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->k:[Ljava/lang/ref/SoftReference;

    array-length v2, v1

    if-ne v2, p1, :cond_0

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->o:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->o:I

    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    array-length v2, v1

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->k:[Ljava/lang/ref/SoftReference;

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->k:[Ljava/lang/ref/SoftReference;

    iget v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;

    if-eqz p1, :cond_1

    iput-object p2, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;->a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->k:[Ljava/lang/ref/SoftReference;

    iget v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->m:I

    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;

    invoke-direct {v2, p2}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;-><init>(Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, p1, v0

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    iget-object v1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->j:[Ljava/lang/ref/SoftReference;

    array-length v2, v1

    if-ne v2, p1, :cond_3

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->n:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->n:I

    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    array-length v2, v1

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->j:[Ljava/lang/ref/SoftReference;

    :cond_3
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->j:[Ljava/lang/ref/SoftReference;

    iget v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;

    if-eqz p1, :cond_4

    iput-object p2, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;->a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->j:[Ljava/lang/ref/SoftReference;

    iget v0, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->l:I

    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;

    invoke-direct {v2, p2}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;-><init>(Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/RevalidationHandler;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    iget-object p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a:[Ljava/lang/ref/SoftReference;

    array-length v0, p2

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->g:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->g:I

    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a:[Ljava/lang/ref/SoftReference;

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    aget-object p1, p1, p2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    if-eqz p1, :cond_1

    iput-object p3, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->a:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->d:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    invoke-direct {v1, p3}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;-><init>(Lorg/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v0, p1, p2

    goto/16 :goto_0

    :cond_2
    const-string v0, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v0, :cond_8

    const-string p1, "1.1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    iget-object p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c:[Ljava/lang/ref/SoftReference;

    array-length v0, p2

    if-ne v0, p1, :cond_3

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->i:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->i:I

    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c:[Ljava/lang/ref/SoftReference;

    :cond_3
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    aget-object p1, p1, p2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    if-eqz p1, :cond_4

    iput-object p3, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->c:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->f:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    invoke-direct {v1, p3}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;-><init>(Lorg/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v0, p1, p2

    goto :goto_0

    :cond_5
    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    iget-object p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b:[Ljava/lang/ref/SoftReference;

    array-length v0, p2

    if-ne v0, p1, :cond_6

    iget p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->h:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->h:I

    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b:[Ljava/lang/ref/SoftReference;

    :cond_6
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    aget-object p1, p1, p2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    if-eqz p1, :cond_7

    iput-object p3, p1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;->a:Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_3
    iget-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->b:[Ljava/lang/ref/SoftReference;

    iget p2, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->e:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;

    invoke-direct {v1, p3}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$a;-><init>(Lorg/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v0, p1, p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    sget-object p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->r:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string p2, "+XPath"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    const-string p0, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lorg/apache/xerces/dom/ObjectFactory;->f(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-lt p2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    const-string v2, "+XPath"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "3.0"

    if-eqz v2, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    :try_start_0
    const-string p1, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lorg/apache/xerces/dom/ObjectFactory;->f(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    move p2, p0

    :goto_2
    array-length v1, p1

    if-lt p2, v1, :cond_3

    return v0

    :cond_3
    aget-object v1, p1, p2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    return v0

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :catch_0
    return p0

    :cond_5
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string v2, "Core"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "2.0"

    const-string v5, "1.0"

    if-eqz v2, :cond_7

    if-nez v1, :cond_b

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_7
    const-string v2, "XML"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_b

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_8
    const-string v2, "XMLVersion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v1, :cond_b

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "1.1"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    const-string v2, "LS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v1, :cond_b

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    const-string v2, "ElementTraversal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    if-nez v1, :cond_b

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    move p0, v0

    :cond_c
    return p0
.end method
