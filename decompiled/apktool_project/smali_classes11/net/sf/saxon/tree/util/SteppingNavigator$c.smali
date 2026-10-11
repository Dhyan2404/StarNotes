.class public Lnet/sf/saxon/tree/util/SteppingNavigator$c;
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
    name = "c"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/tree/util/SteppingNode;

.field public b:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/util/SteppingNode;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$c;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    iput p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$c;->b:I

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 2

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$c;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    invoke-static {p1, v0}, Lnet/sf/saxon/tree/util/SteppingNavigator;->a(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v0

    iget v1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$c;->b:I

    if-ne v0, v1, :cond_0

    :cond_1
    return-object p1
.end method
