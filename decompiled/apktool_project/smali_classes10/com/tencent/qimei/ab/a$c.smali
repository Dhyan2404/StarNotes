.class public interface abstract annotation Lcom/tencent/qimei/ab/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/ab/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "c"
.end annotation


# static fields
.field public static final d:Lcom/tencent/qimei/k/d;

.field public static final e:Lcom/tencent/qimei/k/d;

.field public static final f:Lcom/tencent/qimei/k/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/qimei/k/d;

    const-string v1, "version"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/ab/a$c;->d:Lcom/tencent/qimei/k/d;

    new-instance v0, Lcom/tencent/qimei/k/d;

    const-string v1, "url"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/ab/a$c;->e:Lcom/tencent/qimei/k/d;

    new-instance v0, Lcom/tencent/qimei/k/d;

    const-string v1, "peakTime"

    const-string v2, "23:50-00:10-60"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qimei/ab/a$c;->f:Lcom/tencent/qimei/k/d;

    return-void
.end method
