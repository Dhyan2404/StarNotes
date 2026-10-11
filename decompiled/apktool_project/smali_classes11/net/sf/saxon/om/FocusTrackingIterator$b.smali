.class public Lnet/sf/saxon/om/FocusTrackingIterator$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/om/FocusTrackingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/pattern/NodeTest;

.field public b:Lnet/sf/saxon/om/NodeInfo;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->a:Lnet/sf/saxon/pattern/NodeTest;

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->b:Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lnet/sf/saxon/om/FocusTrackingIterator$b;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/om/FocusTrackingIterator$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lnet/sf/saxon/om/FocusTrackingIterator$b;-><init>()V

    return-void
.end method
