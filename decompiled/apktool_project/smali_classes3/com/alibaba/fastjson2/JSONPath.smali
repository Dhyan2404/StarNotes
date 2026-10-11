.class public Lcom/alibaba/fastjson2/JSONPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPath$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/alibaba/fastjson2/JSONPath;

.field public static final g:Lcom/alibaba/fastjson2/JSONPath;

.field public static final h:Lcom/alibaba/fastjson2/JSONReader$Context;


# instance fields
.field public a:Lcom/alibaba/fastjson2/JSONReader$Context;

.field public b:Lcom/alibaba/fastjson2/JSONWriter$Context;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final previous:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alibaba/fastjson2/JSONPath;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "$"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPath;->f:Lcom/alibaba/fastjson2/JSONPath;

    new-instance v0, Lcom/alibaba/fastjson2/JSONPath;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "#-1"

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPath;->g:Lcom/alibaba/fastjson2/JSONPath;

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONPath;->h:Lcom/alibaba/fastjson2/JSONReader$Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/c;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPath;->d:Ljava/util/List;

    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONPath;->e:Z

    iput-boolean p4, p0, Lcom/alibaba/fastjson2/JSONPath;->previous:Z

    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    const-string v0, "#-1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/alibaba/fastjson2/JSONPath;->g:Lcom/alibaba/fastjson2/JSONPath;

    return-object p0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/b;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/b;->a()Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPath;->e:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPath;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/alibaba/fastjson2/c;

    add-int/lit8 v11, v2, 0x1

    if-ge v11, v0, :cond_2

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPath;->d:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/c;

    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    new-instance v12, Lcom/alibaba/fastjson2/JSONPath$a;

    const-wide/16 v8, 0x0

    move-object v3, v12

    move-object v4, p0

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/fastjson2/JSONPath$a;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$a;Lcom/alibaba/fastjson2/c;Lcom/alibaba/fastjson2/c;J)V

    if-nez v2, :cond_3

    iput-object p1, v12, Lcom/alibaba/fastjson2/JSONPath$a;->f:Ljava/lang/Object;

    :cond_3
    invoke-virtual {v10, v12}, Lcom/alibaba/fastjson2/c;->a(Lcom/alibaba/fastjson2/JSONPath$a;)V

    move v2, v11

    move-object v5, v12

    goto :goto_0

    :cond_4
    iget-object p0, v5, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONPath;->c:Ljava/lang/String;

    return-object p0
.end method
