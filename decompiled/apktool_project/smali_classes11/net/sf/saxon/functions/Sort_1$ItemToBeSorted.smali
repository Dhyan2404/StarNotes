.class public Lnet/sf/saxon/functions/Sort_1$ItemToBeSorted;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/Sort_1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemToBeSorted"
.end annotation


# instance fields
.field public originalPosition:I

.field public sortKey:Lnet/sf/saxon/om/GroundedValue;

.field public value:Lnet/sf/saxon/om/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
