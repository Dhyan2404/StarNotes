.class public final Lcom/alibaba/fastjson2/JSONPath$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/alibaba/fastjson2/JSONPath;

.field public final b:Lcom/alibaba/fastjson2/JSONPath$a;

.field public final c:Lcom/alibaba/fastjson2/c;

.field public final d:Lcom/alibaba/fastjson2/c;

.field public final e:J

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$a;Lcom/alibaba/fastjson2/c;Lcom/alibaba/fastjson2/c;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath$a;->a:Lcom/alibaba/fastjson2/JSONPath;

    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPath$a;->c:Lcom/alibaba/fastjson2/c;

    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONPath$a;->d:Lcom/alibaba/fastjson2/c;

    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPath$a;->b:Lcom/alibaba/fastjson2/JSONPath$a;

    iput-wide p5, p0, Lcom/alibaba/fastjson2/JSONPath$a;->e:J

    return-void
.end method
