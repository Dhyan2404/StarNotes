.class public Lnet/sf/saxon/tree/iter/EmptyIterator$b;
.super Lnet/sf/saxon/tree/iter/EmptyIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/iter/EmptyIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final f:Lnet/sf/saxon/tree/iter/EmptyIterator$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/iter/EmptyIterator$b;

    invoke-direct {v0}, Lnet/sf/saxon/tree/iter/EmptyIterator$b;-><init>()V

    sput-object v0, Lnet/sf/saxon/tree/iter/EmptyIterator$b;->f:Lnet/sf/saxon/tree/iter/EmptyIterator$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/tree/iter/EmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getReverseIterator()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/tree/iter/EmptyIterator;->getReverseIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/EmptyIterator$b;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method
