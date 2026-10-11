.class public interface abstract annotation Lcom/tencent/qimei/ab/a$b;
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
    name = "b"
.end annotation


# static fields
.field public static final h:Lcom/tencent/qimei/k/c;

.field public static final i:Lcom/tencent/qimei/k/c;

.field public static final j:Lcom/tencent/qimei/k/c;

.field public static final k:Lcom/tencent/qimei/k/c;

.field public static final l:Lcom/tencent/qimei/k/c;

.field public static final m:Lcom/tencent/qimei/k/c;

.field public static final n:Lcom/tencent/qimei/k/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/qimei/k/c;

    const-string v1, "reportRate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qimei/ab/a$b;->h:Lcom/tencent/qimei/k/c;

    new-instance v0, Lcom/tencent/qimei/k/c;

    const-string v1, "jsTime"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qimei/ab/a$b;->i:Lcom/tencent/qimei/k/c;

    new-instance v0, Lcom/tencent/qimei/k/c;

    const-string v1, "x5Time"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qimei/ab/a$b;->j:Lcom/tencent/qimei/k/c;

    new-instance v0, Lcom/tencent/qimei/k/c;

    const-string v1, "minHr"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qimei/ab/a$b;->k:Lcom/tencent/qimei/k/c;

    new-instance v0, Lcom/tencent/qimei/k/c;

    const-string v1, "ardt"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/tencent/qimei/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qimei/ab/a$b;->l:Lcom/tencent/qimei/k/c;

    new-instance v0, Lcom/tencent/qimei/k/c;

    const-string v1, "spreadInterval"

    const/16 v3, 0x18

    invoke-direct {v0, v1, v3}, Lcom/tencent/qimei/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qimei/ab/a$b;->m:Lcom/tencent/qimei/k/c;

    new-instance v0, Lcom/tencent/qimei/k/c;

    const-string v1, "spreadDelay"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qimei/k/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qimei/ab/a$b;->n:Lcom/tencent/qimei/k/c;

    return-void
.end method
