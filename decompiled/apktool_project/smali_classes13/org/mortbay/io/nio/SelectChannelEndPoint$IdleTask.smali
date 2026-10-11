.class public Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;
.super Lorg/mortbay/thread/Timeout$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/nio/SelectChannelEndPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleTask"
.end annotation


# instance fields
.field public final synthetic k:Lorg/mortbay/io/nio/SelectChannelEndPoint;


# direct methods
.method public constructor <init>(Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-direct {p0}, Lorg/mortbay/thread/Timeout$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public expired()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->idleExpired()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TimeoutTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint$IdleTask;->k:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
