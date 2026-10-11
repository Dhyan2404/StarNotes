.class public Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field public volatile c:I


# direct methods
.method public constructor <init>(JLcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$a;->a:J

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$a;->b:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method
