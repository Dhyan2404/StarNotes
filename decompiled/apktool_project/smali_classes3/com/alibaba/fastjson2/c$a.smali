.class public final Lcom/alibaba/fastjson2/c$a;
.super Lcom/alibaba/fastjson2/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/alibaba/fastjson2/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/c$a;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/c$a;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/c$a;->a:Lcom/alibaba/fastjson2/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/fastjson2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/JSONPath$a;)V
    .locals 0

    iget-object p0, p1, Lcom/alibaba/fastjson2/JSONPath$a;->b:Lcom/alibaba/fastjson2/JSONPath$a;

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/alibaba/fastjson2/JSONPath$a;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    :goto_0
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONPath$a;->g:Ljava/lang/Object;

    return-void
.end method
