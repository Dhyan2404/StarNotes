.class public Lorg/mortbay/util/RolloverFileOutputStream$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/RolloverFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lorg/mortbay/util/RolloverFileOutputStream;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/RolloverFileOutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/util/RolloverFileOutputStream$a;->e:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/util/RolloverFileOutputStream;Lorg/mortbay/util/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mortbay/util/RolloverFileOutputStream$a;-><init>(Lorg/mortbay/util/RolloverFileOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/util/RolloverFileOutputStream$a;->e:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-static {v0}, Lorg/mortbay/util/RolloverFileOutputStream;->f(Lorg/mortbay/util/RolloverFileOutputStream;)V

    iget-object p0, p0, Lorg/mortbay/util/RolloverFileOutputStream$a;->e:Lorg/mortbay/util/RolloverFileOutputStream;

    invoke-static {p0}, Lorg/mortbay/util/RolloverFileOutputStream;->j(Lorg/mortbay/util/RolloverFileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
