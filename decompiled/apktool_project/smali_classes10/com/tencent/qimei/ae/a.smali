.class public Lcom/tencent/qimei/ae/a;
.super Lcom/tencent/qimei/ae/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/ae/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/tencent/qimei/ae/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ae/a;->d:Lcom/tencent/qimei/ae/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qimei/ae/c$a;-><init>(Lcom/tencent/qimei/ae/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "https://tun-cos-1258344701.file.myqcloud.com/fp.js"

    const-string v1, "tun-cos-1258344701.js"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/tencent/qimei/ae/a;->d:Lcom/tencent/qimei/ae/c;

    iget-object p0, p0, Lcom/tencent/qimei/ae/c;->d:Ljava/lang/String;

    const-string v0, "tun-cos-1258344701.html"

    invoke-static {p0, p1, v0}, Lcom/tencent/qimei/m/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
