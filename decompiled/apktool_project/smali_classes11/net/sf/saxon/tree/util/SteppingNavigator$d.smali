.class public Lnet/sf/saxon/tree/util/SteppingNavigator$d;
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
    name = "d"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/tree/util/SteppingNode;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/util/SteppingNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$d;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    return-void
.end method


# virtual methods
.method public a(Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/util/SteppingNavigator$d;->a:Lnet/sf/saxon/tree/util/SteppingNode;

    invoke-static {p1, p0}, Lnet/sf/saxon/tree/util/SteppingNavigator;->a(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p0

    return-object p0
.end method
