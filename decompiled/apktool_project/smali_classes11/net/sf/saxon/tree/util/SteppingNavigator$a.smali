.class public Lnet/sf/saxon/tree/util/SteppingNavigator$a;
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
    name = "a"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/tree/util/SteppingNode;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$a;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    iput-object p2, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$a;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    iget-object v1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lnet/sf/saxon/tree/util/SteppingNode;->getSuccessorElement(Lnet/sf/saxon/tree/util/SteppingNode;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p0

    return-object p0
.end method
