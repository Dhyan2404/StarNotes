.class public Lcom/tencent/qimei/v/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/v/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/sdk/S/DataFormatter;

.field public final synthetic b:Lcom/tencent/qimei/sdk/S/DataFormatter;

.field public final synthetic c:Lcom/tencent/qimei/v/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/v/c;Lcom/tencent/qimei/sdk/S/DataFormatter;Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/v/a;->c:Lcom/tencent/qimei/v/c;

    iput-object p2, p0, Lcom/tencent/qimei/v/a;->a:Lcom/tencent/qimei/sdk/S/DataFormatter;

    iput-object p3, p0, Lcom/tencent/qimei/v/a;->b:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qimei/v/a;->a:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v0}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/v/a;->b:Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-virtual {v1}, Lcom/tencent/qimei/sdk/S/DataFormatter;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/qimei/v/a;->c:Lcom/tencent/qimei/v/c;

    iget-object p0, p0, Lcom/tencent/qimei/v/a;->a:Lcom/tencent/qimei/sdk/S/DataFormatter;

    sget-object v1, Lcom/tencent/qimei/v/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/tencent/qimei/v/c;->a(Lcom/tencent/qimei/sdk/S/DataFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qimei/e/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spread_data"

    invoke-static {v0, p0, v1}, Lcom/tencent/qimei/m/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
