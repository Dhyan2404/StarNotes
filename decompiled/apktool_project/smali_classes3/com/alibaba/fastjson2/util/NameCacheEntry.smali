.class public final Lcom/alibaba/fastjson2/util/NameCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    return-void
.end method
