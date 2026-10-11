.class public Lnet/sf/saxon/tree/util/SteppingNavigator$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/util/SteppingNavigator$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/util/SteppingNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/tree/util/SteppingNode;

.field public b:Lnet/sf/saxon/pattern/NodeTest;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$b;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$b;->b:Lnet/sf/saxon/pattern/NodeTest;

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 1

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$b;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    invoke-static {p1, v0}, Lnet/sf/saxon/tree/util/SteppingNavigator;->a(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$b;->b:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-object p1
.end method
