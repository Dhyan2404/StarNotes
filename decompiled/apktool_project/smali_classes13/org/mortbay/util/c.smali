.class public Lorg/mortbay/util/c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lorg/mortbay/util/Scanner;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/Scanner;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/util/c;->e:Lorg/mortbay/util/Scanner;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/c;->e:Lorg/mortbay/util/Scanner;

    invoke-virtual {p0}, Lorg/mortbay/util/Scanner;->scan()V

    return-void
.end method
