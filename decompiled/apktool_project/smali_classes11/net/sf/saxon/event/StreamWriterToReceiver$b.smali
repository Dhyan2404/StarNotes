.class public Lnet/sf/saxon/event/StreamWriterToReceiver$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/StreamWriterToReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/StreamWriterToReceiver$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/event/StreamWriterToReceiver$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/StreamWriterToReceiver$d;-><init>(Lnet/sf/saxon/event/StreamWriterToReceiver$a;)V

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->a:Lnet/sf/saxon/event/StreamWriterToReceiver$d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/StreamWriterToReceiver$b;->c:Ljava/util/List;

    return-void
.end method
