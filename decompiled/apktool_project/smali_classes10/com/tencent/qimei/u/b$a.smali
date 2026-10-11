.class public final Lcom/tencent/qimei/u/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/tencent/qimei/u/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qimei/u/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qimei/u/b;-><init>(Lcom/tencent/qimei/u/a;)V

    sput-object v0, Lcom/tencent/qimei/u/b$a;->a:Lcom/tencent/qimei/u/b;

    return-void
.end method
