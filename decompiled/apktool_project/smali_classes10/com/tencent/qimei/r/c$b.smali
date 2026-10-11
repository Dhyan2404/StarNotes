.class public interface abstract annotation Lcom/tencent/qimei/r/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/r/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "b"
.end annotation


# static fields
.field public static final c:Lcom/tencent/qimei/k/d;

.field public static final d:Lcom/tencent/qimei/k/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/qimei/k/d;

    const-string v1, "q16"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/r/c$b;->c:Lcom/tencent/qimei/k/d;

    new-instance v0, Lcom/tencent/qimei/k/d;

    const-string v1, "q36"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/r/c$b;->d:Lcom/tencent/qimei/k/d;

    return-void
.end method
