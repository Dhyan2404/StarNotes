.class public Lcom/tencent/qimei/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/v/c;->a()Lcom/tencent/qimei/sdk/S/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lcom/tencent/qimei/sdk/S/DataFormatter;

.field public final synthetic b:Lcom/tencent/qimei/v/c;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/v/c;[Lcom/tencent/qimei/sdk/S/DataFormatter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/v/b;->b:Lcom/tencent/qimei/v/c;

    iput-object p2, p0, Lcom/tencent/qimei/v/b;->a:[Lcom/tencent/qimei/sdk/S/DataFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/tencent/qimei/e/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spread_data"

    invoke-static {v0, v1}, Lcom/tencent/qimei/m/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/v/b;->a:[Lcom/tencent/qimei/sdk/S/DataFormatter;

    iget-object p0, p0, Lcom/tencent/qimei/v/b;->b:Lcom/tencent/qimei/v/c;

    sget-object v2, Lcom/tencent/qimei/v/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qimei/v/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qimei/sdk/S/DataFormatter;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, v1, v0

    return-void
.end method
