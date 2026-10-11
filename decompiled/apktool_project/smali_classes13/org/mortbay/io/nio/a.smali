.class public Lorg/mortbay/io/nio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/mortbay/io/nio/SelectChannelEndPoint;

.field public final synthetic f:Lorg/mortbay/io/nio/SelectorManager$SelectSet;


# direct methods
.method public constructor <init>(Lorg/mortbay/io/nio/SelectorManager$SelectSet;Lorg/mortbay/io/nio/SelectChannelEndPoint;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/io/nio/a;->f:Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    iput-object p2, p0, Lorg/mortbay/io/nio/a;->e:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/io/nio/a;->e:Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
