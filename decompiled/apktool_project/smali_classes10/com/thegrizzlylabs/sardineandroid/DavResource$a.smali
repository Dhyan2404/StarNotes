.class public Lcom/thegrizzlylabs/sardineandroid/DavResource$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thegrizzlylabs/sardineandroid/DavResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/util/Date;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

.field public final k:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

.field public l:Ljava/lang/Long;

.field public final synthetic m:Lcom/thegrizzlylabs/sardineandroid/DavResource;


# direct methods
.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)V
    .locals 2

    .line 13
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->m:Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->a(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->a:Ljava/util/Date;

    .line 15
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->b(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->b:Ljava/util/Date;

    .line 16
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->d(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->getQuotaUsedBytes(Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->l:Ljava/lang/Long;

    .line 18
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->e(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->h:Ljava/lang/Long;

    .line 19
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->f(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->d:Ljava/lang/String;

    .line 20
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->g(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->e:Ljava/lang/String;

    .line 21
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->h(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->f:Ljava/util/List;

    .line 22
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->i(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->g:Ljava/lang/String;

    .line 23
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->j(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->i:Ljava/util/Map;

    .line 24
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->k(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    move-result-object v0

    iput-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->j:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    .line 25
    invoke-static {p1, p2}, Lcom/thegrizzlylabs/sardineandroid/DavResource;->c(Lcom/thegrizzlylabs/sardineandroid/DavResource;Lcom/thegrizzlylabs/sardineandroid/model/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->k:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    return-void
.end method

.method public constructor <init>(Lcom/thegrizzlylabs/sardineandroid/DavResource;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->m:Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->a:Ljava/util/Date;

    .line 3
    iput-object p3, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->b:Ljava/util/Date;

    .line 4
    iput-object p4, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->c:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->h:Ljava/lang/Long;

    .line 6
    iput-object p6, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->d:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->e:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->f:Ljava/util/List;

    .line 9
    iput-object p9, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->g:Ljava/lang/String;

    .line 10
    iput-object p11, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->i:Ljava/util/Map;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->j:Lcom/thegrizzlylabs/sardineandroid/model/Lockdiscovery;

    .line 12
    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/DavResource$a;->k:Lcom/thegrizzlylabs/sardineandroid/model/Supportedlock;

    return-void
.end method
