.class public Lcom/tencent/qimei/k/b;
.super Lcom/tencent/qimei/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qimei/k/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qimei/k/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/k/b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tencent/qimei/k/b;->b:Z

    return-void
.end method
