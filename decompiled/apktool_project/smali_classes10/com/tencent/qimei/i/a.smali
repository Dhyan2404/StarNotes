.class public interface abstract annotation Lcom/tencent/qimei/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final c:Lcom/tencent/qimei/k/d;

.field public static final d:Lcom/tencent/qimei/k/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/qimei/k/d;

    const-string v1, "code"

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/i/a;->c:Lcom/tencent/qimei/k/d;

    new-instance v0, Lcom/tencent/qimei/k/d;

    const-string v1, "data"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/i/a;->d:Lcom/tencent/qimei/k/d;

    return-void
.end method
