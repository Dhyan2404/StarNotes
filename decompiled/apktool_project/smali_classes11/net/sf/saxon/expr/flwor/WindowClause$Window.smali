.class public Lnet/sf/saxon/expr/flwor/WindowClause$Window;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/flwor/WindowClause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Window"
.end annotation


# instance fields
.field public contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field

.field public despatched:Z

.field public endItem:Lnet/sf/saxon/om/Item;

.field public endNextItem:Lnet/sf/saxon/om/Item;

.field public endPosition:I

.field public endPreviousItem:Lnet/sf/saxon/om/Item;

.field public startItem:Lnet/sf/saxon/om/Item;

.field public startNextItem:Lnet/sf/saxon/om/Item;

.field public startPosition:I

.field public startPreviousItem:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    iput-boolean v0, p0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->despatched:Z

    return-void
.end method


# virtual methods
.method public isDespatched()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->despatched:Z

    return p0
.end method

.method public isFinished()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/flwor/WindowClause$Window;->endPosition:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
