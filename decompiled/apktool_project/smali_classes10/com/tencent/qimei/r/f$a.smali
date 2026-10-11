.class public Lcom/tencent/qimei/r/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/r/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/r/f$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/tencent/qimei/r/f$a$a;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(ILcom/tencent/qimei/r/f$a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tencent/qimei/r/f$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p1, p0, Lcom/tencent/qimei/r/f$a;->a:I

    iput-object p2, p0, Lcom/tencent/qimei/r/f$a;->b:Lcom/tencent/qimei/r/f$a$a;

    return-void
.end method
