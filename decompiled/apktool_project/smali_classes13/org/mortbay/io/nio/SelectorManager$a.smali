.class public Lorg/mortbay/io/nio/SelectorManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/nio/channels/SelectableChannel;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$a;->a:Ljava/nio/channels/SelectableChannel;

    iput-object p2, p0, Lorg/mortbay/io/nio/SelectorManager$a;->b:Ljava/lang/Object;

    return-void
.end method
