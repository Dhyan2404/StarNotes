.class public interface abstract annotation Lcom/tencent/qimei/ab/a$a;
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
    name = "a"
.end annotation


# static fields
.field public static final A:Lcom/tencent/qimei/k/b;

.field public static final B:Lcom/tencent/qimei/k/b;

.field public static final C:Lcom/tencent/qimei/k/b;

.field public static final D:Lcom/tencent/qimei/k/b;

.field public static final E:Lcom/tencent/qimei/k/b;

.field public static final F:Lcom/tencent/qimei/k/b;

.field public static final G:Lcom/tencent/qimei/k/b;

.field public static final H:Lcom/tencent/qimei/k/b;

.field public static final I:Lcom/tencent/qimei/k/b;

.field public static final J:Lcom/tencent/qimei/k/b;

.field public static final s:Lcom/tencent/qimei/k/b;

.field public static final t:Lcom/tencent/qimei/k/b;

.field public static final u:Lcom/tencent/qimei/k/b;

.field public static final v:Lcom/tencent/qimei/k/b;

.field public static final w:Lcom/tencent/qimei/k/b;

.field public static final x:Lcom/tencent/qimei/k/b;

.field public static final y:Lcom/tencent/qimei/k/b;

.field public static final z:Lcom/tencent/qimei/k/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->s:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    invoke-static {v3}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->t:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->u:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "userId"

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->v:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->w:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->x:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->y:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->z:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->A:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "processInfo"

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->B:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "audit"

    invoke-direct {v0, v2, v1}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->C:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/tencent/qimei/b/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->D:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "report"

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->E:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "isBidEnable"

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->F:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "oz"

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->G:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "oo"

    invoke-direct {v0, v2, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->H:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v2, "spreadOpenMode"

    invoke-direct {v0, v2, v1}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->I:Lcom/tencent/qimei/k/b;

    new-instance v0, Lcom/tencent/qimei/k/b;

    const-string v1, "isStrictMode"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qimei/k/b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/tencent/qimei/ab/a$a;->J:Lcom/tencent/qimei/k/b;

    return-void
.end method
