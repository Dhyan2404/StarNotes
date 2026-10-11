.class public Lorg/scribe/oauth/OAuth10aServiceImpl$b;
.super Lorg/scribe/model/RequestTuner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/oauth/OAuth10aServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/model/RequestTuner;-><init>()V

    iput p1, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$b;->a:I

    iput-object p2, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$b;->b:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public tune(Lorg/scribe/model/Request;)V
    .locals 1

    iget v0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$b;->a:I

    iget-object p0, p0, Lorg/scribe/oauth/OAuth10aServiceImpl$b;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, p0}, Lorg/scribe/model/Request;->setReadTimeout(ILjava/util/concurrent/TimeUnit;)V

    return-void
.end method
