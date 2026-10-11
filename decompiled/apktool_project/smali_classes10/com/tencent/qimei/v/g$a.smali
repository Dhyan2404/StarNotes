.class public Lcom/tencent/qimei/v/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/v/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/tencent/qimei/v/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qimei/v/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qimei/v/g;-><init>(Lcom/tencent/qimei/v/f;)V

    sput-object v0, Lcom/tencent/qimei/v/g$a;->a:Lcom/tencent/qimei/v/g;

    return-void
.end method
