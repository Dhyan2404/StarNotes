.class public final Lcom/blankj/utilcode/util/CacheMemoryUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/CacheMemoryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;->a:J

    iput-object p3, p0, Lcom/blankj/utilcode/util/CacheMemoryUtils$a;->b:Ljava/lang/Object;

    return-void
.end method
