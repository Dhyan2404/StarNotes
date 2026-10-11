.class public Lcom/tencent/qimei/k/c;
.super Lcom/tencent/qimei/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qimei/k/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qimei/k/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/k/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/qimei/k/c;->b:I

    return-void
.end method
